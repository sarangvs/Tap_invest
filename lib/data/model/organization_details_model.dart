import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_details_model.freezed.dart';
part 'organization_details_model.g.dart';

@freezed
abstract class OrganisationModel with _$OrganisationModel {
  factory OrganisationModel({
    @JsonKey(name: 'logo') required String logo,
    @JsonKey(name: 'company_name') required String companyName,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'isin') required String isin,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'pros_and_cons') required ProsAndCons prosAndCons,
    @JsonKey(name: 'financials') required Financials financials,
    @JsonKey(name: 'issuer_details') required IssuerDetails issuerDetails,
  }) = _OrganisationModel;

  factory OrganisationModel.fromJson(Map<String, dynamic> json) =>
      _$OrganisationModelFromJson(json);
}

@freezed
abstract class ProsAndCons with _$ProsAndCons {
  factory ProsAndCons({
    @JsonKey(name: 'pros') required List<String> pros,
    @JsonKey(name: 'cons') required List<String> cons,
  }) = _ProsAndCons;

  factory ProsAndCons.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsFromJson(json);
}

@freezed
abstract class Financials with _$Financials {
  factory Financials({
    @JsonKey(name: 'ebitda') required List<MonthlyValue> ebitda,
    @JsonKey(name: 'revenue') required List<MonthlyValue> revenue,
  }) = _Financials;

  factory Financials.fromJson(Map<String, dynamic> json) =>
      _$FinancialsFromJson(json);
}

@freezed
abstract class MonthlyValue with _$MonthlyValue {
  factory MonthlyValue({
    @JsonKey(name: 'month') required String month,
    @JsonKey(name: 'value') required int value,
  }) = _MonthlyValue;

  factory MonthlyValue.fromJson(Map<String, dynamic> json) =>
      _$MonthlyValueFromJson(json);
}

@freezed
abstract class IssuerDetails with _$IssuerDetails {
  factory IssuerDetails({
    @JsonKey(name: 'issuer_name') required String issuerName,
    @JsonKey(name: 'type_of_issuer') required String typeOfIssuer,
    @JsonKey(name: 'sector') required String sector,
    @JsonKey(name: 'industry') required String industry,
    @JsonKey(name: 'issuer_nature') required String issuerNature,
    @JsonKey(name: 'cin') required String cin,
    @JsonKey(name: 'lead_manager') required String leadManager,
    @JsonKey(name: 'registrar') required String registrar,
    @JsonKey(name: 'debenture_trustee') required String debentureTrustee,
  }) = _IssuerDetails;

  factory IssuerDetails.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailsFromJson(json);
}
