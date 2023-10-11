part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.fetchNews() = FetchNews;
  const factory NewsEvent.onLanguageSelected(String lang) = OnLanguageSelected;
}
