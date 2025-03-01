import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:tap_invest/core/network/api_service.dart';
import 'package:tap_invest/data/model/organization_details_model.dart';
import 'package:tap_invest/presentation/organization_details/domain/organization_repository.dart';

@LazySingleton(as: OrganizationRepository)
class OrganizationRepositoryImpl implements OrganizationRepository {
  final ApiService apiService;

  OrganizationRepositoryImpl(this.apiService);

  @override
  Future<List<OrganisationModel>> getOrganizationDetails() async {
    try {
      log("getResults called");
      final results = await apiService.fetchResults();

      log("Fetched results: $results");

      if (results is! List) {
        log("Error: Expected a List but got ${results.runtimeType}");
        return [];
      }

      final parsedResults =
          results.map((e) => OrganisationModel.fromJson(e)).toList();
      log("Parsed results: $parsedResults");

      return parsedResults;
    } catch (e, stacktrace) {
      log("getResults error: $e \nStacktrace: $stacktrace");
      return [];
    }
  }
}
