import 'package:flutter_assignment/core/network/http_client.dart';
import 'package:flutter_assignment/data/model/categories/categories_response.dart';
import 'package:flutter_assignment/data/model/news/api_response.dart';
import 'package:flutter_assignment/data/model/news/news_post.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

abstract interface class RemoteDatasource{
  Future<List<NewsPost>> fetchNews(String lang);
  Future<List<String>> fetchCategories();
}

@LazySingleton(as: RemoteDatasource)
class RemoteDatasourceImpl implements RemoteDatasource{

  final HttpClient _client;

  RemoteDatasourceImpl(this._client);

  @override
  Future<List<NewsPost>> fetchNews(String lang) async {
    String? fetchData = await _client.fetchNews(lang);
    if(fetchData != null){
      return ApiResponse.fromJson(jsonDecode(fetchData)).news;
    }
    return [];
  }

  @override
  Future<List<String>> fetchCategories() async {
    String? fetchedData = await _client.fetchAvailableCategories();
    if(fetchedData != null){
      return CategoriesResponse.fromJson(jsonDecode(fetchedData)).categories;
    } else {
      return [];
    }
  }



}