import 'package:tap_invest/data/model/result_model.dart';

abstract class HomeRepository {
  Future<List<ResultModel>> getResults();
}
