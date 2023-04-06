import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rich_project_pawell/rich/features/app_bar/presentation/app_bar.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';
import 'package:rich_project_pawell/rich/features/news/presentation/bloc/news_bloc.dart';
import 'package:rich_project_pawell/rich/features/news/presentation/controller/news_screen_controller.dart';

import '../../shimmer_image/presentation/shimmer_image.dart';
import '../domain/entities/news.dart';

import 'package:get/get.dart';

class NewsScreen extends StatelessWidget {
  final List<News> news;

  NewsScreen(this.news,  {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //todo probably set this in controller
    final txtTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: _News(
        news,
      ),
    );
  }
}

class _News extends StatelessWidget {
  _News(this.news, {Key? key}) : super(key: key);

  final NewsScreenController newsScreenController =
      Get.put(NewsScreenController(), permanent: false);

  final List<News> news;


  @override
  Widget build(BuildContext context) {
    ScrollController controller = newsScreenController.initialController();

    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
          floating: true,
          title: appBar(news_title),
          flexibleSpace: appBar(news_title),
        ),
        SliverToBoxAdapter(
          child: ElevatedButton(
              onPressed: () => context.go('/news/theme'), child: Text('push')),
        ),
        SliverToBoxAdapter(
          child: IconButton(
            icon: const Icon(Icons.error_outline_sharp),
            tooltip: 'cause error',
            onPressed: () {
              BlocProvider.of<NewsBloc>(context).add(InitError());
            },
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => CardNews(index, news),
            childCount: news.length,
          ),
        ),
      ],
    );

  }
}

class NewsDetails extends StatelessWidget {
  final News new_item;

  const NewsDetails(
    this.new_item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          appBar(new_item.title),
          ElevatedButton(onPressed: () => context.pop(), child: Text('Back')),
          _image_builder(new_item),
          _text_builder(new_item),
        ],
      ),
    );
  }

  _image_builder(new_item) {
    return Column(
      children: [
        ShimmerImage(
          aspectRatio: 1.785,
          borderRadius: BorderRadius.circular(8),
          imageUrl: new_item.imageUrl,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  _text_builder(new_item) {
    return Column(
      children: [
        Text(
          '${new_item.text}',
          style: TextStyle(fontSize: 15),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class CardNews extends StatelessWidget {
  CardNews(this.index, this.news, {Key? key}) : super(key: key);
  final int index;
  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/news/details', extra: index);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text('$index'),
            ),
            ShimmerImage(
              aspectRatio: 1.785,
              borderRadius: BorderRadius.circular(8),
              imageUrl: news[index].imageUrl,
              fit: BoxFit.cover,
            ),
            CardContent(index, news),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent(this.index, this.news, {Key? key}) : super(key: key);
  final int index;
  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 30, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${news[index].title}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '${news[index].text}',
            style: TextStyle(fontSize: 15),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
