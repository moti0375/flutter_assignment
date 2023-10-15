import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_post.g.dart';
part 'news_post.freezed.dart';

@freezed
class NewsPost with _$NewsPost {
  factory NewsPost({
    required String id,
    required String title,
    required String description,
    required String url,
    required String author,
    required String image,
    required String language,
    required List<String> category,
    required String published,
  }) = _NewsPost;

  factory NewsPost.fromJson(Map<String, dynamic> json) => _$NewsPostFromJson(json);
}
