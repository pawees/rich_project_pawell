import 'package:json_annotation/json_annotation.dart';
part 'news.g.dart';

/// flutter pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class News {
  final String title, text, imageUrl;
  final int id;


  News({required this.title, required this.text, required this.id, required this.imageUrl});


  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}