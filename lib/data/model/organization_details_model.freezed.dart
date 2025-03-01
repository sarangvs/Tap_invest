// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrganisationModel {
  @JsonKey(name: 'logo')
  String get logo;
  @JsonKey(name: 'company_name')
  String get companyName;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'isin')
  String get isin;
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'pros_and_cons')
  ProsAndCons get prosAndCons;
  @JsonKey(name: 'financials')
  Financials get financials;
  @JsonKey(name: 'issuer_details')
  IssuerDetails get issuerDetails;

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrganisationModelCopyWith<OrganisationModel> get copyWith =>
      _$OrganisationModelCopyWithImpl<OrganisationModel>(
          this as OrganisationModel, _$identity);

  /// Serializes this OrganisationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrganisationModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prosAndCons, prosAndCons) ||
                other.prosAndCons == prosAndCons) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.issuerDetails, issuerDetails) ||
                other.issuerDetails == issuerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, companyName, description,
      isin, status, prosAndCons, financials, issuerDetails);

  @override
  String toString() {
    return 'OrganisationModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
  }
}

/// @nodoc
abstract mixin class $OrganisationModelCopyWith<$Res> {
  factory $OrganisationModelCopyWith(
          OrganisationModel value, $Res Function(OrganisationModel) _then) =
      _$OrganisationModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'company_name') String companyName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'isin') String isin,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'pros_and_cons') ProsAndCons prosAndCons,
      @JsonKey(name: 'financials') Financials financials,
      @JsonKey(name: 'issuer_details') IssuerDetails issuerDetails});

  $ProsAndConsCopyWith<$Res> get prosAndCons;
  $FinancialsCopyWith<$Res> get financials;
  $IssuerDetailsCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class _$OrganisationModelCopyWithImpl<$Res>
    implements $OrganisationModelCopyWith<$Res> {
  _$OrganisationModelCopyWithImpl(this._self, this._then);

  final OrganisationModel _self;
  final $Res Function(OrganisationModel) _then;

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(_self.copyWith(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prosAndCons: null == prosAndCons
          ? _self.prosAndCons
          : prosAndCons // ignore: cast_nullable_to_non_nullable
              as ProsAndCons,
      financials: null == financials
          ? _self.financials
          : financials // ignore: cast_nullable_to_non_nullable
              as Financials,
      issuerDetails: null == issuerDetails
          ? _self.issuerDetails
          : issuerDetails // ignore: cast_nullable_to_non_nullable
              as IssuerDetails,
    ));
  }

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProsAndConsCopyWith<$Res> get prosAndCons {
    return $ProsAndConsCopyWith<$Res>(_self.prosAndCons, (value) {
      return _then(_self.copyWith(prosAndCons: value));
    });
  }

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialsCopyWith<$Res> get financials {
    return $FinancialsCopyWith<$Res>(_self.financials, (value) {
      return _then(_self.copyWith(financials: value));
    });
  }

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssuerDetailsCopyWith<$Res> get issuerDetails {
    return $IssuerDetailsCopyWith<$Res>(_self.issuerDetails, (value) {
      return _then(_self.copyWith(issuerDetails: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OrganisationModel implements OrganisationModel {
  _OrganisationModel(
      {@JsonKey(name: 'logo') required this.logo,
      @JsonKey(name: 'company_name') required this.companyName,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'isin') required this.isin,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'pros_and_cons') required this.prosAndCons,
      @JsonKey(name: 'financials') required this.financials,
      @JsonKey(name: 'issuer_details') required this.issuerDetails});
  factory _OrganisationModel.fromJson(Map<String, dynamic> json) =>
      _$OrganisationModelFromJson(json);

  @override
  @JsonKey(name: 'logo')
  final String logo;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'isin')
  final String isin;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'pros_and_cons')
  final ProsAndCons prosAndCons;
  @override
  @JsonKey(name: 'financials')
  final Financials financials;
  @override
  @JsonKey(name: 'issuer_details')
  final IssuerDetails issuerDetails;

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrganisationModelCopyWith<_OrganisationModel> get copyWith =>
      __$OrganisationModelCopyWithImpl<_OrganisationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrganisationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrganisationModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prosAndCons, prosAndCons) ||
                other.prosAndCons == prosAndCons) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.issuerDetails, issuerDetails) ||
                other.issuerDetails == issuerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, companyName, description,
      isin, status, prosAndCons, financials, issuerDetails);

  @override
  String toString() {
    return 'OrganisationModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
  }
}

