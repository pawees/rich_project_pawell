import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/feautures/app_bar/presentation/app_bar.dart';
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
      child: Column(
        children: [
          appBar(news_title),
          _News(news),
        ],
      ),
    );
  }
}

class _News extends StatelessWidget {
  const _News(this.news, {Key? key}) : super(key: key);

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(17),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        return cardNews(index);
      },
    );
  }

  Widget cardNews(int index) {
    return GestureDetector(
      onTap: () {},
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
            ),
            cardContent(index),
          ],
        ),
      ),
    );
  }


  Widget cardContent(int index) {
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
