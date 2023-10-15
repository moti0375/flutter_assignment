import 'package:flutter_assignment/data/datasource/remote_datasource.dart';
import 'package:flutter_assignment/data/model/news/news_post.dart';
import 'package:flutter_assignment/presentation/model/news_ui_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class Repository {

  final RemoteDatasource _remoteDatasource;

  Repository(this._remoteDatasource);

  Future<NewsUiModel> fetchNews(String? lang) async {
    print("[Repository] - fetchNews..");

    List<NewsPost> news = await _remoteDatasource.fetchNews(lang ?? "en");
    List<String> categories = await _remoteDatasource.fetchCategories();
    return NewsUiModel(news: news, categories: categories);
  }
}