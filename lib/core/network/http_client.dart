
import 'package:flutter/services.dart';
import 'package:flutter_assignment/data/database/database.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class HttpClient {
  final Database _database;

  final String _baseUrl = "https://api.currentsapi.services/v1";

  HttpClient(this._database);

  Future<String?> fetchNews(String lang) async {
    String? apiKey = await _database.fetchApiKey();

    if (apiKey != null) {
      Map<String, String> queryParams = {
        'languange': lang,
        'apiKey': apiKey,
      };
      Uri uri = Uri.parse("$_baseUrl/latest-news").replace(queryParameters: queryParams);
      try {
        print("[HttpClient] - uri: ${uri.toString()}");
        var response = await http.get(uri);
        print("[HttpClient] - Something response status code: ${response.statusCode}");

        if (response.statusCode == 200) {
          return response.body;
        }

        if (response.statusCode == 401) {
          print("[HttpClient] - Not authorized:");
        }
        return null;
      } on PlatformException catch (e) {
        print("[HttpClient] - Something went wrong: $e");
        return null;
      }
    }
    return null;
  }

  Future<String?> fetchAvailableCategories() async {

    String? apiKey = await _database.fetchApiKey();

    if(apiKey != null){
      Map<String, String> queryParams = {
        'apiKey': apiKey,
      };
      Uri uri = Uri.parse("$_baseUrl/available/categories").replace(queryParameters: queryParams);
      try {
        print("[HttpClient] - uri: ${uri.toString()}");
        var response = await http.get(uri);
        print("[HttpClient] - Something response status code: ${response.statusCode}");

        if (response.statusCode == 200) {
          return response.body;
        }

        if (response.statusCode == 401) {
          print("[HttpClient] - Not authorized:");
        }
        return null;
      } on PlatformException catch (e) {
        print("[HttpClient] - Something went wrong: $e");
        return null;
      }
    } else {
      null;
    }
  }
}
