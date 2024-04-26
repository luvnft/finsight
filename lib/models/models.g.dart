// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertRecommendationResponseImpl _$$AlertRecommendationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlertRecommendationResponseImpl(
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) =>
              AlertRecommendationAlert.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => AlertRecommendationRecommendation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlertRecommendationResponseImplToJson(
        _$AlertRecommendationResponseImpl instance) =>
    <String, dynamic>{
      'alerts': instance.alerts,
      'recommendations': instance.recommendations,
    };

_$AlertRecommendationAlertImpl _$$AlertRecommendationAlertImplFromJson(
        Map<String, dynamic> json) =>
    _$AlertRecommendationAlertImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      level: json['level'] as int,
      materialSymbolName: json['materialSymbolName'] as String,
    );

Map<String, dynamic> _$$AlertRecommendationAlertImplToJson(
        _$AlertRecommendationAlertImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'level': instance.level,
      'materialSymbolName': instance.materialSymbolName,
    };

_$AlertRecommendationRecommendationImpl
    _$$AlertRecommendationRecommendationImplFromJson(
            Map<String, dynamic> json) =>
        _$AlertRecommendationRecommendationImpl(
          title: json['title'] as String,
          description: json['description'] as String,
        );

Map<String, dynamic> _$$AlertRecommendationRecommendationImplToJson(
        _$AlertRecommendationRecommendationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$InfoStateImpl _$$InfoStateImplFromJson(Map<String, dynamic> json) =>
    _$InfoStateImpl(
      name: json['name'] as String?,
      accountType:
          $enumDecodeNullable(_$AccountTypeEnumMap, json['accountType']),
      hasBankAccount: json['hasBankAccount'] as bool?,
    );

Map<String, dynamic> _$$InfoStateImplToJson(_$InfoStateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'accountType': _$AccountTypeEnumMap[instance.accountType],
      'hasBankAccount': instance.hasBankAccount,
    };

const _$AccountTypeEnumMap = {
  AccountType.personal: 'personal',
  AccountType.business: 'business',
  AccountType.student: 'student',
};
