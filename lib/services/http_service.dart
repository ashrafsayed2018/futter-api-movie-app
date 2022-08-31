// packages
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app_with_api/models/app_config.dart';

class HTTPService {
  // instantiate dio package
  final Dio dio = Dio();
  // instiate get it package
  final getIt = GetIt.instance;

  String? baseUrl;
  String? apiKey;
  HTTPService() {
    AppConfig appConfig = getIt.get<AppConfig>();
    baseUrl = appConfig.baseApiKey;
    apiKey = appConfig.apiKey;
  }

  Future<Response> get(String path, {Map<String, dynamic>? query}) async {
    String url = "$baseUrl$path";
    Map<String, dynamic> myQuery = {
      "api_key": apiKey,
      "language": "en-US",
    };
    if (query != null) {
      query.addAll(myQuery);
    }
    return await dio.get(url, queryParameters: myQuery);
  }
}