/// @nodoc
abstract mixin class _$OrganisationModelCopyWith<$Res>
    implements $OrganisationModelCopyWith<$Res> {
  factory _$OrganisationModelCopyWith(
          _OrganisationModel value, $Res Function(_OrganisationModel) _then) =
      __$OrganisationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'company_name') String companyName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'isin') String isin,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'pros_and_cons') ProsAndCons prosAndCons,
      @JsonKey(name: 'financials') Financials financials,
      @JsonKey(name: 'issuer_details') IssuerDetails issuerDetails});

  @override
  $ProsAndConsCopyWith<$Res> get prosAndCons;
  @override
  $FinancialsCopyWith<$Res> get financials;
  @override
  $IssuerDetailsCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class __$OrganisationModelCopyWithImpl<$Res>
    implements _$OrganisationModelCopyWith<$Res> {
  __$OrganisationModelCopyWithImpl(this._self, this._then);

  final _OrganisationModel _self;
  final $Res Function(_OrganisationModel) _then;

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(_OrganisationModel(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prosAndCons: null == prosAndCons
          ? _self.prosAndCons
          : prosAndCons // ignore: cast_nullable_to_non_nullable
              as ProsAndCons,
      financials: null == financials
          ? _self.financials
          : financials // ignore: cast_nullable_to_non_nullable
              as Financials,
      issuerDetails: null == issuerDetails
          ? _self.issuerDetails
          : issuerDetails // ignore: cast_nullable_to_non_nullable
              as IssuerDetails,
    ));
  }

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProsAndConsCopyWith<$Res> get prosAndCons {
    return $ProsAndConsCopyWith<$Res>(_self.prosAndCons, (value) {
      return _then(_self.copyWith(prosAndCons: value));
    });
  }

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialsCopyWith<$Res> get financials {
    return $FinancialsCopyWith<$Res>(_self.financials, (value) {
      return _then(_self.copyWith(financials: value));
    });
  }

  /// Create a copy of OrganisationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssuerDetailsCopyWith<$Res> get issuerDetails {
    return $IssuerDetailsCopyWith<$Res>(_self.issuerDetails, (value) {
      return _then(_self.copyWith(issuerDetails: value));
    });
  }
}

/// @nodoc
mixin _$ProsAndCons {
  @JsonKey(name: 'pros')
  List<String> get pros;
  @JsonKey(name: 'cons')
  List<String> get cons;

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProsAndConsCopyWith<ProsAndCons> get copyWith =>
      _$ProsAndConsCopyWithImpl<ProsAndCons>(this as ProsAndCons, _$identity);

  /// Serializes this ProsAndCons to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProsAndCons &&
            const DeepCollectionEquality().equals(other.pros, pros) &&
            const DeepCollectionEquality().equals(other.cons, cons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pros),
      const DeepCollectionEquality().hash(cons));

  @override
  String toString() {
    return 'ProsAndCons(pros: $pros, cons: $cons)';
  }
}

/// @nodoc
abstract mixin class $ProsAndConsCopyWith<$Res> {
  factory $ProsAndConsCopyWith(
          ProsAndCons value, $Res Function(ProsAndCons) _then) =
      _$ProsAndConsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'pros') List<String> pros,
      @JsonKey(name: 'cons') List<String> cons});
}

/// @nodoc
class _$ProsAndConsCopyWithImpl<$Res> implements $ProsAndConsCopyWith<$Res> {
  _$ProsAndConsCopyWithImpl(this._self, this._then);

