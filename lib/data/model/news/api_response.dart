import 'package:flutter_assignment/data/model/news/news_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.g.dart';
part 'api_response.freezed.dart';

@freezed
class ApiResponse with _$ApiResponse {
  factory ApiResponse({
    required String status,
    required List<NewsPost> news,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

}
