// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertRecommendationResponse _$AlertRecommendationResponseFromJson(
    Map<String, dynamic> json) {
  return _AlertRecommendationResponse.fromJson(json);
}

/// @nodoc
mixin _$AlertRecommendationResponse {
  List<AlertRecommendationAlert> get alerts =>
      throw _privateConstructorUsedError;
  List<AlertRecommendationRecommendation> get recommendations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertRecommendationResponseCopyWith<AlertRecommendationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertRecommendationResponseCopyWith<$Res> {
  factory $AlertRecommendationResponseCopyWith(
          AlertRecommendationResponse value,
          $Res Function(AlertRecommendationResponse) then) =
      _$AlertRecommendationResponseCopyWithImpl<$Res,
          AlertRecommendationResponse>;
  @useResult
  $Res call(
      {List<AlertRecommendationAlert> alerts,
      List<AlertRecommendationRecommendation> recommendations});
}

/// @nodoc
class _$AlertRecommendationResponseCopyWithImpl<$Res,
        $Val extends AlertRecommendationResponse>
    implements $AlertRecommendationResponseCopyWith<$Res> {
  _$AlertRecommendationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
    Object? recommendations = null,
  }) {
    return _then(_value.copyWith(
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertRecommendationAlert>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<AlertRecommendationRecommendation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertRecommendationResponseImplCopyWith<$Res>
    implements $AlertRecommendationResponseCopyWith<$Res> {
  factory _$$AlertRecommendationResponseImplCopyWith(
          _$AlertRecommendationResponseImpl value,
          $Res Function(_$AlertRecommendationResponseImpl) then) =
      __$$AlertRecommendationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AlertRecommendationAlert> alerts,
      List<AlertRecommendationRecommendation> recommendations});
}

/// @nodoc
class __$$AlertRecommendationResponseImplCopyWithImpl<$Res>
    extends _$AlertRecommendationResponseCopyWithImpl<$Res,
        _$AlertRecommendationResponseImpl>
    implements _$$AlertRecommendationResponseImplCopyWith<$Res> {
  __$$AlertRecommendationResponseImplCopyWithImpl(
      _$AlertRecommendationResponseImpl _value,
      $Res Function(_$AlertRecommendationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
    Object? recommendations = null,
  }) {
    return _then(_$AlertRecommendationResponseImpl(
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertRecommendationAlert>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<AlertRecommendationRecommendation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertRecommendationResponseImpl
    implements _AlertRecommendationResponse {
  const _$AlertRecommendationResponseImpl(
      {required final List<AlertRecommendationAlert> alerts,
      required final List<AlertRecommendationRecommendation> recommendations})
      : _alerts = alerts,
        _recommendations = recommendations;

  factory _$AlertRecommendationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AlertRecommendationResponseImplFromJson(json);

  final List<AlertRecommendationAlert> _alerts;
  @override
  List<AlertRecommendationAlert> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  final List<AlertRecommendationRecommendation> _recommendations;
  @override
  List<AlertRecommendationRecommendation> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  @override
  String toString() {
    return 'AlertRecommendationResponse(alerts: $alerts, recommendations: $recommendations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertRecommendationResponseImpl &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_alerts),
      const DeepCollectionEquality().hash(_recommendations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertRecommendationResponseImplCopyWith<_$AlertRecommendationResponseImpl>
      get copyWith => __$$AlertRecommendationResponseImplCopyWithImpl<
          _$AlertRecommendationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertRecommendationResponseImplToJson(
      this,
    );
  }
}

abstract class _AlertRecommendationResponse
    implements AlertRecommendationResponse {
  const factory _AlertRecommendationResponse(
      {required final List<AlertRecommendationAlert> alerts,
      required final List<AlertRecommendationRecommendation>
          recommendations}) = _$AlertRecommendationResponseImpl;

  factory _AlertRecommendationResponse.fromJson(Map<String, dynamic> json) =
      _$AlertRecommendationResponseImpl.fromJson;

  @override
  List<AlertRecommendationAlert> get alerts;
  @override
  List<AlertRecommendationRecommendation> get recommendations;
  @override
  @JsonKey(ignore: true)
  _$$AlertRecommendationResponseImplCopyWith<_$AlertRecommendationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AlertRecommendationAlert _$AlertRecommendationAlertFromJson(
    Map<String, dynamic> json) {
  return _AlertRecommendationAlert.fromJson(json);
}

/// @nodoc
mixin _$AlertRecommendationAlert {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get materialSymbolName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertRecommendationAlertCopyWith<AlertRecommendationAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertRecommendationAlertCopyWith<$Res> {
  factory $AlertRecommendationAlertCopyWith(AlertRecommendationAlert value,
          $Res Function(AlertRecommendationAlert) then) =
      _$AlertRecommendationAlertCopyWithImpl<$Res, AlertRecommendationAlert>;
  @useResult
  $Res call(
      {String title, String description, int level, String materialSymbolName});
}

/// @nodoc
class _$AlertRecommendationAlertCopyWithImpl<$Res,
        $Val extends AlertRecommendationAlert>
    implements $AlertRecommendationAlertCopyWith<$Res> {
  _$AlertRecommendationAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? level = null,
    Object? materialSymbolName = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      materialSymbolName: null == materialSymbolName
          ? _value.materialSymbolName
          : materialSymbolName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertRecommendationAlertImplCopyWith<$Res>
    implements $AlertRecommendationAlertCopyWith<$Res> {
  factory _$$AlertRecommendationAlertImplCopyWith(
          _$AlertRecommendationAlertImpl value,
          $Res Function(_$AlertRecommendationAlertImpl) then) =
      __$$AlertRecommendationAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String description, int level, String materialSymbolName});
}

/// @nodoc
class __$$AlertRecommendationAlertImplCopyWithImpl<$Res>
    extends _$AlertRecommendationAlertCopyWithImpl<$Res,
        _$AlertRecommendationAlertImpl>
    implements _$$AlertRecommendationAlertImplCopyWith<$Res> {
  __$$AlertRecommendationAlertImplCopyWithImpl(
      _$AlertRecommendationAlertImpl _value,
      $Res Function(_$AlertRecommendationAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? level = null,
    Object? materialSymbolName = null,
  }) {
    return _then(_$AlertRecommendationAlertImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      materialSymbolName: null == materialSymbolName
          ? _value.materialSymbolName
          : materialSymbolName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertRecommendationAlertImpl implements _AlertRecommendationAlert {
  const _$AlertRecommendationAlertImpl(
      {required this.title,
      required this.description,
      required this.level,
      required this.materialSymbolName});

  factory _$AlertRecommendationAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertRecommendationAlertImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int level;
  @override
  final String materialSymbolName;

  @override
  String toString() {
    return 'AlertRecommendationAlert(title: $title, description: $description, level: $level, materialSymbolName: $materialSymbolName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertRecommendationAlertImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.materialSymbolName, materialSymbolName) ||
                other.materialSymbolName == materialSymbolName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, level, materialSymbolName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertRecommendationAlertImplCopyWith<_$AlertRecommendationAlertImpl>
      get copyWith => __$$AlertRecommendationAlertImplCopyWithImpl<
          _$AlertRecommendationAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertRecommendationAlertImplToJson(
      this,
    );
  }
}

abstract class _AlertRecommendationAlert implements AlertRecommendationAlert {
  const factory _AlertRecommendationAlert(
          {required final String title,
          required final String description,
          required final int level,
          required final String materialSymbolName}) =
      _$AlertRecommendationAlertImpl;

  factory _AlertRecommendationAlert.fromJson(Map<String, dynamic> json) =
      _$AlertRecommendationAlertImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get level;
  @override
  String get materialSymbolName;
  @override
  @JsonKey(ignore: true)
  _$$AlertRecommendationAlertImplCopyWith<_$AlertRecommendationAlertImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AlertRecommendationRecommendation _$AlertRecommendationRecommendationFromJson(
    Map<String, dynamic> json) {
  return _AlertRecommendationRecommendation.fromJson(json);
}

/// @nodoc
mixin _$AlertRecommendationRecommendation {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertRecommendationRecommendationCopyWith<AlertRecommendationRecommendation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertRecommendationRecommendationCopyWith<$Res> {
  factory $AlertRecommendationRecommendationCopyWith(
          AlertRecommendationRecommendation value,
          $Res Function(AlertRecommendationRecommendation) then) =
      _$AlertRecommendationRecommendationCopyWithImpl<$Res,
          AlertRecommendationRecommendation>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$AlertRecommendationRecommendationCopyWithImpl<$Res,
        $Val extends AlertRecommendationRecommendation>
    implements $AlertRecommendationRecommendationCopyWith<$Res> {
  _$AlertRecommendationRecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertRecommendationRecommendationImplCopyWith<$Res>
    implements $AlertRecommendationRecommendationCopyWith<$Res> {
  factory _$$AlertRecommendationRecommendationImplCopyWith(
          _$AlertRecommendationRecommendationImpl value,
          $Res Function(_$AlertRecommendationRecommendationImpl) then) =
      __$$AlertRecommendationRecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$AlertRecommendationRecommendationImplCopyWithImpl<$Res>
    extends _$AlertRecommendationRecommendationCopyWithImpl<$Res,
        _$AlertRecommendationRecommendationImpl>
    implements _$$AlertRecommendationRecommendationImplCopyWith<$Res> {
  __$$AlertRecommendationRecommendationImplCopyWithImpl(
      _$AlertRecommendationRecommendationImpl _value,
      $Res Function(_$AlertRecommendationRecommendationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$AlertRecommendationRecommendationImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertRecommendationRecommendationImpl
    implements _AlertRecommendationRecommendation {
  const _$AlertRecommendationRecommendationImpl(
      {required this.title, required this.description});

  factory _$AlertRecommendationRecommendationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AlertRecommendationRecommendationImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'AlertRecommendationRecommendation(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertRecommendationRecommendationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertRecommendationRecommendationImplCopyWith<
          _$AlertRecommendationRecommendationImpl>
      get copyWith => __$$AlertRecommendationRecommendationImplCopyWithImpl<
          _$AlertRecommendationRecommendationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertRecommendationRecommendationImplToJson(
      this,
    );
  }
}

abstract class _AlertRecommendationRecommendation
    implements AlertRecommendationRecommendation {
  const factory _AlertRecommendationRecommendation(
          {required final String title, required final String description}) =
      _$AlertRecommendationRecommendationImpl;

  factory _AlertRecommendationRecommendation.fromJson(
          Map<String, dynamic> json) =
      _$AlertRecommendationRecommendationImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AlertRecommendationRecommendationImplCopyWith<
          _$AlertRecommendationRecommendationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InfoState _$InfoStateFromJson(Map<String, dynamic> json) {
  return _InfoState.fromJson(json);
}

/// @nodoc
mixin _$InfoState {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  SupabaseCustomerType? get accountType => throw _privateConstructorUsedError;
  bool? get hasBankAccount => throw _privateConstructorUsedError;
  BankAccounts? get bankAccounts => throw _privateConstructorUsedError;
  BankAccountType? get bankAccountType => throw _privateConstructorUsedError;
  BankAccountTypeLevel5? get bankAccountTypeLevel5 =>
      throw _privateConstructorUsedError;
  String? get accountName => throw _privateConstructorUsedError;
  String? get statementCsv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoStateCopyWith<InfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoStateCopyWith<$Res> {
  factory $InfoStateCopyWith(InfoState value, $Res Function(InfoState) then) =
      _$InfoStateCopyWithImpl<$Res, InfoState>;
  @useResult
  $Res call(
      {int id,
      String? name,
      SupabaseCustomerType? accountType,
      bool? hasBankAccount,
      BankAccounts? bankAccounts,
      BankAccountType? bankAccountType,
      BankAccountTypeLevel5? bankAccountTypeLevel5,
      String? accountName,
      String? statementCsv});
}

/// @nodoc
class _$InfoStateCopyWithImpl<$Res, $Val extends InfoState>
    implements $InfoStateCopyWith<$Res> {
  _$InfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? accountType = freezed,
    Object? hasBankAccount = freezed,
    Object? bankAccounts = freezed,
    Object? bankAccountType = freezed,
    Object? bankAccountTypeLevel5 = freezed,
    Object? accountName = freezed,
    Object? statementCsv = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as SupabaseCustomerType?,
      hasBankAccount: freezed == hasBankAccount
          ? _value.hasBankAccount
          : hasBankAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankAccounts: freezed == bankAccounts
          ? _value.bankAccounts
          : bankAccounts // ignore: cast_nullable_to_non_nullable
              as BankAccounts?,
      bankAccountType: freezed == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as BankAccountType?,
      bankAccountTypeLevel5: freezed == bankAccountTypeLevel5
          ? _value.bankAccountTypeLevel5
          : bankAccountTypeLevel5 // ignore: cast_nullable_to_non_nullable
              as BankAccountTypeLevel5?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      statementCsv: freezed == statementCsv
          ? _value.statementCsv
          : statementCsv // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoStateImplCopyWith<$Res>
    implements $InfoStateCopyWith<$Res> {
  factory _$$InfoStateImplCopyWith(
          _$InfoStateImpl value, $Res Function(_$InfoStateImpl) then) =
      __$$InfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      SupabaseCustomerType? accountType,
      bool? hasBankAccount,
      BankAccounts? bankAccounts,
      BankAccountType? bankAccountType,
      BankAccountTypeLevel5? bankAccountTypeLevel5,
      String? accountName,
      String? statementCsv});
}

/// @nodoc
class __$$InfoStateImplCopyWithImpl<$Res>
    extends _$InfoStateCopyWithImpl<$Res, _$InfoStateImpl>
    implements _$$InfoStateImplCopyWith<$Res> {
  __$$InfoStateImplCopyWithImpl(
      _$InfoStateImpl _value, $Res Function(_$InfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? accountType = freezed,
    Object? hasBankAccount = freezed,
    Object? bankAccounts = freezed,
    Object? bankAccountType = freezed,
    Object? bankAccountTypeLevel5 = freezed,
    Object? accountName = freezed,
    Object? statementCsv = freezed,
  }) {
    return _then(_$InfoStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as SupabaseCustomerType?,
      hasBankAccount: freezed == hasBankAccount
          ? _value.hasBankAccount
          : hasBankAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankAccounts: freezed == bankAccounts
          ? _value.bankAccounts
          : bankAccounts // ignore: cast_nullable_to_non_nullable
              as BankAccounts?,
      bankAccountType: freezed == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as BankAccountType?,
      bankAccountTypeLevel5: freezed == bankAccountTypeLevel5
          ? _value.bankAccountTypeLevel5
          : bankAccountTypeLevel5 // ignore: cast_nullable_to_non_nullable
              as BankAccountTypeLevel5?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      statementCsv: freezed == statementCsv
          ? _value.statementCsv
          : statementCsv // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoStateImpl implements _InfoState {
  _$InfoStateImpl(
      {required this.id,
      this.name,
      this.accountType,
      this.hasBankAccount,
      this.bankAccounts,
      this.bankAccountType,
      this.bankAccountTypeLevel5,
      this.accountName,
      this.statementCsv});

  factory _$InfoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoStateImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final SupabaseCustomerType? accountType;
  @override
  final bool? hasBankAccount;
  @override
  final BankAccounts? bankAccounts;
  @override
  final BankAccountType? bankAccountType;
  @override
  final BankAccountTypeLevel5? bankAccountTypeLevel5;
  @override
  final String? accountName;
  @override
  final String? statementCsv;

  @override
  String toString() {
    return 'InfoState(id: $id, name: $name, accountType: $accountType, hasBankAccount: $hasBankAccount, bankAccounts: $bankAccounts, bankAccountType: $bankAccountType, bankAccountTypeLevel5: $bankAccountTypeLevel5, accountName: $accountName, statementCsv: $statementCsv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.hasBankAccount, hasBankAccount) ||
                other.hasBankAccount == hasBankAccount) &&
            (identical(other.bankAccounts, bankAccounts) ||
                other.bankAccounts == bankAccounts) &&
            (identical(other.bankAccountType, bankAccountType) ||
                other.bankAccountType == bankAccountType) &&
            (identical(other.bankAccountTypeLevel5, bankAccountTypeLevel5) ||
                other.bankAccountTypeLevel5 == bankAccountTypeLevel5) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.statementCsv, statementCsv) ||
                other.statementCsv == statementCsv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      accountType,
      hasBankAccount,
      bankAccounts,
      bankAccountType,
      bankAccountTypeLevel5,
      accountName,
      statementCsv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoStateImplCopyWith<_$InfoStateImpl> get copyWith =>
      __$$InfoStateImplCopyWithImpl<_$InfoStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoStateImplToJson(
      this,
    );
  }
}

abstract class _InfoState implements InfoState {
  factory _InfoState(
      {required final int id,
      final String? name,
      final SupabaseCustomerType? accountType,
      final bool? hasBankAccount,
      final BankAccounts? bankAccounts,
      final BankAccountType? bankAccountType,
      final BankAccountTypeLevel5? bankAccountTypeLevel5,
      final String? accountName,
      final String? statementCsv}) = _$InfoStateImpl;

  factory _InfoState.fromJson(Map<String, dynamic> json) =
      _$InfoStateImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  SupabaseCustomerType? get accountType;
  @override
  bool? get hasBankAccount;
  @override
  BankAccounts? get bankAccounts;
  @override
  BankAccountType? get bankAccountType;
  @override
  BankAccountTypeLevel5? get bankAccountTypeLevel5;
  @override
  String? get accountName;
  @override
  String? get statementCsv;
  @override
  @JsonKey(ignore: true)
  _$$InfoStateImplCopyWith<_$InfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupabaseDeposit _$SupabaseDepositFromJson(Map<String, dynamic> json) {
  return _SupabaseDeposit.fromJson(json);
}

/// @nodoc
mixin _$SupabaseDeposit {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  int get estimatedEarning => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get imageExternalUrl => throw _privateConstructorUsedError;
  double get maxAPY => throw _privateConstructorUsedError;
  double? get offerAPY => throw _privateConstructorUsedError;
  SupabaseDepositsCategory get offerCategory =>
      throw _privateConstructorUsedError;
  String get offerName => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;
  SupabaseCustomerType get targetCustomer => throw _privateConstructorUsedError;
  double get minimumDeposit => throw _privateConstructorUsedError;
  String get imageLightColor => throw _privateConstructorUsedError;
  String get imageDarkColor => throw _privateConstructorUsedError;
  String get insurers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseDepositCopyWith<SupabaseDeposit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseDepositCopyWith<$Res> {
  factory $SupabaseDepositCopyWith(
          SupabaseDeposit value, $Res Function(SupabaseDeposit) then) =
      _$SupabaseDepositCopyWithImpl<$Res, SupabaseDeposit>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String bankName,
      int estimatedEarning,
      String? imageUrl,
      String imageExternalUrl,
      double maxAPY,
      double? offerAPY,
      SupabaseDepositsCategory offerCategory,
      String offerName,
      String website,
      String zip,
      SupabaseCustomerType targetCustomer,
      double minimumDeposit,
      String imageLightColor,
      String imageDarkColor,
      String insurers});
}

/// @nodoc
class _$SupabaseDepositCopyWithImpl<$Res, $Val extends SupabaseDeposit>
    implements $SupabaseDepositCopyWith<$Res> {
  _$SupabaseDepositCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? bankName = null,
    Object? estimatedEarning = null,
    Object? imageUrl = freezed,
    Object? imageExternalUrl = null,
    Object? maxAPY = null,
    Object? offerAPY = freezed,
    Object? offerCategory = null,
    Object? offerName = null,
    Object? website = null,
    Object? zip = null,
    Object? targetCustomer = null,
    Object? minimumDeposit = null,
    Object? imageLightColor = null,
    Object? imageDarkColor = null,
    Object? insurers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedEarning: null == estimatedEarning
          ? _value.estimatedEarning
          : estimatedEarning // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageExternalUrl: null == imageExternalUrl
          ? _value.imageExternalUrl
          : imageExternalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      maxAPY: null == maxAPY
          ? _value.maxAPY
          : maxAPY // ignore: cast_nullable_to_non_nullable
              as double,
      offerAPY: freezed == offerAPY
          ? _value.offerAPY
          : offerAPY // ignore: cast_nullable_to_non_nullable
              as double?,
      offerCategory: null == offerCategory
          ? _value.offerCategory
          : offerCategory // ignore: cast_nullable_to_non_nullable
              as SupabaseDepositsCategory,
      offerName: null == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      targetCustomer: null == targetCustomer
          ? _value.targetCustomer
          : targetCustomer // ignore: cast_nullable_to_non_nullable
              as SupabaseCustomerType,
      minimumDeposit: null == minimumDeposit
          ? _value.minimumDeposit
          : minimumDeposit // ignore: cast_nullable_to_non_nullable
              as double,
      imageLightColor: null == imageLightColor
          ? _value.imageLightColor
          : imageLightColor // ignore: cast_nullable_to_non_nullable
              as String,
      imageDarkColor: null == imageDarkColor
          ? _value.imageDarkColor
          : imageDarkColor // ignore: cast_nullable_to_non_nullable
              as String,
      insurers: null == insurers
          ? _value.insurers
          : insurers // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseDepositImplCopyWith<$Res>
    implements $SupabaseDepositCopyWith<$Res> {
  factory _$$SupabaseDepositImplCopyWith(_$SupabaseDepositImpl value,
          $Res Function(_$SupabaseDepositImpl) then) =
      __$$SupabaseDepositImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String bankName,
      int estimatedEarning,
      String? imageUrl,
      String imageExternalUrl,
      double maxAPY,
      double? offerAPY,
      SupabaseDepositsCategory offerCategory,
      String offerName,
      String website,
      String zip,
      SupabaseCustomerType targetCustomer,
      double minimumDeposit,
      String imageLightColor,
      String imageDarkColor,
      String insurers});
}

/// @nodoc
class __$$SupabaseDepositImplCopyWithImpl<$Res>
    extends _$SupabaseDepositCopyWithImpl<$Res, _$SupabaseDepositImpl>
    implements _$$SupabaseDepositImplCopyWith<$Res> {
  __$$SupabaseDepositImplCopyWithImpl(
      _$SupabaseDepositImpl _value, $Res Function(_$SupabaseDepositImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? bankName = null,
    Object? estimatedEarning = null,
    Object? imageUrl = freezed,
    Object? imageExternalUrl = null,
    Object? maxAPY = null,
    Object? offerAPY = freezed,
    Object? offerCategory = null,
    Object? offerName = null,
    Object? website = null,
    Object? zip = null,
    Object? targetCustomer = null,
    Object? minimumDeposit = null,
    Object? imageLightColor = null,
    Object? imageDarkColor = null,
    Object? insurers = null,
  }) {
    return _then(_$SupabaseDepositImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedEarning: null == estimatedEarning
          ? _value.estimatedEarning
          : estimatedEarning // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageExternalUrl: null == imageExternalUrl
          ? _value.imageExternalUrl
          : imageExternalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      maxAPY: null == maxAPY
          ? _value.maxAPY
          : maxAPY // ignore: cast_nullable_to_non_nullable
              as double,
      offerAPY: freezed == offerAPY
          ? _value.offerAPY
          : offerAPY // ignore: cast_nullable_to_non_nullable
              as double?,
      offerCategory: null == offerCategory
          ? _value.offerCategory
          : offerCategory // ignore: cast_nullable_to_non_nullable
              as SupabaseDepositsCategory,
      offerName: null == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      targetCustomer: null == targetCustomer
          ? _value.targetCustomer
          : targetCustomer // ignore: cast_nullable_to_non_nullable
              as SupabaseCustomerType,
      minimumDeposit: null == minimumDeposit
          ? _value.minimumDeposit
          : minimumDeposit // ignore: cast_nullable_to_non_nullable
              as double,
      imageLightColor: null == imageLightColor
          ? _value.imageLightColor
          : imageLightColor // ignore: cast_nullable_to_non_nullable
              as String,
      imageDarkColor: null == imageDarkColor
          ? _value.imageDarkColor
          : imageDarkColor // ignore: cast_nullable_to_non_nullable
              as String,
      insurers: null == insurers
          ? _value.insurers
          : insurers // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseDepositImpl implements _SupabaseDeposit {
  const _$SupabaseDepositImpl(
      {required this.id,
      required this.createdAt,
      required this.bankName,
      required this.estimatedEarning,
      this.imageUrl,
      required this.imageExternalUrl,
      required this.maxAPY,
      this.offerAPY,
      required this.offerCategory,
      required this.offerName,
      required this.website,
      required this.zip,
      required this.targetCustomer,
      required this.minimumDeposit,
      required this.imageLightColor,
      required this.imageDarkColor,
      required this.insurers});

  factory _$SupabaseDepositImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseDepositImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String bankName;
  @override
  final int estimatedEarning;
  @override
  final String? imageUrl;
  @override
  final String imageExternalUrl;
  @override
  final double maxAPY;
  @override
  final double? offerAPY;
  @override
  final SupabaseDepositsCategory offerCategory;
  @override
  final String offerName;
  @override
  final String website;
  @override
  final String zip;
  @override
  final SupabaseCustomerType targetCustomer;
  @override
  final double minimumDeposit;
  @override
  final String imageLightColor;
  @override
  final String imageDarkColor;
  @override
  final String insurers;

  @override
  String toString() {
    return 'SupabaseDeposit(id: $id, createdAt: $createdAt, bankName: $bankName, estimatedEarning: $estimatedEarning, imageUrl: $imageUrl, imageExternalUrl: $imageExternalUrl, maxAPY: $maxAPY, offerAPY: $offerAPY, offerCategory: $offerCategory, offerName: $offerName, website: $website, zip: $zip, targetCustomer: $targetCustomer, minimumDeposit: $minimumDeposit, imageLightColor: $imageLightColor, imageDarkColor: $imageDarkColor, insurers: $insurers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseDepositImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.estimatedEarning, estimatedEarning) ||
                other.estimatedEarning == estimatedEarning) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageExternalUrl, imageExternalUrl) ||
                other.imageExternalUrl == imageExternalUrl) &&
            (identical(other.maxAPY, maxAPY) || other.maxAPY == maxAPY) &&
            (identical(other.offerAPY, offerAPY) ||
                other.offerAPY == offerAPY) &&
            (identical(other.offerCategory, offerCategory) ||
                other.offerCategory == offerCategory) &&
            (identical(other.offerName, offerName) ||
                other.offerName == offerName) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.targetCustomer, targetCustomer) ||
                other.targetCustomer == targetCustomer) &&
            (identical(other.minimumDeposit, minimumDeposit) ||
                other.minimumDeposit == minimumDeposit) &&
            (identical(other.imageLightColor, imageLightColor) ||
                other.imageLightColor == imageLightColor) &&
            (identical(other.imageDarkColor, imageDarkColor) ||
                other.imageDarkColor == imageDarkColor) &&
            (identical(other.insurers, insurers) ||
                other.insurers == insurers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      bankName,
      estimatedEarning,
      imageUrl,
      imageExternalUrl,
      maxAPY,
      offerAPY,
      offerCategory,
      offerName,
      website,
      zip,
      targetCustomer,
      minimumDeposit,
      imageLightColor,
      imageDarkColor,
      insurers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseDepositImplCopyWith<_$SupabaseDepositImpl> get copyWith =>
      __$$SupabaseDepositImplCopyWithImpl<_$SupabaseDepositImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseDepositImplToJson(
      this,
    );
  }
}

abstract class _SupabaseDeposit implements SupabaseDeposit {
  const factory _SupabaseDeposit(
      {required final String id,
      required final DateTime createdAt,
      required final String bankName,
      required final int estimatedEarning,
      final String? imageUrl,
      required final String imageExternalUrl,
      required final double maxAPY,
      final double? offerAPY,
      required final SupabaseDepositsCategory offerCategory,
      required final String offerName,
      required final String website,
      required final String zip,
      required final SupabaseCustomerType targetCustomer,
      required final double minimumDeposit,
      required final String imageLightColor,
      required final String imageDarkColor,
      required final String insurers}) = _$SupabaseDepositImpl;

  factory _SupabaseDeposit.fromJson(Map<String, dynamic> json) =
      _$SupabaseDepositImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String get bankName;
  @override
  int get estimatedEarning;
  @override
  String? get imageUrl;
  @override
  String get imageExternalUrl;
  @override
  double get maxAPY;
  @override
  double? get offerAPY;
  @override
  SupabaseDepositsCategory get offerCategory;
  @override
  String get offerName;
  @override
  String get website;
  @override
  String get zip;
  @override
  SupabaseCustomerType get targetCustomer;
  @override
  double get minimumDeposit;
  @override
  String get imageLightColor;
  @override
  String get imageDarkColor;
  @override
  String get insurers;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseDepositImplCopyWith<_$SupabaseDepositImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupabaseDepositAvgAPY _$SupabaseDepositAvgAPYFromJson(
    Map<String, dynamic> json) {
  return _SupabaseDepositAvgAPY.fromJson(json);
}

/// @nodoc
mixin _$SupabaseDepositAvgAPY {
  SupabaseDepositsCategory get offerCategory =>
      throw _privateConstructorUsedError;
  double get avgAPY => throw _privateConstructorUsedError;
  double get avgEstimatedEarning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseDepositAvgAPYCopyWith<SupabaseDepositAvgAPY> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseDepositAvgAPYCopyWith<$Res> {
  factory $SupabaseDepositAvgAPYCopyWith(SupabaseDepositAvgAPY value,
          $Res Function(SupabaseDepositAvgAPY) then) =
      _$SupabaseDepositAvgAPYCopyWithImpl<$Res, SupabaseDepositAvgAPY>;
  @useResult
  $Res call(
      {SupabaseDepositsCategory offerCategory,
      double avgAPY,
      double avgEstimatedEarning});
}

/// @nodoc
class _$SupabaseDepositAvgAPYCopyWithImpl<$Res,
        $Val extends SupabaseDepositAvgAPY>
    implements $SupabaseDepositAvgAPYCopyWith<$Res> {
  _$SupabaseDepositAvgAPYCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerCategory = null,
    Object? avgAPY = null,
    Object? avgEstimatedEarning = null,
  }) {
    return _then(_value.copyWith(
      offerCategory: null == offerCategory
          ? _value.offerCategory
          : offerCategory // ignore: cast_nullable_to_non_nullable
              as SupabaseDepositsCategory,
      avgAPY: null == avgAPY
          ? _value.avgAPY
          : avgAPY // ignore: cast_nullable_to_non_nullable
              as double,
      avgEstimatedEarning: null == avgEstimatedEarning
          ? _value.avgEstimatedEarning
          : avgEstimatedEarning // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseDepositAvgAPYImplCopyWith<$Res>
    implements $SupabaseDepositAvgAPYCopyWith<$Res> {
  factory _$$SupabaseDepositAvgAPYImplCopyWith(
          _$SupabaseDepositAvgAPYImpl value,
          $Res Function(_$SupabaseDepositAvgAPYImpl) then) =
      __$$SupabaseDepositAvgAPYImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupabaseDepositsCategory offerCategory,
      double avgAPY,
      double avgEstimatedEarning});
}

/// @nodoc
class __$$SupabaseDepositAvgAPYImplCopyWithImpl<$Res>
    extends _$SupabaseDepositAvgAPYCopyWithImpl<$Res,
        _$SupabaseDepositAvgAPYImpl>
    implements _$$SupabaseDepositAvgAPYImplCopyWith<$Res> {
  __$$SupabaseDepositAvgAPYImplCopyWithImpl(_$SupabaseDepositAvgAPYImpl _value,
      $Res Function(_$SupabaseDepositAvgAPYImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerCategory = null,
    Object? avgAPY = null,
    Object? avgEstimatedEarning = null,
  }) {
    return _then(_$SupabaseDepositAvgAPYImpl(
      offerCategory: null == offerCategory
          ? _value.offerCategory
          : offerCategory // ignore: cast_nullable_to_non_nullable
              as SupabaseDepositsCategory,
      avgAPY: null == avgAPY
          ? _value.avgAPY
          : avgAPY // ignore: cast_nullable_to_non_nullable
              as double,
      avgEstimatedEarning: null == avgEstimatedEarning
          ? _value.avgEstimatedEarning
          : avgEstimatedEarning // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseDepositAvgAPYImpl implements _SupabaseDepositAvgAPY {
  const _$SupabaseDepositAvgAPYImpl(
      {required this.offerCategory,
      required this.avgAPY,
      required this.avgEstimatedEarning});

  factory _$SupabaseDepositAvgAPYImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseDepositAvgAPYImplFromJson(json);

  @override
  final SupabaseDepositsCategory offerCategory;
  @override
  final double avgAPY;
  @override
  final double avgEstimatedEarning;

  @override
  String toString() {
    return 'SupabaseDepositAvgAPY(offerCategory: $offerCategory, avgAPY: $avgAPY, avgEstimatedEarning: $avgEstimatedEarning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseDepositAvgAPYImpl &&
            (identical(other.offerCategory, offerCategory) ||
                other.offerCategory == offerCategory) &&
            (identical(other.avgAPY, avgAPY) || other.avgAPY == avgAPY) &&
            (identical(other.avgEstimatedEarning, avgEstimatedEarning) ||
                other.avgEstimatedEarning == avgEstimatedEarning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, offerCategory, avgAPY, avgEstimatedEarning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseDepositAvgAPYImplCopyWith<_$SupabaseDepositAvgAPYImpl>
      get copyWith => __$$SupabaseDepositAvgAPYImplCopyWithImpl<
          _$SupabaseDepositAvgAPYImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseDepositAvgAPYImplToJson(
      this,
    );
  }
}

abstract class _SupabaseDepositAvgAPY implements SupabaseDepositAvgAPY {
  const factory _SupabaseDepositAvgAPY(
      {required final SupabaseDepositsCategory offerCategory,
      required final double avgAPY,
      required final double avgEstimatedEarning}) = _$SupabaseDepositAvgAPYImpl;

  factory _SupabaseDepositAvgAPY.fromJson(Map<String, dynamic> json) =
      _$SupabaseDepositAvgAPYImpl.fromJson;

  @override
  SupabaseDepositsCategory get offerCategory;
  @override
  double get avgAPY;
  @override
  double get avgEstimatedEarning;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseDepositAvgAPYImplCopyWith<_$SupabaseDepositAvgAPYImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupabaseCreditRewardRate _$SupabaseCreditRewardRateFromJson(
    Map<String, dynamic> json) {
  return _SupabaseCreditRewardRate.fromJson(json);
}

/// @nodoc
mixin _$SupabaseCreditRewardRate {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseCreditRewardRateCopyWith<SupabaseCreditRewardRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseCreditRewardRateCopyWith<$Res> {
  factory $SupabaseCreditRewardRateCopyWith(SupabaseCreditRewardRate value,
          $Res Function(SupabaseCreditRewardRate) then) =
      _$SupabaseCreditRewardRateCopyWithImpl<$Res, SupabaseCreditRewardRate>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$SupabaseCreditRewardRateCopyWithImpl<$Res,
        $Val extends SupabaseCreditRewardRate>
    implements $SupabaseCreditRewardRateCopyWith<$Res> {
  _$SupabaseCreditRewardRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseCreditRewardRateImplCopyWith<$Res>
    implements $SupabaseCreditRewardRateCopyWith<$Res> {
  factory _$$SupabaseCreditRewardRateImplCopyWith(
          _$SupabaseCreditRewardRateImpl value,
          $Res Function(_$SupabaseCreditRewardRateImpl) then) =
      __$$SupabaseCreditRewardRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$SupabaseCreditRewardRateImplCopyWithImpl<$Res>
    extends _$SupabaseCreditRewardRateCopyWithImpl<$Res,
        _$SupabaseCreditRewardRateImpl>
    implements _$$SupabaseCreditRewardRateImplCopyWith<$Res> {
  __$$SupabaseCreditRewardRateImplCopyWithImpl(
      _$SupabaseCreditRewardRateImpl _value,
      $Res Function(_$SupabaseCreditRewardRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$SupabaseCreditRewardRateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseCreditRewardRateImpl implements _SupabaseCreditRewardRate {
  const _$SupabaseCreditRewardRateImpl(
      {required this.name, required this.value});

  factory _$SupabaseCreditRewardRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseCreditRewardRateImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'SupabaseCreditRewardRate(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseCreditRewardRateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseCreditRewardRateImplCopyWith<_$SupabaseCreditRewardRateImpl>
      get copyWith => __$$SupabaseCreditRewardRateImplCopyWithImpl<
          _$SupabaseCreditRewardRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseCreditRewardRateImplToJson(
      this,
    );
  }
}

abstract class _SupabaseCreditRewardRate implements SupabaseCreditRewardRate {
  const factory _SupabaseCreditRewardRate(
      {required final String name,
      required final String value}) = _$SupabaseCreditRewardRateImpl;

  factory _SupabaseCreditRewardRate.fromJson(Map<String, dynamic> json) =
      _$SupabaseCreditRewardRateImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseCreditRewardRateImplCopyWith<_$SupabaseCreditRewardRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupabaseCredit _$SupabaseCreditFromJson(Map<String, dynamic> json) {
  return _SupabaseCredit.fromJson(json);
}

/// @nodoc
mixin _$SupabaseCredit {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get annualFee => throw _privateConstructorUsedError;
  List<SupabaseCreditCategory> get categories =>
      throw _privateConstructorUsedError;
  List<String>? get features => throw _privateConstructorUsedError;
  List<String>? get highlights => throw _privateConstructorUsedError;
  String get imageExternalUrl => throw _privateConstructorUsedError;
  String get introBalanceTransferAPR => throw _privateConstructorUsedError;
  String get introPurchase => throw _privateConstructorUsedError;
  List<String>? get label => throw _privateConstructorUsedError;
  List<SupabaseCreditRewardRate> get rewardsRate =>
      throw _privateConstructorUsedError;
  String? get score => throw _privateConstructorUsedError;
  String? get scoreDescription => throw _privateConstructorUsedError;
  List<String>? get views => throw _privateConstructorUsedError;
  bool get isBusiness => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get introBonus => throw _privateConstructorUsedError;
  String get introBonusUnit => throw _privateConstructorUsedError;
  String get topReward => throw _privateConstructorUsedError;
  String get topRewardUnit => throw _privateConstructorUsedError;
  double get regularAprFrom => throw _privateConstructorUsedError;
  double get regularAprTo => throw _privateConstructorUsedError;
  double get estimatedEarning => throw _privateConstructorUsedError;
  SupabaseCustomerType get targetCustomer => throw _privateConstructorUsedError;
  String get imageLightColor => throw _privateConstructorUsedError;
  String get imageDarkColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseCreditCopyWith<SupabaseCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseCreditCopyWith<$Res> {
  factory $SupabaseCreditCopyWith(
          SupabaseCredit value, $Res Function(SupabaseCredit) then) =
      _$SupabaseCreditCopyWithImpl<$Res, SupabaseCredit>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String name,
      List<String>? annualFee,
      List<SupabaseCreditCategory> categories,
      List<String>? features,
      List<String>? highlights,
      String imageExternalUrl,
      String introBalanceTransferAPR,
      String introPurchase,
      List<String>? label,
      List<SupabaseCreditRewardRate> rewardsRate,
      String? score,
      String? scoreDescription,
      List<String>? views,
      bool isBusiness,
      String link,
      String introBonus,
      String introBonusUnit,
      String topReward,
      String topRewardUnit,
      double regularAprFrom,
      double regularAprTo,
      double estimatedEarning,
      SupabaseCustomerType targetCustomer,
      String imageLightColor,
      String imageDarkColor});
}

/// @nodoc
class _$SupabaseCreditCopyWithImpl<$Res, $Val extends SupabaseCredit>
    implements $SupabaseCreditCopyWith<$Res> {
  _$SupabaseCreditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? annualFee = freezed,
    Object? categories = null,
    Object? features = freezed,
    Object? highlights = freezed,
    Object? imageExternalUrl = null,
    Object? introBalanceTransferAPR = null,
    Object? introPurchase = null,
    Object? label = freezed,
    Object? rewardsRate = null,
    Object? score = freezed,
    Object? scoreDescription = freezed,
    Object? views = freezed,
    Object? isBusiness = null,
    Object? link = null,
    Object? introBonus = null,
    Object? introBonusUnit = null,
    Object? topReward = null,
    Object? topRewardUnit = null,
    Object? regularAprFrom = null,
    Object? regularAprTo = null,
    Object? estimatedEarning = null,
    Object? targetCustomer = null,
    Object? imageLightColor = null,
    Object? imageDarkColor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      annualFee: freezed == annualFee
          ? _value.annualFee
          : annualFee // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SupabaseCreditCategory>,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      highlights: freezed == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageExternalUrl: null == imageExternalUrl
          ? _value.imageExternalUrl
          : imageExternalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introBalanceTransferAPR: null == introBalanceTransferAPR
          ? _value.introBalanceTransferAPR
          : introBalanceTransferAPR // ignore: cast_nullable_to_non_nullable
              as String,
      introPurchase: null == introPurchase
          ? _value.introPurchase
          : introPurchase // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rewardsRate: null == rewardsRate
          ? _value.rewardsRate
          : rewardsRate // ignore: cast_nullable_to_non_nullable
              as List<SupabaseCreditRewardRate>,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      scoreDescription: freezed == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isBusiness: null == isBusiness
          ? _value.isBusiness
          : isBusiness // ignore: cast_nullable_to_non_nullable
              as bool,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      introBonus: null == introBonus
          ? _value.introBonus
          : introBonus // ignore: cast_nullable_to_non_nullable
              as String,
      introBonusUnit: null == introBonusUnit
          ? _value.introBonusUnit
          : introBonusUnit // ignore: cast_nullable_to_non_nullable
              as String,
      topReward: null == topReward
          ? _value.topReward
          : topReward // ignore: cast_nullable_to_non_nullable
              as String,
      topRewardUnit: null == topRewardUnit
          ? _value.topRewardUnit
          : topRewardUnit // ignore: cast_nullable_to_non_nullable
              as String,
      regularAprFrom: null == regularAprFrom
          ? _value.regularAprFrom
          : regularAprFrom // ignore: cast_nullable_to_non_nullable
              as double,
      regularAprTo: null == regularAprTo
          ? _value.regularAprTo
          : regularAprTo // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedEarning: null == estimatedEarning
          ? _value.estimatedEarning
          : estimatedEarning // ignore: cast_nullable_to_non_nullable
              as double,
      targetCustomer: null == targetCustomer
          ? _value.targetCustomer
          : targetCustomer // ignore: cast_nullable_to_non_nullable
              as SupabaseCustomerType,
      imageLightColor: null == imageLightColor
          ? _value.imageLightColor
          : imageLightColor // ignore: cast_nullable_to_non_nullable
              as String,
      imageDarkColor: null == imageDarkColor
          ? _value.imageDarkColor
          : imageDarkColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseCreditImplCopyWith<$Res>
    implements $SupabaseCreditCopyWith<$Res> {
  factory _$$SupabaseCreditImplCopyWith(_$SupabaseCreditImpl value,
          $Res Function(_$SupabaseCreditImpl) then) =
      __$$SupabaseCreditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String name,
      List<String>? annualFee,
      List<SupabaseCreditCategory> categories,
      List<String>? features,
      List<String>? highlights,
      String imageExternalUrl,
      String introBalanceTransferAPR,
      String introPurchase,
      List<String>? label,
      List<SupabaseCreditRewardRate> rewardsRate,
      String? score,
      String? scoreDescription,
      List<String>? views,
      bool isBusiness,
      String link,
      String introBonus,
      String introBonusUnit,
      String topReward,
      String topRewardUnit,
      double regularAprFrom,
      double regularAprTo,
      double estimatedEarning,
      SupabaseCustomerType targetCustomer,
      String imageLightColor,
      String imageDarkColor});
}

/// @nodoc
class __$$SupabaseCreditImplCopyWithImpl<$Res>
    extends _$SupabaseCreditCopyWithImpl<$Res, _$SupabaseCreditImpl>
    implements _$$SupabaseCreditImplCopyWith<$Res> {
  __$$SupabaseCreditImplCopyWithImpl(
      _$SupabaseCreditImpl _value, $Res Function(_$SupabaseCreditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? annualFee = freezed,
    Object? categories = null,
    Object? features = freezed,
    Object? highlights = freezed,
    Object? imageExternalUrl = null,
    Object? introBalanceTransferAPR = null,
    Object? introPurchase = null,
    Object? label = freezed,
    Object? rewardsRate = null,
    Object? score = freezed,
    Object? scoreDescription = freezed,
    Object? views = freezed,
    Object? isBusiness = null,
    Object? link = null,
    Object? introBonus = null,
    Object? introBonusUnit = null,
    Object? topReward = null,
    Object? topRewardUnit = null,
    Object? regularAprFrom = null,
    Object? regularAprTo = null,
    Object? estimatedEarning = null,
    Object? targetCustomer = null,
    Object? imageLightColor = null,
    Object? imageDarkColor = null,
  }) {
    return _then(_$SupabaseCreditImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      annualFee: freezed == annualFee
          ? _value._annualFee
          : annualFee // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SupabaseCreditCategory>,
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      highlights: freezed == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageExternalUrl: null == imageExternalUrl
          ? _value.imageExternalUrl
          : imageExternalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introBalanceTransferAPR: null == introBalanceTransferAPR
          ? _value.introBalanceTransferAPR
          : introBalanceTransferAPR // ignore: cast_nullable_to_non_nullable
              as String,
      introPurchase: null == introPurchase
          ? _value.introPurchase
          : introPurchase // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value._label
          : label // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rewardsRate: null == rewardsRate
          ? _value._rewardsRate
          : rewardsRate // ignore: cast_nullable_to_non_nullable
              as List<SupabaseCreditRewardRate>,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      scoreDescription: freezed == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value._views
          : views // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isBusiness: null == isBusiness
          ? _value.isBusiness
          : isBusiness // ignore: cast_nullable_to_non_nullable
              as bool,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      introBonus: null == introBonus
          ? _value.introBonus
          : introBonus // ignore: cast_nullable_to_non_nullable
              as String,
      introBonusUnit: null == introBonusUnit
          ? _value.introBonusUnit
          : introBonusUnit // ignore: cast_nullable_to_non_nullable
              as String,
      topReward: null == topReward
          ? _value.topReward
          : topReward // ignore: cast_nullable_to_non_nullable
              as String,
      topRewardUnit: null == topRewardUnit
          ? _value.topRewardUnit
          : topRewardUnit // ignore: cast_nullable_to_non_nullable
              as String,
      regularAprFrom: null == regularAprFrom
          ? _value.regularAprFrom
          : regularAprFrom // ignore: cast_nullable_to_non_nullable
              as double,
      regularAprTo: null == regularAprTo
          ? _value.regularAprTo
          : regularAprTo // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedEarning: null == estimatedEarning
          ? _value.estimatedEarning
          : estimatedEarning // ignore: cast_nullable_to_non_nullable
              as double,
      targetCustomer: null == targetCustomer
          ? _value.targetCustomer
          : targetCustomer // ignore: cast_nullable_to_non_nullable
              as SupabaseCustomerType,
      imageLightColor: null == imageLightColor
          ? _value.imageLightColor
          : imageLightColor // ignore: cast_nullable_to_non_nullable
              as String,
      imageDarkColor: null == imageDarkColor
          ? _value.imageDarkColor
          : imageDarkColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseCreditImpl implements _SupabaseCredit {
  const _$SupabaseCreditImpl(
      {required this.id,
      required this.createdAt,
      required this.name,
      final List<String>? annualFee,
      final List<SupabaseCreditCategory> categories = const [],
      final List<String>? features,
      final List<String>? highlights,
      required this.imageExternalUrl,
      required this.introBalanceTransferAPR,
      required this.introPurchase,
      final List<String>? label,
      required final List<SupabaseCreditRewardRate> rewardsRate,
      this.score,
      this.scoreDescription,
      final List<String>? views,
      required this.isBusiness,
      required this.link,
      required this.introBonus,
      required this.introBonusUnit,
      required this.topReward,
      required this.topRewardUnit,
      required this.regularAprFrom,
      required this.regularAprTo,
      required this.estimatedEarning,
      required this.targetCustomer,
      required this.imageLightColor,
      required this.imageDarkColor})
      : _annualFee = annualFee,
        _categories = categories,
        _features = features,
        _highlights = highlights,
        _label = label,
        _rewardsRate = rewardsRate,
        _views = views;

  factory _$SupabaseCreditImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseCreditImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String name;
  final List<String>? _annualFee;
  @override
  List<String>? get annualFee {
    final value = _annualFee;
    if (value == null) return null;
    if (_annualFee is EqualUnmodifiableListView) return _annualFee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SupabaseCreditCategory> _categories;
  @override
  @JsonKey()
  List<SupabaseCreditCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String>? _features;
  @override
  List<String>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _highlights;
  @override
  List<String>? get highlights {
    final value = _highlights;
    if (value == null) return null;
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String imageExternalUrl;
  @override
  final String introBalanceTransferAPR;
  @override
  final String introPurchase;
  final List<String>? _label;
  @override
  List<String>? get label {
    final value = _label;
    if (value == null) return null;
    if (_label is EqualUnmodifiableListView) return _label;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SupabaseCreditRewardRate> _rewardsRate;
  @override
  List<SupabaseCreditRewardRate> get rewardsRate {
    if (_rewardsRate is EqualUnmodifiableListView) return _rewardsRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewardsRate);
  }

  @override
  final String? score;
  @override
  final String? scoreDescription;
  final List<String>? _views;
  @override
  List<String>? get views {
    final value = _views;
    if (value == null) return null;
    if (_views is EqualUnmodifiableListView) return _views;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isBusiness;
  @override
  final String link;
  @override
  final String introBonus;
  @override
  final String introBonusUnit;
  @override
  final String topReward;
  @override
  final String topRewardUnit;
  @override
  final double regularAprFrom;
  @override
  final double regularAprTo;
  @override
  final double estimatedEarning;
  @override
  final SupabaseCustomerType targetCustomer;
  @override
  final String imageLightColor;
  @override
  final String imageDarkColor;

  @override
  String toString() {
    return 'SupabaseCredit(id: $id, createdAt: $createdAt, name: $name, annualFee: $annualFee, categories: $categories, features: $features, highlights: $highlights, imageExternalUrl: $imageExternalUrl, introBalanceTransferAPR: $introBalanceTransferAPR, introPurchase: $introPurchase, label: $label, rewardsRate: $rewardsRate, score: $score, scoreDescription: $scoreDescription, views: $views, isBusiness: $isBusiness, link: $link, introBonus: $introBonus, introBonusUnit: $introBonusUnit, topReward: $topReward, topRewardUnit: $topRewardUnit, regularAprFrom: $regularAprFrom, regularAprTo: $regularAprTo, estimatedEarning: $estimatedEarning, targetCustomer: $targetCustomer, imageLightColor: $imageLightColor, imageDarkColor: $imageDarkColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseCreditImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._annualFee, _annualFee) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            (identical(other.imageExternalUrl, imageExternalUrl) ||
                other.imageExternalUrl == imageExternalUrl) &&
            (identical(
                    other.introBalanceTransferAPR, introBalanceTransferAPR) ||
                other.introBalanceTransferAPR == introBalanceTransferAPR) &&
            (identical(other.introPurchase, introPurchase) ||
                other.introPurchase == introPurchase) &&
            const DeepCollectionEquality().equals(other._label, _label) &&
            const DeepCollectionEquality()
                .equals(other._rewardsRate, _rewardsRate) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoreDescription, scoreDescription) ||
                other.scoreDescription == scoreDescription) &&
            const DeepCollectionEquality().equals(other._views, _views) &&
            (identical(other.isBusiness, isBusiness) ||
                other.isBusiness == isBusiness) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.introBonus, introBonus) ||
                other.introBonus == introBonus) &&
            (identical(other.introBonusUnit, introBonusUnit) ||
                other.introBonusUnit == introBonusUnit) &&
            (identical(other.topReward, topReward) ||
                other.topReward == topReward) &&
            (identical(other.topRewardUnit, topRewardUnit) ||
                other.topRewardUnit == topRewardUnit) &&
            (identical(other.regularAprFrom, regularAprFrom) ||
                other.regularAprFrom == regularAprFrom) &&
            (identical(other.regularAprTo, regularAprTo) ||
                other.regularAprTo == regularAprTo) &&
            (identical(other.estimatedEarning, estimatedEarning) ||
                other.estimatedEarning == estimatedEarning) &&
            (identical(other.targetCustomer, targetCustomer) ||
                other.targetCustomer == targetCustomer) &&
            (identical(other.imageLightColor, imageLightColor) ||
                other.imageLightColor == imageLightColor) &&
            (identical(other.imageDarkColor, imageDarkColor) ||
                other.imageDarkColor == imageDarkColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        name,
        const DeepCollectionEquality().hash(_annualFee),
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_features),
        const DeepCollectionEquality().hash(_highlights),
        imageExternalUrl,
        introBalanceTransferAPR,
        introPurchase,
        const DeepCollectionEquality().hash(_label),
        const DeepCollectionEquality().hash(_rewardsRate),
        score,
        scoreDescription,
        const DeepCollectionEquality().hash(_views),
        isBusiness,
        link,
        introBonus,
        introBonusUnit,
        topReward,
        topRewardUnit,
        regularAprFrom,
        regularAprTo,
        estimatedEarning,
        targetCustomer,
        imageLightColor,
        imageDarkColor
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseCreditImplCopyWith<_$SupabaseCreditImpl> get copyWith =>
      __$$SupabaseCreditImplCopyWithImpl<_$SupabaseCreditImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseCreditImplToJson(
      this,
    );
  }
}

abstract class _SupabaseCredit implements SupabaseCredit {
  const factory _SupabaseCredit(
      {required final String id,
      required final DateTime createdAt,
      required final String name,
      final List<String>? annualFee,
      final List<SupabaseCreditCategory> categories,
      final List<String>? features,
      final List<String>? highlights,
      required final String imageExternalUrl,
      required final String introBalanceTransferAPR,
      required final String introPurchase,
      final List<String>? label,
      required final List<SupabaseCreditRewardRate> rewardsRate,
      final String? score,
      final String? scoreDescription,
      final List<String>? views,
      required final bool isBusiness,
      required final String link,
      required final String introBonus,
      required final String introBonusUnit,
      required final String topReward,
      required final String topRewardUnit,
      required final double regularAprFrom,
      required final double regularAprTo,
      required final double estimatedEarning,
      required final SupabaseCustomerType targetCustomer,
      required final String imageLightColor,
      required final String imageDarkColor}) = _$SupabaseCreditImpl;

  factory _SupabaseCredit.fromJson(Map<String, dynamic> json) =
      _$SupabaseCreditImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String get name;
  @override
  List<String>? get annualFee;
  @override
  List<SupabaseCreditCategory> get categories;
  @override
  List<String>? get features;
  @override
  List<String>? get highlights;
  @override
  String get imageExternalUrl;
  @override
  String get introBalanceTransferAPR;
  @override
  String get introPurchase;
  @override
  List<String>? get label;
  @override
  List<SupabaseCreditRewardRate> get rewardsRate;
  @override
  String? get score;
  @override
  String? get scoreDescription;
  @override
  List<String>? get views;
  @override
  bool get isBusiness;
  @override
  String get link;
  @override
  String get introBonus;
  @override
  String get introBonusUnit;
  @override
  String get topReward;
  @override
  String get topRewardUnit;
  @override
  double get regularAprFrom;
  @override
  double get regularAprTo;
  @override
  double get estimatedEarning;
  @override
  SupabaseCustomerType get targetCustomer;
  @override
  String get imageLightColor;
  @override
  String get imageDarkColor;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseCreditImplCopyWith<_$SupabaseCreditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupabaseCreditEstEarnAvg _$SupabaseCreditEstEarnAvgFromJson(
    Map<String, dynamic> json) {
  return _SupabaseCreditEstEarnAvg.fromJson(json);
}

/// @nodoc
mixin _$SupabaseCreditEstEarnAvg {
  SupabaseCreditCategory get category => throw _privateConstructorUsedError;
  double get avgEstimatedEarning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseCreditEstEarnAvgCopyWith<SupabaseCreditEstEarnAvg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseCreditEstEarnAvgCopyWith<$Res> {
  factory $SupabaseCreditEstEarnAvgCopyWith(SupabaseCreditEstEarnAvg value,
          $Res Function(SupabaseCreditEstEarnAvg) then) =
      _$SupabaseCreditEstEarnAvgCopyWithImpl<$Res, SupabaseCreditEstEarnAvg>;
  @useResult
  $Res call({SupabaseCreditCategory category, double avgEstimatedEarning});
}

/// @nodoc
class _$SupabaseCreditEstEarnAvgCopyWithImpl<$Res,
        $Val extends SupabaseCreditEstEarnAvg>
    implements $SupabaseCreditEstEarnAvgCopyWith<$Res> {
  _$SupabaseCreditEstEarnAvgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? avgEstimatedEarning = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SupabaseCreditCategory,
      avgEstimatedEarning: null == avgEstimatedEarning
          ? _value.avgEstimatedEarning
          : avgEstimatedEarning // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseCreditEstEarnAvgImplCopyWith<$Res>
    implements $SupabaseCreditEstEarnAvgCopyWith<$Res> {
  factory _$$SupabaseCreditEstEarnAvgImplCopyWith(
          _$SupabaseCreditEstEarnAvgImpl value,
          $Res Function(_$SupabaseCreditEstEarnAvgImpl) then) =
      __$$SupabaseCreditEstEarnAvgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SupabaseCreditCategory category, double avgEstimatedEarning});
}

/// @nodoc
class __$$SupabaseCreditEstEarnAvgImplCopyWithImpl<$Res>
    extends _$SupabaseCreditEstEarnAvgCopyWithImpl<$Res,
        _$SupabaseCreditEstEarnAvgImpl>
    implements _$$SupabaseCreditEstEarnAvgImplCopyWith<$Res> {
  __$$SupabaseCreditEstEarnAvgImplCopyWithImpl(
      _$SupabaseCreditEstEarnAvgImpl _value,
      $Res Function(_$SupabaseCreditEstEarnAvgImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? avgEstimatedEarning = null,
  }) {
    return _then(_$SupabaseCreditEstEarnAvgImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SupabaseCreditCategory,
      avgEstimatedEarning: null == avgEstimatedEarning
          ? _value.avgEstimatedEarning
          : avgEstimatedEarning // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseCreditEstEarnAvgImpl implements _SupabaseCreditEstEarnAvg {
  const _$SupabaseCreditEstEarnAvgImpl(
      {required this.category, required this.avgEstimatedEarning});

  factory _$SupabaseCreditEstEarnAvgImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseCreditEstEarnAvgImplFromJson(json);

  @override
  final SupabaseCreditCategory category;
  @override
  final double avgEstimatedEarning;

  @override
  String toString() {
    return 'SupabaseCreditEstEarnAvg(category: $category, avgEstimatedEarning: $avgEstimatedEarning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseCreditEstEarnAvgImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.avgEstimatedEarning, avgEstimatedEarning) ||
                other.avgEstimatedEarning == avgEstimatedEarning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, avgEstimatedEarning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseCreditEstEarnAvgImplCopyWith<_$SupabaseCreditEstEarnAvgImpl>
      get copyWith => __$$SupabaseCreditEstEarnAvgImplCopyWithImpl<
          _$SupabaseCreditEstEarnAvgImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseCreditEstEarnAvgImplToJson(
      this,
    );
  }
}

abstract class _SupabaseCreditEstEarnAvg implements SupabaseCreditEstEarnAvg {
  const factory _SupabaseCreditEstEarnAvg(
          {required final SupabaseCreditCategory category,
          required final double avgEstimatedEarning}) =
      _$SupabaseCreditEstEarnAvgImpl;

  factory _SupabaseCreditEstEarnAvg.fromJson(Map<String, dynamic> json) =
      _$SupabaseCreditEstEarnAvgImpl.fromJson;

  @override
  SupabaseCreditCategory get category;
  @override
  double get avgEstimatedEarning;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseCreditEstEarnAvgImplCopyWith<_$SupabaseCreditEstEarnAvgImpl>
      get copyWith => throw _privateConstructorUsedError;
}