  final ProsAndCons _self;
  final $Res Function(ProsAndCons) _then;

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pros = null,
    Object? cons = null,
  }) {
    return _then(_self.copyWith(
      pros: null == pros
          ? _self.pros
          : pros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cons: null == cons
          ? _self.cons
          : cons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProsAndCons implements ProsAndCons {
  _ProsAndCons(
      {@JsonKey(name: 'pros') required final List<String> pros,
      @JsonKey(name: 'cons') required final List<String> cons})
      : _pros = pros,
        _cons = cons;
  factory _ProsAndCons.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsFromJson(json);

  final List<String> _pros;
  @override
  @JsonKey(name: 'pros')
  List<String> get pros {
    if (_pros is EqualUnmodifiableListView) return _pros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pros);
  }

  final List<String> _cons;
  @override
  @JsonKey(name: 'cons')
  List<String> get cons {
    if (_cons is EqualUnmodifiableListView) return _cons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cons);
  }

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProsAndConsCopyWith<_ProsAndCons> get copyWith =>
      __$ProsAndConsCopyWithImpl<_ProsAndCons>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProsAndConsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProsAndCons &&
            const DeepCollectionEquality().equals(other._pros, _pros) &&
            const DeepCollectionEquality().equals(other._cons, _cons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pros),
      const DeepCollectionEquality().hash(_cons));

  @override
  String toString() {
    return 'ProsAndCons(pros: $pros, cons: $cons)';
  }
}

/// @nodoc
abstract mixin class _$ProsAndConsCopyWith<$Res>
    implements $ProsAndConsCopyWith<$Res> {
  factory _$ProsAndConsCopyWith(
          _ProsAndCons value, $Res Function(_ProsAndCons) _then) =
      __$ProsAndConsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pros') List<String> pros,
      @JsonKey(name: 'cons') List<String> cons});
}

/// @nodoc
class __$ProsAndConsCopyWithImpl<$Res> implements _$ProsAndConsCopyWith<$Res> {
  __$ProsAndConsCopyWithImpl(this._self, this._then);

  final _ProsAndCons _self;
  final $Res Function(_ProsAndCons) _then;

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pros = null,
    Object? cons = null,
  }) {
    return _then(_ProsAndCons(
      pros: null == pros
          ? _self._pros
          : pros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cons: null == cons
          ? _self._cons
          : cons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$Financials {
  @JsonKey(name: 'ebitda')
  List<MonthlyValue> get ebitda;
  @JsonKey(name: 'revenue')
  List<MonthlyValue> get revenue;

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinancialsCopyWith<Financials> get copyWith =>
      _$FinancialsCopyWithImpl<Financials>(this as Financials, _$identity);

  /// Serializes this Financials to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Financials &&
            const DeepCollectionEquality().equals(other.ebitda, ebitda) &&
            const DeepCollectionEquality().equals(other.revenue, revenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ebitda),
      const DeepCollectionEquality().hash(revenue));

  @override
  String toString() {
    return 'Financials(ebitda: $ebitda, revenue: $revenue)';
  }
}

/// @nodoc
abstract mixin class $FinancialsCopyWith<$Res> {
  factory $FinancialsCopyWith(
          Financials value, $Res Function(Financials) _then) =
      _$FinancialsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ebitda') List<MonthlyValue> ebitda,
      @JsonKey(name: 'revenue') List<MonthlyValue> revenue});
}

/// @nodoc
class _$FinancialsCopyWithImpl<$Res> implements $FinancialsCopyWith<$Res> {
  _$FinancialsCopyWithImpl(this._self, this._then);

  final Financials _self;
  final $Res Function(Financials) _then;

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ebitda = null,
    Object? revenue = null,
  }) {
    return _then(_self.copyWith(
      ebitda: null == ebitda
          ? _self.ebitda
          : ebitda // ignore: cast_nullable_to_non_nullable
              as List<MonthlyValue>,
      revenue: null == revenue
          ? _self.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as List<MonthlyValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Financials implements Financials {
  _Financials(
      {@JsonKey(name: 'ebitda') required final List<MonthlyValue> ebitda,
      @JsonKey(name: 'revenue') required final List<MonthlyValue> revenue})
      : _ebitda = ebitda,
        _revenue = revenue;
  factory _Financials.fromJson(Map<String, dynamic> json) =>
      _$FinancialsFromJson(json);

  final List<MonthlyValue> _ebitda;
  @override
  @JsonKey(name: 'ebitda')
  List<MonthlyValue> get ebitda {
    if (_ebitda is EqualUnmodifiableListView) return _ebitda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ebitda);
  }

  final List<MonthlyValue> _revenue;
  @override
  @JsonKey(name: 'revenue')
  List<MonthlyValue> get revenue {
    if (_revenue is EqualUnmodifiableListView) return _revenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_revenue);
  }

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinancialsCopyWith<_Financials> get copyWith =>
      __$FinancialsCopyWithImpl<_Financials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FinancialsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Financials &&
            const DeepCollectionEquality().equals(other._ebitda, _ebitda) &&
            const DeepCollectionEquality().equals(other._revenue, _revenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ebitda),
      const DeepCollectionEquality().hash(_revenue));

  @override
  String toString() {
    return 'Financials(ebitda: $ebitda, revenue: $revenue)';
  }
}

