import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://eol122duf9sy4de"));

  Future fetchResults() async {
    try {
      final response = await _dio.get('.m.pipedream.net/');
      log("Response received: ${response.data}");

      final data = response.data["data"];
      log("jsonDataaa: $data");
      return data;
    } catch (e, stacktrace) {
      log("fetchResults error: $e \nStacktrace: $stacktrace");
      return []; // Return empty list to avoid crashes
    }
  }
}
