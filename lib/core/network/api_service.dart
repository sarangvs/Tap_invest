import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://eo"));

  Future fetchResults() async {
    try {
      final response = await _dio.get('l122duf9sy4de.m.pipedream.net');
      log("Response received: ${response.data}");

      final data = response.data["data"];
      log("jsonDataaa: $data");
      return data;
    } catch (e, stacktrace) {
      log("fetchResults error: $e \nStacktrace: $stacktrace");
      return []; // Return empty list to avoid crashes
    }
  }

  Future getOrganizationDetails() async {
    try {
      final response = await _dio.get('61q3zd4heiwke.m.pipedream.net');
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
