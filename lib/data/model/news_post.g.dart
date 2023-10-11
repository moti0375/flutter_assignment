// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsPostImpl _$$NewsPostImplFromJson(Map<String, dynamic> json) =>
    _$NewsPostImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      author: json['author'] as String,
      image: json['image'] as String,
      language: json['language'] as String,
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
      published: json['published'] as String,
    );

Map<String, dynamic> _$$NewsPostImplToJson(_$NewsPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'author': instance.author,
      'image': instance.image,
      'language': instance.language,
      'category': instance.category,
      'published': instance.published,
    };
