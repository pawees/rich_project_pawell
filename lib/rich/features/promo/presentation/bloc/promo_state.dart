part of 'promo_bloc.dart';

@immutable
abstract class PromoState {}

class PromoInitial extends PromoState {}

class PromoScreenState extends PromoInitial {
  final List<News> news;

  PromoScreenState(this.news);

  @override
  List<Object> get props => [news,];

}
