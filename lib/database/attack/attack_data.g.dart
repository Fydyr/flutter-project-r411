// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAttackDataCollection on Isar {
  IsarCollection<AttackData> get attackDatas => this.collection();
}

const AttackDataSchema = CollectionSchema(
  name: r'AttackData',
  id: 4233658804513794042,
  properties: {
    r'damage': PropertySchema(
      id: 0,
      name: r'damage',
      type: IsarType.long,
    ),
    r'idType': PropertySchema(
      id: 1,
      name: r'idType',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _attackDataEstimateSize,
  serialize: _attackDataSerialize,
  deserialize: _attackDataDeserialize,
  deserializeProp: _attackDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _attackDataGetId,
  getLinks: _attackDataGetLinks,
  attach: _attackDataAttach,
  version: '3.1.0+1',
);

int _attackDataEstimateSize(
  AttackData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _attackDataSerialize(
  AttackData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.damage);
  writer.writeLong(offsets[1], object.idType);
  writer.writeString(offsets[2], object.name);
}

AttackData _attackDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AttackData();
  object.damage = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.idType = reader.readLongOrNull(offsets[1]);
  object.name = reader.readStringOrNull(offsets[2]);
  return object;
}

P _attackDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _attackDataGetId(AttackData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _attackDataGetLinks(AttackData object) {
  return [];
}

void _attackDataAttach(IsarCollection<dynamic> col, Id id, AttackData object) {
  object.id = id;
}

extension AttackDataQueryWhereSort
    on QueryBuilder<AttackData, AttackData, QWhere> {
  QueryBuilder<AttackData, AttackData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AttackDataQueryWhere
    on QueryBuilder<AttackData, AttackData, QWhereClause> {
  QueryBuilder<AttackData, AttackData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AttackDataQueryFilter
    on QueryBuilder<AttackData, AttackData, QFilterCondition> {
  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> damageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'damage',
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition>
      damageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'damage',
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> damageEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'damage',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> damageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'damage',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> damageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'damage',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> damageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'damage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idType',
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition>
      idTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idType',
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idTypeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idType',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idType',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idType',
        value: value,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> idTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension AttackDataQueryObject
    on QueryBuilder<AttackData, AttackData, QFilterCondition> {}

extension AttackDataQueryLinks
    on QueryBuilder<AttackData, AttackData, QFilterCondition> {}

extension AttackDataQuerySortBy
    on QueryBuilder<AttackData, AttackData, QSortBy> {
  QueryBuilder<AttackData, AttackData, QAfterSortBy> sortByDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.asc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> sortByDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.desc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> sortByIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.asc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> sortByIdTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.desc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension AttackDataQuerySortThenBy
    on QueryBuilder<AttackData, AttackData, QSortThenBy> {
  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenByDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.asc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenByDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.desc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenByIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.asc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenByIdTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.desc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AttackData, AttackData, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension AttackDataQueryWhereDistinct
    on QueryBuilder<AttackData, AttackData, QDistinct> {
  QueryBuilder<AttackData, AttackData, QDistinct> distinctByDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'damage');
    });
  }

  QueryBuilder<AttackData, AttackData, QDistinct> distinctByIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idType');
    });
  }

  QueryBuilder<AttackData, AttackData, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension AttackDataQueryProperty
    on QueryBuilder<AttackData, AttackData, QQueryProperty> {
  QueryBuilder<AttackData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AttackData, int?, QQueryOperations> damageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'damage');
    });
  }

  QueryBuilder<AttackData, int?, QQueryOperations> idTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idType');
    });
  }

  QueryBuilder<AttackData, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
