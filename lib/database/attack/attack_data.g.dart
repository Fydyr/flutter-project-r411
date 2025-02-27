// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonDataCollection on Isar {
  IsarCollection<PokemonData> get pokemonDatas => this.collection();
}

const PokemonDataSchema = CollectionSchema(
  name: r'PokemonData',
  id: 1796270397199454884,
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
  estimateSize: _pokemonDataEstimateSize,
  serialize: _pokemonDataSerialize,
  deserialize: _pokemonDataDeserialize,
  deserializeProp: _pokemonDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _pokemonDataGetId,
  getLinks: _pokemonDataGetLinks,
  attach: _pokemonDataAttach,
  version: '3.1.0+1',
);

int _pokemonDataEstimateSize(
  PokemonData object,
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

void _pokemonDataSerialize(
  PokemonData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.damage);
  writer.writeLong(offsets[1], object.idType);
  writer.writeString(offsets[2], object.name);
}

PokemonData _pokemonDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonData();
  object.damage = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.idType = reader.readLongOrNull(offsets[1]);
  object.name = reader.readStringOrNull(offsets[2]);
  return object;
}

P _pokemonDataDeserializeProp<P>(
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

Id _pokemonDataGetId(PokemonData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pokemonDataGetLinks(PokemonData object) {
  return [];
}

void _pokemonDataAttach(
    IsarCollection<dynamic> col, Id id, PokemonData object) {
  object.id = id;
}

extension PokemonDataQueryWhereSort
    on QueryBuilder<PokemonData, PokemonData, QWhere> {
  QueryBuilder<PokemonData, PokemonData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PokemonDataQueryWhere
    on QueryBuilder<PokemonData, PokemonData, QWhereClause> {
  QueryBuilder<PokemonData, PokemonData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PokemonData, PokemonData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterWhereClause> idBetween(
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

extension PokemonDataQueryFilter
    on QueryBuilder<PokemonData, PokemonData, QFilterCondition> {
  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> damageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'damage',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      damageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'damage',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> damageEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'damage',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      damageGreaterThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> damageLessThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> damageBetween(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idType',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idType',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idTypeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idType',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idTypeGreaterThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idTypeLessThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idTypeBetween(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameContains(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension PokemonDataQueryObject
    on QueryBuilder<PokemonData, PokemonData, QFilterCondition> {}

extension PokemonDataQueryLinks
    on QueryBuilder<PokemonData, PokemonData, QFilterCondition> {}

extension PokemonDataQuerySortBy
    on QueryBuilder<PokemonData, PokemonData, QSortBy> {
  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByIdTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension PokemonDataQuerySortThenBy
    on QueryBuilder<PokemonData, PokemonData, QSortThenBy> {
  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'damage', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByIdTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idType', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension PokemonDataQueryWhereDistinct
    on QueryBuilder<PokemonData, PokemonData, QDistinct> {
  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'damage');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idType');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension PokemonDataQueryProperty
    on QueryBuilder<PokemonData, PokemonData, QQueryProperty> {
  QueryBuilder<PokemonData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> damageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'damage');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> idTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idType');
    });
  }

  QueryBuilder<PokemonData, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
