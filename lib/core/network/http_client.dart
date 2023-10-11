import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class HttpClient{
  final String _baseUrl = "https://api.currentsapi.services/v1/latest-news";
  Future<String?> fetchData(String lang, String apiKey) async {
    Map<String, String> queryParams = {
      'languange': lang,
      'apiKey': apiKey,
    };
    Uri uri = Uri.parse(_baseUrl).replace(queryParameters: queryParams);
    try{
      print("[HttpClient] - uri: ${uri.toString()}");
       var response = await http.get(uri);
       print("[HttpClient] - Something response status code: ${response.statusCode}");

       if(response.statusCode == 200){
         return response.body;
       }

       if(response.statusCode == 401){
         print("[HttpClient] - Not authorized:");
       }
       return null;
    } on PlatformException catch (e){
      print("[HttpClient] - Something went wrong: $e");
      return null;
    }
    
  }
}