/// @nodoc
abstract mixin class _$FinancialsCopyWith<$Res>
    implements $FinancialsCopyWith<$Res> {
  factory _$FinancialsCopyWith(
          _Financials value, $Res Function(_Financials) _then) =
      __$FinancialsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ebitda') List<MonthlyValue> ebitda,
      @JsonKey(name: 'revenue') List<MonthlyValue> revenue});
}

/// @nodoc
class __$FinancialsCopyWithImpl<$Res> implements _$FinancialsCopyWith<$Res> {
  __$FinancialsCopyWithImpl(this._self, this._then);

  final _Financials _self;
  final $Res Function(_Financials) _then;

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ebitda = null,
    Object? revenue = null,
  }) {
    return _then(_Financials(
      ebitda: null == ebitda
          ? _self._ebitda
          : ebitda // ignore: cast_nullable_to_non_nullable
              as List<MonthlyValue>,
      revenue: null == revenue
          ? _self._revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as List<MonthlyValue>,
    ));
  }
}

/// @nodoc
mixin _$MonthlyValue {
  @JsonKey(name: 'month')
  String get month;
  @JsonKey(name: 'value')
  int get value;

  /// Create a copy of MonthlyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonthlyValueCopyWith<MonthlyValue> get copyWith =>
      _$MonthlyValueCopyWithImpl<MonthlyValue>(
          this as MonthlyValue, _$identity);

  /// Serializes this MonthlyValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonthlyValue &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, value);

  @override
  String toString() {
    return 'MonthlyValue(month: $month, value: $value)';
  }
}

/// @nodoc
abstract mixin class $MonthlyValueCopyWith<$Res> {
  factory $MonthlyValueCopyWith(
          MonthlyValue value, $Res Function(MonthlyValue) _then) =
      _$MonthlyValueCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'month') String month,
      @JsonKey(name: 'value') int value});
}

/// @nodoc
class _$MonthlyValueCopyWithImpl<$Res> implements $MonthlyValueCopyWith<$Res> {
  _$MonthlyValueCopyWithImpl(this._self, this._then);

  final MonthlyValue _self;
  final $Res Function(MonthlyValue) _then;

  /// Create a copy of MonthlyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonthlyValue implements MonthlyValue {
  _MonthlyValue(
      {@JsonKey(name: 'month') required this.month,
      @JsonKey(name: 'value') required this.value});
  factory _MonthlyValue.fromJson(Map<String, dynamic> json) =>
      _$MonthlyValueFromJson(json);

  @override
  @JsonKey(name: 'month')
  final String month;
  @override
  @JsonKey(name: 'value')
  final int value;

  /// Create a copy of MonthlyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonthlyValueCopyWith<_MonthlyValue> get copyWith =>
      __$MonthlyValueCopyWithImpl<_MonthlyValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonthlyValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonthlyValue &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, value);

  @override
  String toString() {
    return 'MonthlyValue(month: $month, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$MonthlyValueCopyWith<$Res>
    implements $MonthlyValueCopyWith<$Res> {
  factory _$MonthlyValueCopyWith(
          _MonthlyValue value, $Res Function(_MonthlyValue) _then) =
      __$MonthlyValueCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'month') String month,
      @JsonKey(name: 'value') int value});
}

