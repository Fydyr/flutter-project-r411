// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_image_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTypeImageDataCollection on Isar {
  IsarCollection<TypeImageData> get typeImageDatas => this.collection();
}

const TypeImageDataSchema = CollectionSchema(
  name: r'TypeImageData',
  id: 1319581108969484310,
  properties: {
    r'imageLinkAccess': PropertySchema(
      id: 0,
      name: r'imageLinkAccess',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'typeId': PropertySchema(
      id: 2,
      name: r'typeId',
      type: IsarType.long,
    )
  },
  estimateSize: _typeImageDataEstimateSize,
  serialize: _typeImageDataSerialize,
  deserialize: _typeImageDataDeserialize,
  deserializeProp: _typeImageDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _typeImageDataGetId,
  getLinks: _typeImageDataGetLinks,
  attach: _typeImageDataAttach,
  version: '3.1.0+1',
);

int _typeImageDataEstimateSize(
  TypeImageData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.imageLinkAccess;
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

void _typeImageDataSerialize(
  TypeImageData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.imageLinkAccess);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.typeId);
}

TypeImageData _typeImageDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TypeImageData();
  object.id = id;
  object.imageLinkAccess = reader.readStringOrNull(offsets[0]);
  object.name = reader.readStringOrNull(offsets[1]);
  object.typeId = reader.readLongOrNull(offsets[2]);
  return object;
}

P _typeImageDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _typeImageDataGetId(TypeImageData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _typeImageDataGetLinks(TypeImageData object) {
  return [];
}

void _typeImageDataAttach(
    IsarCollection<dynamic> col, Id id, TypeImageData object) {
  object.id = id;
}

extension TypeImageDataQueryWhereSort
    on QueryBuilder<TypeImageData, TypeImageData, QWhere> {
  QueryBuilder<TypeImageData, TypeImageData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TypeImageDataQueryWhere
    on QueryBuilder<TypeImageData, TypeImageData, QWhereClause> {
  QueryBuilder<TypeImageData, TypeImageData, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterWhereClause> idBetween(
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

extension TypeImageDataQueryFilter
    on QueryBuilder<TypeImageData, TypeImageData, QFilterCondition> {
  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageLinkAccess',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageLinkAccess',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageLinkAccess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageLinkAccess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageLinkAccess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageLinkAccess',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageLinkAccess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageLinkAccess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageLinkAccess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageLinkAccess',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageLinkAccess',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      imageLinkAccessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageLinkAccess',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      typeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'typeId',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      typeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'typeId',
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      typeIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeId',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      typeIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeId',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      typeIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeId',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterFilterCondition>
      typeIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TypeImageDataQueryObject
    on QueryBuilder<TypeImageData, TypeImageData, QFilterCondition> {}

extension TypeImageDataQueryLinks
    on QueryBuilder<TypeImageData, TypeImageData, QFilterCondition> {}

extension TypeImageDataQuerySortBy
    on QueryBuilder<TypeImageData, TypeImageData, QSortBy> {
  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy>
      sortByImageLinkAccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageLinkAccess', Sort.asc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy>
      sortByImageLinkAccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageLinkAccess', Sort.desc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> sortByTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeId', Sort.asc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> sortByTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeId', Sort.desc);
    });
  }
}

extension TypeImageDataQuerySortThenBy
    on QueryBuilder<TypeImageData, TypeImageData, QSortThenBy> {
  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy>
      thenByImageLinkAccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageLinkAccess', Sort.asc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy>
      thenByImageLinkAccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageLinkAccess', Sort.desc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> thenByTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeId', Sort.asc);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QAfterSortBy> thenByTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeId', Sort.desc);
    });
  }
}

extension TypeImageDataQueryWhereDistinct
    on QueryBuilder<TypeImageData, TypeImageData, QDistinct> {
  QueryBuilder<TypeImageData, TypeImageData, QDistinct>
      distinctByImageLinkAccess({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageLinkAccess',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TypeImageData, TypeImageData, QDistinct> distinctByTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeId');
    });
  }
}

extension TypeImageDataQueryProperty
    on QueryBuilder<TypeImageData, TypeImageData, QQueryProperty> {
  QueryBuilder<TypeImageData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TypeImageData, String?, QQueryOperations>
      imageLinkAccessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageLinkAccess');
    });
  }

  QueryBuilder<TypeImageData, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TypeImageData, int?, QQueryOperations> typeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeId');
    });
  }
}
