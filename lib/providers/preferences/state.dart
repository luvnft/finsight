import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
@collection
class PreferencesState with _$PreferencesState {
  const factory PreferencesState({
    required int id,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _PreferencesState;

  factory PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$PreferencesStateFromJson(json);
}
