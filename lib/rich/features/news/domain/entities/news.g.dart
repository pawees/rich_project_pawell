// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      title: json['title'] as String,
      text: json['text'] as String,
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'imageUrl': instance.imageUrl,
      'id': instance.id,
    };
