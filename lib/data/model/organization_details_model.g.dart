// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrganisationModel _$OrganisationModelFromJson(Map<String, dynamic> json) =>
    _OrganisationModel(
      logo: json['logo'] as String,
      companyName: json['company_name'] as String,
      description: json['description'] as String,
      isin: json['isin'] as String,
      status: json['status'] as String,
      prosAndCons:
          ProsAndCons.fromJson(json['pros_and_cons'] as Map<String, dynamic>),
      financials:
          Financials.fromJson(json['financials'] as Map<String, dynamic>),
      issuerDetails: IssuerDetails.fromJson(
          json['issuer_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganisationModelToJson(_OrganisationModel instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'company_name': instance.companyName,
      'description': instance.description,
      'isin': instance.isin,
      'status': instance.status,
      'pros_and_cons': instance.prosAndCons,
      'financials': instance.financials,
      'issuer_details': instance.issuerDetails,
    };

_ProsAndCons _$ProsAndConsFromJson(Map<String, dynamic> json) => _ProsAndCons(
      pros: (json['pros'] as List<dynamic>).map((e) => e as String).toList(),
      cons: (json['cons'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProsAndConsToJson(_ProsAndCons instance) =>
    <String, dynamic>{
      'pros': instance.pros,
      'cons': instance.cons,
    };

_Financials _$FinancialsFromJson(Map<String, dynamic> json) => _Financials(
      ebitda: (json['ebitda'] as List<dynamic>)
          .map((e) => MonthlyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      revenue: (json['revenue'] as List<dynamic>)
          .map((e) => MonthlyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FinancialsToJson(_Financials instance) =>
    <String, dynamic>{
      'ebitda': instance.ebitda,
      'revenue': instance.revenue,
    };

_MonthlyValue _$MonthlyValueFromJson(Map<String, dynamic> json) =>
    _MonthlyValue(
      month: json['month'] as String,
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$MonthlyValueToJson(_MonthlyValue instance) =>
    <String, dynamic>{
      'month': instance.month,
      'value': instance.value,
    };

_IssuerDetails _$IssuerDetailsFromJson(Map<String, dynamic> json) =>
    _IssuerDetails(
      issuerName: json['issuer_name'] as String,
      typeOfIssuer: json['type_of_issuer'] as String,
      sector: json['sector'] as String,
      industry: json['industry'] as String,
      issuerNature: json['issuer_nature'] as String,
      cin: json['cin'] as String,
      leadManager: json['lead_manager'] as String,
      registrar: json['registrar'] as String,
      debentureTrustee: json['debenture_trustee'] as String,
    );

Map<String, dynamic> _$IssuerDetailsToJson(_IssuerDetails instance) =>
    <String, dynamic>{
      'issuer_name': instance.issuerName,
      'type_of_issuer': instance.typeOfIssuer,
      'sector': instance.sector,
      'industry': instance.industry,
      'issuer_nature': instance.issuerNature,
      'cin': instance.cin,
      'lead_manager': instance.leadManager,
      'registrar': instance.registrar,
      'debenture_trustee': instance.debentureTrustee,
    };
