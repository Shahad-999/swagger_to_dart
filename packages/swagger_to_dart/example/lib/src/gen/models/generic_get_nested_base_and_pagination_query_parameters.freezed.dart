// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_get_nested_base_and_pagination_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenericGetNestedBaseAndPaginationQueryParameters {
  /// page
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey)
  int get page;

  /// perPage
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey)
  int get perPage;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
          GenericGetNestedBaseAndPaginationQueryParameters>
      get copyWith =>
          _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<
                  GenericGetNestedBaseAndPaginationQueryParameters>(
              this as GenericGetNestedBaseAndPaginationQueryParameters,
              _$identity);

  /// Serializes this GenericGetNestedBaseAndPaginationQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenericGetNestedBaseAndPaginationQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetNestedBaseAndPaginationQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
    $Res> {
  factory $GenericGetNestedBaseAndPaginationQueryParametersCopyWith(
          GenericGetNestedBaseAndPaginationQueryParameters value,
          $Res Function(GenericGetNestedBaseAndPaginationQueryParameters)
              _then) =
      _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey)
      int page,
      @JsonKey(
          name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey)
      int perPage});
}

/// @nodoc
class _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<$Res>
    implements $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<$Res> {
  _$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl(
      this._self, this._then);

  final GenericGetNestedBaseAndPaginationQueryParameters _self;
  final $Res Function(GenericGetNestedBaseAndPaginationQueryParameters) _then;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _GenericGetNestedBaseAndPaginationQueryParameters
    extends GenericGetNestedBaseAndPaginationQueryParameters {
  const _GenericGetNestedBaseAndPaginationQueryParameters(
      {@JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey)
      this.page = 1,
      @JsonKey(
          name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey)
      this.perPage = 10})
      : super._();
  factory _GenericGetNestedBaseAndPaginationQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$GenericGetNestedBaseAndPaginationQueryParametersFromJson(json);

  /// page
  @override
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey)
  final int page;

  /// perPage
  @override
  @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey)
  final int perPage;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
          _GenericGetNestedBaseAndPaginationQueryParameters>
      get copyWith =>
          __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<
                  _GenericGetNestedBaseAndPaginationQueryParameters>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenericGetNestedBaseAndPaginationQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericGetNestedBaseAndPaginationQueryParameters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @override
  String toString() {
    return 'GenericGetNestedBaseAndPaginationQueryParameters(page: $page, perPage: $perPage)';
  }
}

/// @nodoc
abstract mixin class _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith<
        $Res>
    implements $GenericGetNestedBaseAndPaginationQueryParametersCopyWith<$Res> {
  factory _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith(
          _GenericGetNestedBaseAndPaginationQueryParameters value,
          $Res Function(_GenericGetNestedBaseAndPaginationQueryParameters)
              _then) =
      __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey)
      int page,
      @JsonKey(
          name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey)
      int perPage});
}

/// @nodoc
class __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl<$Res>
    implements
        _$GenericGetNestedBaseAndPaginationQueryParametersCopyWith<$Res> {
  __$GenericGetNestedBaseAndPaginationQueryParametersCopyWithImpl(
      this._self, this._then);

  final _GenericGetNestedBaseAndPaginationQueryParameters _self;
  final $Res Function(_GenericGetNestedBaseAndPaginationQueryParameters) _then;

  /// Create a copy of GenericGetNestedBaseAndPaginationQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_GenericGetNestedBaseAndPaginationQueryParameters(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
