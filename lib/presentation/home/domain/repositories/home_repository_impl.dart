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
    print("result reached");
    final results = await apiService.fetchResults();
    print("result $results");
    return results.map((e) => ResultModel.fromJson(e)).toList();
  }
}
