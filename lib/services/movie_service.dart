import 'dart:io';

import 'package:get_it/get_it.dart';

class MovieService {
  final GetIt getIt = GetIt.instance;
  HttpServer? httpServer;
  MovieService() {
    httpServer = getIt.get<HttpServer>();
  }
}
