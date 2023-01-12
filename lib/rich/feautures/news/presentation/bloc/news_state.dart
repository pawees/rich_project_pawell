part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsScreenState extends NewsInitial {
  final String nextScreen;

  NewsScreenState(this.nextScreen);
  @override
  List<Object> get props => [nextScreen];

}
