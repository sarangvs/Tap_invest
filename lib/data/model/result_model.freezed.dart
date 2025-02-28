// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultModel {
  String get logo;
  String get isin;
  String get rating;
  String get company_name;
  List<String> get tags;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<ResultModel> get copyWith =>
      _$ResultModelCopyWithImpl<ResultModel>(this as ResultModel, _$identity);

  /// Serializes this ResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, isin, rating, company_name,
      const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'ResultModel(logo: $logo, isin: $isin, rating: $rating, company_name: $company_name, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) _then) =
      _$ResultModelCopyWithImpl;
  @useResult
  $Res call(
      {String logo,
      String isin,
      String rating,
      String company_name,
      List<String> tags});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res> implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._self, this._then);

  final ResultModel _self;
  final $Res Function(ResultModel) _then;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? isin = null,
    Object? rating = null,
    Object? company_name = null,
    Object? tags = null,
  }) {
    return _then(_self.copyWith(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      company_name: null == company_name
          ? _self.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ResultModel implements ResultModel {
  const _ResultModel(
      {required this.logo,
      required this.isin,
      required this.rating,
      required this.company_name,
      required final List<String> tags})
      : _tags = tags;
  factory _ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);

  @override
  final String logo;
  @override
  final String isin;
  @override
  final String rating;
  @override
  final String company_name;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultModelCopyWith<_ResultModel> get copyWith =>
      __$ResultModelCopyWithImpl<_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, isin, rating, company_name,
      const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'ResultModel(logo: $logo, isin: $isin, rating: $rating, company_name: $company_name, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$ResultModelCopyWith(
          _ResultModel value, $Res Function(_ResultModel) _then) =
      __$ResultModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String logo,
      String isin,
      String rating,
      String company_name,
      List<String> tags});
}

/// @nodoc
class __$ResultModelCopyWithImpl<$Res> implements _$ResultModelCopyWith<$Res> {
  __$ResultModelCopyWithImpl(this._self, this._then);

  final _ResultModel _self;
  final $Res Function(_ResultModel) _then;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? logo = null,
    Object? isin = null,
    Object? rating = null,
    Object? company_name = null,
    Object? tags = null,
  }) {
    return _then(_ResultModel(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      company_name: null == company_name
          ? _self.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
