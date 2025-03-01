import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://eo"));

  Future fetchResults() async {
    try {
      final response = await _dio.get('l122duf9sy4de.m.pipedream.net');
      log("fetchResults received: ${response.data}");

      final data = response.data["data"];
      log("fetchResults: $data");
      return data;
    } catch (e, stacktrace) {
      log("fetchResults error: $e \nStacktrace: $stacktrace");
      return [];
    }
  }

  Future getOrganizationDetails() async {
    try {
      final response = await _dio.get('61q3zd4heiwke.m.pipedream.net');
      log("Response getOrganizationDetails: ${response.data}");

      final data = response.data;
      log("getOrganizationDetails: $data");
      return data;
    } catch (e, stacktrace) {
      log("getOrganizationDetails error: $e \nStacktrace: $stacktrace");
      return [];
    }
  }
}
