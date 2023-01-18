import 'package:flutter/material.dart';

import '../domain/entities/news.dart';

class NewsScreen extends StatelessWidget {
  final List<News> news;

  const NewsScreen(this.news, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //todo probably set this in controller
    final txtTheme = Theme.of(context).textTheme;

    return Container(
      child: Text(news[1].title),
      color: const Color.fromRGBO(232, 10, 23, 12),
    );
  }
}
