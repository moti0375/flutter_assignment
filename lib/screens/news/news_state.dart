part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initialState() = InitialState;
  const factory NewsState.loading() = Loading;
  const factory NewsState.ready(NewsUiModel uiModel) = Ready;
}
