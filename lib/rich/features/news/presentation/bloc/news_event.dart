part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}

class InitNews extends NewsEvent {}
class OpenNews extends NewsEvent {}


class DetailsNews extends NewsEvent {

  final int id;

  DetailsNews(this.id);
}
