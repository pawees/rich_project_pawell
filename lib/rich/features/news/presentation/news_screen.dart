import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rich_project_pawell/rich/features/app_bar/presentation/app_bar.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';

import '../../shimmer_image/presentation/shimmer_image.dart';
import '../domain/entities/news.dart';

class NewsScreen extends StatelessWidget {
  final List<News> news;

  const NewsScreen(this.news, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //todo probably set this in controller
    final txtTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: SafeArea(child: Column(
        children: [
          appBar(news_title),
          _News(news),
        ],
      ),
    ));
  }
}

class _News extends StatelessWidget {
  const _News(this.news,{Key? key}) : super(key: key);

  final List<News> news;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(17),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: news.length,
      itemBuilder: (BuildContext ctx, int index) {
        return CardNews(index,news);
      },
    );
  }

}


class NewsDetails extends StatelessWidget {

  final News new_item;

  const NewsDetails(this.new_item,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          appBar(new_item.title),
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
  const CardNews(this.index,this.news,{Key? key}) : super(key: key);
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
