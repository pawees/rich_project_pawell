part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsScreenState  {
  final NewsListContainer newsContainer;

  NewsScreenState({required this.newsContainer});

  const NewsScreenState.inital()
      : newsContainer = const NewsListContainer.initial();

  NewsScreenState copyWith({
    NewsListContainer? newsContainer,
  }) {
    return NewsScreenState(
      newsContainer :
      newsContainer ?? this.newsContainer,);
  }

  @override
  List<Object> get props => [newsContainer,];

}
