import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:tap_invest/core/network/api_service.dart';
import 'package:tap_invest/data/model/result_model.dart';
import 'package:tap_invest/presentation/home/domain/repositories/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final ApiService apiService;

  HomeRepositoryImpl(this.apiService);

  @override
  Future<List<ResultModel>> getResults() async {
    try {
      log("getResults called");
      final results = await apiService.fetchResults();

      log("Fetched results: $results"); // Check what is actually returned

      if (results is! List) {
        log("Error: Expected a List but got ${results.runtimeType}");
        return [];
      }

      final parsedResults =
          results.map((e) => ResultModel.fromJson(e)).toList();
      log("Parsed results: $parsedResults");

      return parsedResults;
    } catch (e, stacktrace) {
      log("getResults error: $e \nStacktrace: $stacktrace");
      return [];
    }
  }
}
