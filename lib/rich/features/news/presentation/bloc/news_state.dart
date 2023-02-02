part of 'news_bloc.dart';


class NewsScreenState  {
  final NewsListContainer newsContainer;
  final News oneNew;

  NewsScreenState({
    required this.newsContainer,
    required this.oneNew
  });

   NewsScreenState.inital()
      : newsContainer = const NewsListContainer.initial(),
        oneNew = News(title: '', text: '', id: 0, imageUrl: '');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is NewsScreenState &&
              runtimeType == other.runtimeType &&
              newsContainer == other.newsContainer &&
              oneNew == other.oneNew;

  @override
  int get hashCode =>
      newsContainer.hashCode ^
      oneNew.hashCode;

  NewsScreenState copyWith({
    NewsListContainer? newsContainer,
    News? oneNew,
  }) {
    return NewsScreenState(
      newsContainer :
      newsContainer ?? this.newsContainer,
      oneNew: oneNew ?? this.oneNew
    );
  }

  @override
  List<Object> get props => [newsContainer,];

}
