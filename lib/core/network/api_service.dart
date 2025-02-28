import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://eol122duf9sy4de"));

  Future fetchResults() async {
    final response = await _dio.get('.m.pipedream.net/');

    final jsonData = json.decode(response.data);
    print(jsonData);
    return jsonData;
  }
}
