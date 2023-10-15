import 'package:flutter_assignment/data/model/news/news_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_ui_model.freezed.dart';

@freezed
class NewsUiModel with _$NewsUiModel {
  const factory NewsUiModel({required List<NewsPost> news, required List<String> categories}) = _NewsUiModel;

}