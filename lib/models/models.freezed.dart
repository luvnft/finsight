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
  String? get name => throw _privateConstructorUsedError;
  AccountType? get accountType => throw _privateConstructorUsedError;
  bool? get hasBankAccount => throw _privateConstructorUsedError;
  BankAccounts? get bankAccounts => throw _privateConstructorUsedError;
  BankAccountType? get bankAccountType => throw _privateConstructorUsedError;

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
      {String? name,
      AccountType? accountType,
      bool? hasBankAccount,
      BankAccounts? bankAccounts,
      BankAccountType? bankAccountType});
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
    Object? name = freezed,
    Object? accountType = freezed,
    Object? hasBankAccount = freezed,
    Object? bankAccounts = freezed,
    Object? bankAccountType = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType?,
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
      {String? name,
      AccountType? accountType,
      bool? hasBankAccount,
      BankAccounts? bankAccounts,
      BankAccountType? bankAccountType});
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
    Object? name = freezed,
    Object? accountType = freezed,
    Object? hasBankAccount = freezed,
    Object? bankAccounts = freezed,
    Object? bankAccountType = freezed,
  }) {
    return _then(_$InfoStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoStateImpl implements _InfoState {
  _$InfoStateImpl(
      {this.name,
      this.accountType,
      this.hasBankAccount,
      this.bankAccounts,
      this.bankAccountType});

  factory _$InfoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoStateImplFromJson(json);

  @override
  final String? name;
  @override
  final AccountType? accountType;
  @override
  final bool? hasBankAccount;
  @override
  final BankAccounts? bankAccounts;
  @override
  final BankAccountType? bankAccountType;

  @override
  String toString() {
    return 'InfoState(name: $name, accountType: $accountType, hasBankAccount: $hasBankAccount, bankAccounts: $bankAccounts, bankAccountType: $bankAccountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.hasBankAccount, hasBankAccount) ||
                other.hasBankAccount == hasBankAccount) &&
            (identical(other.bankAccounts, bankAccounts) ||
                other.bankAccounts == bankAccounts) &&
            (identical(other.bankAccountType, bankAccountType) ||
                other.bankAccountType == bankAccountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, accountType,
      hasBankAccount, bankAccounts, bankAccountType);

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
      {final String? name,
      final AccountType? accountType,
      final bool? hasBankAccount,
      final BankAccounts? bankAccounts,
      final BankAccountType? bankAccountType}) = _$InfoStateImpl;

  factory _InfoState.fromJson(Map<String, dynamic> json) =
      _$InfoStateImpl.fromJson;

  @override
  String? get name;
  @override
  AccountType? get accountType;
  @override
  bool? get hasBankAccount;
  @override
  BankAccounts? get bankAccounts;
  @override
  BankAccountType? get bankAccountType;
  @override
  @JsonKey(ignore: true)
  _$$InfoStateImplCopyWith<_$InfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
