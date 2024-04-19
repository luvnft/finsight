part of './models.dart';

@freezed
class AlertRecommendationResponse with _$AlertRecommendationResponse {
  const factory AlertRecommendationResponse({
    required List<AlertRecommendationAlert> alerts,
    required List<AlertRecommendationRecommendation> recommendations,
  }) = _AlertRecommendationResponse;

  factory AlertRecommendationResponse.fromJson(Map<String, dynamic> json) =>
      _$AlertRecommendationResponseFromJson(json);
}

@freezed
class AlertRecommendationAlert with _$AlertRecommendationAlert {
  const factory AlertRecommendationAlert({
    required String title,
    required String description,
    required int level,
    required String materialSymbolName,
  }) = _AlertRecommendationAlert;

  factory AlertRecommendationAlert.fromJson(Map<String, dynamic> json) =>
      _$AlertRecommendationAlertFromJson(json);
}

@freezed
class AlertRecommendationRecommendation
    with _$AlertRecommendationRecommendation {
  const factory AlertRecommendationRecommendation({
    required String title,
    required String description,
  }) = _AlertRecommendationRecommendation;

  factory AlertRecommendationRecommendation.fromJson(
          Map<String, dynamic> json) =>
      _$AlertRecommendationRecommendationFromJson(json);
}
