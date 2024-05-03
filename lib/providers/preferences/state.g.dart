// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetPreferencesStateCollection on Isar {
  IsarCollection<int, PreferencesState> get preferencesStates =>
      this.collection();
}

const PreferencesStateSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'PreferencesState',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'themeMode',
        type: IsarType.byte,
        enumMap: {"system": 0, "light": 1, "dark": 2},
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, PreferencesState>(
    serialize: serializePreferencesState,
    deserialize: deserializePreferencesState,
    deserializeProperty: deserializePreferencesStateProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializePreferencesState(IsarWriter writer, PreferencesState object) {
  IsarCore.writeByte(writer, 1, object.themeMode.index);
  return object.id;
}

@isarProtected
PreferencesState deserializePreferencesState(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final ThemeMode _themeMode;
  {
    if (IsarCore.readNull(reader, 1)) {
      _themeMode = ThemeMode.system;
    } else {
      _themeMode = _preferencesStateThemeMode[IsarCore.readByte(reader, 1)] ??
          ThemeMode.system;
    }
  }
  final object = PreferencesState(
    id: _id,
    themeMode: _themeMode,
  );
  return object;
}

@isarProtected
dynamic deserializePreferencesStateProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      {
        if (IsarCore.readNull(reader, 1)) {
          return ThemeMode.system;
        } else {
          return _preferencesStateThemeMode[IsarCore.readByte(reader, 1)] ??
              ThemeMode.system;
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _PreferencesStateUpdate {
  bool call({
    required int id,
    ThemeMode? themeMode,
  });
}

class _PreferencesStateUpdateImpl implements _PreferencesStateUpdate {
  const _PreferencesStateUpdateImpl(this.collection);

  final IsarCollection<int, PreferencesState> collection;

  @override
  bool call({
    required int id,
    Object? themeMode = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (themeMode != ignore) 1: themeMode as ThemeMode?,
        }) >
        0;
  }
}

sealed class _PreferencesStateUpdateAll {
  int call({
    required List<int> id,
    ThemeMode? themeMode,
  });
}

class _PreferencesStateUpdateAllImpl implements _PreferencesStateUpdateAll {
  const _PreferencesStateUpdateAllImpl(this.collection);

  final IsarCollection<int, PreferencesState> collection;

  @override
  int call({
    required List<int> id,
    Object? themeMode = ignore,
  }) {
    return collection.updateProperties(id, {
      if (themeMode != ignore) 1: themeMode as ThemeMode?,
    });
  }
}

extension PreferencesStateUpdate on IsarCollection<int, PreferencesState> {
  _PreferencesStateUpdate get update => _PreferencesStateUpdateImpl(this);

  _PreferencesStateUpdateAll get updateAll =>
      _PreferencesStateUpdateAllImpl(this);
}

sealed class _PreferencesStateQueryUpdate {
  int call({
    ThemeMode? themeMode,
  });
}

class _PreferencesStateQueryUpdateImpl implements _PreferencesStateQueryUpdate {
  const _PreferencesStateQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<PreferencesState> query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (themeMode != ignore) 1: themeMode as ThemeMode?,
    });
  }
}

extension PreferencesStateQueryUpdate on IsarQuery<PreferencesState> {
  _PreferencesStateQueryUpdate get updateFirst =>
      _PreferencesStateQueryUpdateImpl(this, limit: 1);

  _PreferencesStateQueryUpdate get updateAll =>
      _PreferencesStateQueryUpdateImpl(this);
}

class _PreferencesStateQueryBuilderUpdateImpl
    implements _PreferencesStateQueryUpdate {
  const _PreferencesStateQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<PreferencesState, PreferencesState, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (themeMode != ignore) 1: themeMode as ThemeMode?,
      });
    } finally {
      q.close();
    }
  }
}

extension PreferencesStateQueryBuilderUpdate
    on QueryBuilder<PreferencesState, PreferencesState, QOperations> {
  _PreferencesStateQueryUpdate get updateFirst =>
      _PreferencesStateQueryBuilderUpdateImpl(this, limit: 1);

  _PreferencesStateQueryUpdate get updateAll =>
      _PreferencesStateQueryBuilderUpdateImpl(this);
}

const _preferencesStateThemeMode = {
  0: ThemeMode.system,
  1: ThemeMode.light,
  2: ThemeMode.dark,
};

extension PreferencesStateQueryFilter
    on QueryBuilder<PreferencesState, PreferencesState, QFilterCondition> {
  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      themeModeEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      themeModeGreaterThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      themeModeLessThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      themeModeLessThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterFilterCondition>
      themeModeBetween(
    ThemeMode lower,
    ThemeMode upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }
}

extension PreferencesStateQueryObject
    on QueryBuilder<PreferencesState, PreferencesState, QFilterCondition> {}

extension PreferencesStateQuerySortBy
    on QueryBuilder<PreferencesState, PreferencesState, QSortBy> {
  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy>
      sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy>
      sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }
}

extension PreferencesStateQuerySortThenBy
    on QueryBuilder<PreferencesState, PreferencesState, QSortThenBy> {
  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy>
      thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<PreferencesState, PreferencesState, QAfterSortBy>
      thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }
}

extension PreferencesStateQueryWhereDistinct
    on QueryBuilder<PreferencesState, PreferencesState, QDistinct> {
  QueryBuilder<PreferencesState, PreferencesState, QAfterDistinct>
      distinctByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }
}

extension PreferencesStateQueryProperty1
    on QueryBuilder<PreferencesState, PreferencesState, QProperty> {
  QueryBuilder<PreferencesState, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<PreferencesState, ThemeMode, QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension PreferencesStateQueryProperty2<R>
    on QueryBuilder<PreferencesState, R, QAfterProperty> {
  QueryBuilder<PreferencesState, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<PreferencesState, (R, ThemeMode), QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension PreferencesStateQueryProperty3<R1, R2>
    on QueryBuilder<PreferencesState, (R1, R2), QAfterProperty> {
  QueryBuilder<PreferencesState, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<PreferencesState, (R1, R2, ThemeMode), QOperations>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferencesStateImpl _$$PreferencesStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferencesStateImpl(
      id: (json['id'] as num).toInt(),
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
    );

Map<String, dynamic> _$$PreferencesStateImplToJson(
        _$PreferencesStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
