import 'package:flutter_assignment/data/datasource/remote_datasource.dart';
import 'package:flutter_assignment/data/model/api_response.dart';
import 'package:flutter_assignment/data/model/news_post.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class Repository {

  final RemoteDatasource _remoteDatasource;

  Repository(this._remoteDatasource);

  Future<List<NewsPost>> fetchNews(String? lang) async {
    print("[Repository] - fetchNews..");
    List<NewsPost> apiResponse = await _remoteDatasource.fetchNews(lang ?? "en");
    return apiResponse;
  }
}