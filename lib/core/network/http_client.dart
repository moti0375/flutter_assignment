
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
    Map<String, String> queryParams = {
      'languange': lang,
    };
    return await _executeHttpGet(Uri.parse("$_baseUrl/latest-news"), queryParams);
  }

  Future<String?> fetchAvailableCategories() async {
    return await _executeHttpGet(Uri.parse("$_baseUrl/available/categories"), {});
  }


  Future<String?> _executeHttpGet(Uri uri, Map<String, String> queryParams) async {
    String? apiKey = await _database.fetchApiKey();
    if(apiKey != null){
      queryParams["apiKey"] = apiKey;
      try {
        var response = await http.get(uri.replace(queryParameters: queryParams));
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
    } return null;
  }
}
