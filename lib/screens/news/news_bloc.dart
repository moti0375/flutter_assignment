import 'package:flutter_assignment/data/model/news_post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_assignment/screens/news/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {

  final Repository _repository;

  NewsBloc(this._repository) : super(const NewsState.initialState()) {
    print("[NewsBloc] - constructor");
    on<NewsEvent>((event, emit) async {
      print("[NewsBloc] - onEvent: ${event}");
      await _mapEventToState(event, emit);
    });
  }

  Future<void> _mapEventToState(NewsEvent event, Emitter<NewsState> emitter) async {
    await event.map( fetchNews: (FetchNews value) =>  _fetchNews(emitter, null), onLanguageSelected: (OnLanguageSelected value) => _fetchNews(emitter, value.lang));
  }

  Future<void> _fetchNews(Emitter<NewsState> emitter, String? lang) async {
    emitter(const NewsState.loading());
    List<NewsPost> posts = await _repository.fetchNews(lang);
    List<String> categories = posts.map((e) => e.category).expand((element) => element).toSet().toList()..sort();
    emitter(NewsState.ready(posts, categories));
  }

}
