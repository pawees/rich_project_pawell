part of 'news_bloc.dart';


class NewsScreenState  {
  final GetAllRequestStatus status;
  final NewsListContainer newsContainer;
  final News oneNew;

  NewsScreenState({
    this.status = GetAllRequestStatus.loading,
    required this.newsContainer,
    required this.oneNew
  });

   NewsScreenState.inital()
      : status = GetAllRequestStatus.loading,
         newsContainer = const NewsListContainer.initial(),
        oneNew = News(title: '', text: '', id: 0, imageUrl: '');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is NewsScreenState &&
              runtimeType == other.runtimeType &&
              newsContainer == other.newsContainer &&
              oneNew == other.oneNew &&
              status == other.status;

  @override
  int get hashCode =>
      newsContainer.hashCode ^
      status.hashCode ^
      oneNew.hashCode;

  NewsScreenState copyWith({
    GetAllRequestStatus? status,
    NewsListContainer? newsContainer,
    News? oneNew,
  }) {
    return NewsScreenState(
      status: status ?? this.status,
      newsContainer :
      newsContainer ?? this.newsContainer,
      oneNew: oneNew ?? this.oneNew
    );
  }

  @override
  List<Object> get props => [newsContainer,status];

}
