import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/auth/auth.dart';
import 'package:flutter_assignment/core/network/http_client.dart';
import 'package:flutter_assignment/data/database/database.dart';
import 'package:flutter_assignment/data/model/api_response.dart';
import 'package:flutter_assignment/data/model/news_post.dart';
import 'package:flutter_assignment/domain/result/result.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

abstract interface class RemoteDatasource{
  Future<List<NewsPost>> fetchNews(String lang);
}

@LazySingleton(as: RemoteDatasource)
class RemoteDatasourceImpl implements RemoteDatasource{

  final Database _database;
  final HttpClient _client;

  RemoteDatasourceImpl(this._database, this._client);

  @override
  Future<List<NewsPost>> fetchNews(String lang) async {
    Result<String, Unit> apiKeyOption = await _database.fetchApiKey();
    final String? apiKey = apiKeyOption.whenOrNull(success: id);

    if(apiKey != null){
        String? fetchData = await _client.fetchData(lang, apiKey);
        print("[RemoteDatasource] - $fetchData");
        if(fetchData != null){
          return ApiResponse.fromJson(jsonDecode(fetchData)).news;
        }
        return [];
    } else {
      return [];
    }
  }

}