/// @nodoc
class __$MonthlyValueCopyWithImpl<$Res>
    implements _$MonthlyValueCopyWith<$Res> {
  __$MonthlyValueCopyWithImpl(this._self, this._then);

  final _MonthlyValue _self;
  final $Res Function(_MonthlyValue) _then;

  /// Create a copy of MonthlyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? month = null,
    Object? value = null,
  }) {
    return _then(_MonthlyValue(
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$IssuerDetails {
  @JsonKey(name: 'issuer_name')
  String get issuerName;
  @JsonKey(name: 'type_of_issuer')
  String get typeOfIssuer;
  @JsonKey(name: 'sector')
  String get sector;
  @JsonKey(name: 'industry')
  String get industry;
  @JsonKey(name: 'issuer_nature')
  String get issuerNature;
  @JsonKey(name: 'cin')
  String get cin;
  @JsonKey(name: 'lead_manager')
  String get leadManager;
  @JsonKey(name: 'registrar')
  String get registrar;
  @JsonKey(name: 'debenture_trustee')
  String get debentureTrustee;

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IssuerDetailsCopyWith<IssuerDetails> get copyWith =>
      _$IssuerDetailsCopyWithImpl<IssuerDetails>(
          this as IssuerDetails, _$identity);

  /// Serializes this IssuerDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IssuerDetails &&
            (identical(other.issuerName, issuerName) ||
                other.issuerName == issuerName) &&
            (identical(other.typeOfIssuer, typeOfIssuer) ||
                other.typeOfIssuer == typeOfIssuer) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.issuerNature, issuerNature) ||
                other.issuerNature == issuerNature) &&
            (identical(other.cin, cin) || other.cin == cin) &&
            (identical(other.leadManager, leadManager) ||
                other.leadManager == leadManager) &&
            (identical(other.registrar, registrar) ||
                other.registrar == registrar) &&
            (identical(other.debentureTrustee, debentureTrustee) ||
                other.debentureTrustee == debentureTrustee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, issuerName, typeOfIssuer, sector,
      industry, issuerNature, cin, leadManager, registrar, debentureTrustee);

  @override
  String toString() {
    return 'IssuerDetails(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
  }
}

/// @nodoc
abstract mixin class $IssuerDetailsCopyWith<$Res> {
  factory $IssuerDetailsCopyWith(
          IssuerDetails value, $Res Function(IssuerDetails) _then) =
      _$IssuerDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'issuer_name') String issuerName,
      @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
      @JsonKey(name: 'sector') String sector,
      @JsonKey(name: 'industry') String industry,
      @JsonKey(name: 'issuer_nature') String issuerNature,
      @JsonKey(name: 'cin') String cin,
      @JsonKey(name: 'lead_manager') String leadManager,
      @JsonKey(name: 'registrar') String registrar,
      @JsonKey(name: 'debenture_trustee') String debentureTrustee});
}

