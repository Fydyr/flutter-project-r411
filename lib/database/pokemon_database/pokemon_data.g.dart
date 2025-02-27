// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data.dart';

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
    r'idAttack': PropertySchema(
      id: 0,
      name: r'idAttack',
      type: IsarType.long,
    ),
    r'idPoke': PropertySchema(
      id: 1,
      name: r'idPoke',
      type: IsarType.long,
    ),
    r'imageURL': PropertySchema(
      id: 2,
      name: r'imageURL',
      type: IsarType.string,
    ),
    r'lifePoints': PropertySchema(
      id: 3,
      name: r'lifePoints',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'numberPokemon': PropertySchema(
      id: 5,
      name: r'numberPokemon',
      type: IsarType.long,
    ),
    r'pokedexId': PropertySchema(
      id: 6,
      name: r'pokedexId',
      type: IsarType.long,
    ),
    r'size': PropertySchema(
      id: 7,
      name: r'size',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 8,
      name: r'type',
      type: IsarType.long,
    ),
    r'weight': PropertySchema(
      id: 9,
      name: r'weight',
      type: IsarType.long,
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
    final value = object.imageURL;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
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
  writer.writeLong(offsets[0], object.idAttack);
  writer.writeLong(offsets[1], object.idPoke);
  writer.writeString(offsets[2], object.imageURL);
  writer.writeLong(offsets[3], object.lifePoints);
  writer.writeString(offsets[4], object.name);
  writer.writeLong(offsets[5], object.numberPokemon);
  writer.writeLong(offsets[6], object.pokedexId);
  writer.writeLong(offsets[7], object.size);
  writer.writeLong(offsets[8], object.type);
  writer.writeLong(offsets[9], object.weight);
}

PokemonData _pokemonDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonData();
  object.id = id;
  object.idAttack = reader.readLongOrNull(offsets[0]);
  object.idPoke = reader.readLongOrNull(offsets[1]);
  object.imageURL = reader.readStringOrNull(offsets[2]);
  object.lifePoints = reader.readLongOrNull(offsets[3]);
  object.name = reader.readStringOrNull(offsets[4]);
  object.numberPokemon = reader.readLongOrNull(offsets[5]);
  object.pokedexId = reader.readLongOrNull(offsets[6]);
  object.size = reader.readLongOrNull(offsets[7]);
  object.type = reader.readLongOrNull(offsets[8]);
  object.weight = reader.readLongOrNull(offsets[9]);
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
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idAttackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idAttack',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idAttackIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idAttack',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idAttackEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idAttack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idAttackGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idAttack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idAttackLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idAttack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idAttackBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idAttack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idPokeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idPoke',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idPokeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idPoke',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idPokeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idPoke',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      idPokeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idPoke',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idPokeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idPoke',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> idPokeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idPoke',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageURL',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageURL',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> imageURLEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> imageURLBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> imageURLMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageURL',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      imageURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageURL',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      lifePointsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lifePoints',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      lifePointsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lifePoints',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      lifePointsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lifePoints',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      lifePointsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lifePoints',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      lifePointsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lifePoints',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      lifePointsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lifePoints',
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

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      numberPokemonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numberPokemon',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      numberPokemonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numberPokemon',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      numberPokemonEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberPokemon',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      numberPokemonGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberPokemon',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      numberPokemonLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberPokemon',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      numberPokemonBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberPokemon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      pokedexIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pokedexId',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      pokedexIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pokedexId',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      pokedexIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pokedexId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      pokedexIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pokedexId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      pokedexIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pokedexId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      pokedexIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pokedexId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> sizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      sizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> sizeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> sizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> sizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> sizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> typeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> typeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> typeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> typeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> weightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      weightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> weightEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition>
      weightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> weightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterFilterCondition> weightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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
  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByIdAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idAttack', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByIdAttackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idAttack', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByIdPoke() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPoke', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByIdPokeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPoke', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByImageURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageURL', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByImageURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageURL', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByLifePoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifePoints', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByLifePointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifePoints', Sort.desc);
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

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByNumberPokemon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberPokemon', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy>
      sortByNumberPokemonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberPokemon', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByPokedexId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokedexId', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByPokedexIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokedexId', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonDataQuerySortThenBy
    on QueryBuilder<PokemonData, PokemonData, QSortThenBy> {
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

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByIdAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idAttack', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByIdAttackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idAttack', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByIdPoke() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPoke', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByIdPokeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPoke', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByImageURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageURL', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByImageURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageURL', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByLifePoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifePoints', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByLifePointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifePoints', Sort.desc);
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

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByNumberPokemon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberPokemon', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy>
      thenByNumberPokemonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberPokemon', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByPokedexId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokedexId', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByPokedexIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokedexId', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QAfterSortBy> thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonDataQueryWhereDistinct
    on QueryBuilder<PokemonData, PokemonData, QDistinct> {
  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByIdAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idAttack');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByIdPoke() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idPoke');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByImageURL(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageURL', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByLifePoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lifePoints');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByNumberPokemon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberPokemon');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByPokedexId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pokedexId');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'size');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<PokemonData, PokemonData, QDistinct> distinctByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight');
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

  QueryBuilder<PokemonData, int?, QQueryOperations> idAttackProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idAttack');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> idPokeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idPoke');
    });
  }

  QueryBuilder<PokemonData, String?, QQueryOperations> imageURLProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageURL');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> lifePointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lifePoints');
    });
  }

  QueryBuilder<PokemonData, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> numberPokemonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberPokemon');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> pokedexIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pokedexId');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'size');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<PokemonData, int?, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}
