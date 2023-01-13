part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsScreenState extends NewsInitial {
  final List<News> news;

  NewsScreenState(this.news);

  @override
  List<Object> get props => [news,];

}
