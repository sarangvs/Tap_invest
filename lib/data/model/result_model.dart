import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
abstract class ResultModel with _$ResultModel {
  const factory ResultModel({
    required String logo,
    required String isin,
    required String rating,
    @JsonKey(name: 'company_name') required String companyName,
    required List<String> tags,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}