/// @nodoc
class _$IssuerDetailsCopyWithImpl<$Res>
    implements $IssuerDetailsCopyWith<$Res> {
  _$IssuerDetailsCopyWithImpl(this._self, this._then);

  final IssuerDetails _self;
  final $Res Function(IssuerDetails) _then;

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(_self.copyWith(
      issuerName: null == issuerName
          ? _self.issuerName
          : issuerName // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfIssuer: null == typeOfIssuer
          ? _self.typeOfIssuer
          : typeOfIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _self.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      issuerNature: null == issuerNature
          ? _self.issuerNature
          : issuerNature // ignore: cast_nullable_to_non_nullable
              as String,
      cin: null == cin
          ? _self.cin
          : cin // ignore: cast_nullable_to_non_nullable
              as String,
      leadManager: null == leadManager
          ? _self.leadManager
          : leadManager // ignore: cast_nullable_to_non_nullable
              as String,
      registrar: null == registrar
          ? _self.registrar
          : registrar // ignore: cast_nullable_to_non_nullable
              as String,
      debentureTrustee: null == debentureTrustee
          ? _self.debentureTrustee
          : debentureTrustee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _IssuerDetails implements IssuerDetails {
  _IssuerDetails(
      {@JsonKey(name: 'issuer_name') required this.issuerName,
      @JsonKey(name: 'type_of_issuer') required this.typeOfIssuer,
      @JsonKey(name: 'sector') required this.sector,
      @JsonKey(name: 'industry') required this.industry,
      @JsonKey(name: 'issuer_nature') required this.issuerNature,
      @JsonKey(name: 'cin') required this.cin,
      @JsonKey(name: 'lead_manager') required this.leadManager,
      @JsonKey(name: 'registrar') required this.registrar,
      @JsonKey(name: 'debenture_trustee') required this.debentureTrustee});
  factory _IssuerDetails.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailsFromJson(json);

  @override
  @JsonKey(name: 'issuer_name')
  final String issuerName;
  @override
  @JsonKey(name: 'type_of_issuer')
  final String typeOfIssuer;
  @override
  @JsonKey(name: 'sector')
  final String sector;
  @override
  @JsonKey(name: 'industry')
  final String industry;
  @override
  @JsonKey(name: 'issuer_nature')
  final String issuerNature;
  @override
  @JsonKey(name: 'cin')
  final String cin;
  @override
  @JsonKey(name: 'lead_manager')
  final String leadManager;
  @override
  @JsonKey(name: 'registrar')
  final String registrar;
  @override
  @JsonKey(name: 'debenture_trustee')
  final String debentureTrustee;

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IssuerDetailsCopyWith<_IssuerDetails> get copyWith =>
      __$IssuerDetailsCopyWithImpl<_IssuerDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IssuerDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssuerDetails &&
            (identical(other.issuerName, issuerName) ||
                other.issuerName == issuerName) &&
            (identical(other.typeOfIssuer, typeOfIssuer) ||
                other.typeOfIssuer == typeOfIssuer) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.issuerNature, issuerNature) ||
                other.issuerNature == issuerNature) &&
            (identical(other.cin, cin) || other.cin == cin) &&
            (identical(other.leadManager, leadManager) ||
                other.leadManager == leadManager) &&
            (identical(other.registrar, registrar) ||
                other.registrar == registrar) &&
            (identical(other.debentureTrustee, debentureTrustee) ||
                other.debentureTrustee == debentureTrustee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, issuerName, typeOfIssuer, sector,
      industry, issuerNature, cin, leadManager, registrar, debentureTrustee);

  @override
  String toString() {
    return 'IssuerDetails(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
  }
}

/// @nodoc
abstract mixin class _$IssuerDetailsCopyWith<$Res>
    implements $IssuerDetailsCopyWith<$Res> {
  factory _$IssuerDetailsCopyWith(
          _IssuerDetails value, $Res Function(_IssuerDetails) _then) =
      __$IssuerDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'issuer_name') String issuerName,
      @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
      @JsonKey(name: 'sector') String sector,
      @JsonKey(name: 'industry') String industry,
      @JsonKey(name: 'issuer_nature') String issuerNature,
      @JsonKey(name: 'cin') String cin,
      @JsonKey(name: 'lead_manager') String leadManager,
      @JsonKey(name: 'registrar') String registrar,
      @JsonKey(name: 'debenture_trustee') String debentureTrustee});
}

/// @nodoc
class __$IssuerDetailsCopyWithImpl<$Res>
    implements _$IssuerDetailsCopyWith<$Res> {
  __$IssuerDetailsCopyWithImpl(this._self, this._then);

  final _IssuerDetails _self;
  final $Res Function(_IssuerDetails) _then;

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(_IssuerDetails(
      issuerName: null == issuerName
          ? _self.issuerName
          : issuerName // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfIssuer: null == typeOfIssuer
          ? _self.typeOfIssuer
          : typeOfIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _self.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      issuerNature: null == issuerNature
          ? _self.issuerNature
          : issuerNature // ignore: cast_nullable_to_non_nullable
              as String,
      cin: null == cin
          ? _self.cin
          : cin // ignore: cast_nullable_to_non_nullable
              as String,
      leadManager: null == leadManager
          ? _self.leadManager
          : leadManager // ignore: cast_nullable_to_non_nullable
              as String,
      registrar: null == registrar
          ? _self.registrar
          : registrar // ignore: cast_nullable_to_non_nullable
              as String,
      debentureTrustee: null == debentureTrustee
          ? _self.debentureTrustee
          : debentureTrustee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
