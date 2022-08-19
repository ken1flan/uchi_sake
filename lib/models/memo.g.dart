// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetMemoCollection on Isar {
  IsarCollection<Memo> get memos => getCollection();
}

const MemoSchema = CollectionSchema(
  name: 'Memo',
  schema:
      '{"name":"Memo","idName":"id","properties":[{"name":"body","type":"String"},{"name":"createdAt","type":"Long"},{"name":"keywordsString","type":"String"},{"name":"labelImage","type":"String"},{"name":"name","type":"String"},{"name":"otherImage","type":"String"},{"name":"purchaceStore","type":"String"},{"name":"score","type":"Long"},{"name":"specImage","type":"String"},{"name":"tappedOn","type":"Long"},{"name":"updatedAt","type":"Long"}],"indexes":[{"name":"tappedOn","unique":false,"properties":[{"name":"tappedOn","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'body': 0,
    'createdAt': 1,
    'keywordsString': 2,
    'labelImage': 3,
    'name': 4,
    'otherImage': 5,
    'purchaceStore': 6,
    'score': 7,
    'specImage': 8,
    'tappedOn': 9,
    'updatedAt': 10
  },
  listProperties: {},
  indexIds: {'tappedOn': 0},
  indexValueTypes: {
    'tappedOn': [
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _memoGetId,
  setId: _memoSetId,
  getLinks: _memoGetLinks,
  attachLinks: _memoAttachLinks,
  serializeNative: _memoSerializeNative,
  deserializeNative: _memoDeserializeNative,
  deserializePropNative: _memoDeserializePropNative,
  serializeWeb: _memoSerializeWeb,
  deserializeWeb: _memoDeserializeWeb,
  deserializePropWeb: _memoDeserializePropWeb,
  version: 3,
);

int? _memoGetId(Memo object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _memoSetId(Memo object, int id) {
  object.id = id;
}

List<IsarLinkBase> _memoGetLinks(Memo object) {
  return [];
}

const _memoFileConverter = FileConverter();

void _memoSerializeNative(IsarCollection<Memo> collection, IsarRawObject rawObj,
    Memo object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.body;
  IsarUint8List? _body;
  if (value0 != null) {
    _body = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_body?.length ?? 0) as int;
  final value1 = object.createdAt;
  final _createdAt = value1;
  final value2 = object.keywordsString;
  IsarUint8List? _keywordsString;
  if (value2 != null) {
    _keywordsString = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_keywordsString?.length ?? 0) as int;
  final value3 = _memoFileConverter.toIsar(object.labelImage);
  IsarUint8List? _labelImage;
  if (value3 != null) {
    _labelImage = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_labelImage?.length ?? 0) as int;
  final value4 = object.name;
  IsarUint8List? _name;
  if (value4 != null) {
    _name = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_name?.length ?? 0) as int;
  final value5 = _memoFileConverter.toIsar(object.otherImage);
  IsarUint8List? _otherImage;
  if (value5 != null) {
    _otherImage = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_otherImage?.length ?? 0) as int;
  final value6 = object.purchaceStore;
  IsarUint8List? _purchaceStore;
  if (value6 != null) {
    _purchaceStore = IsarBinaryWriter.utf8Encoder.convert(value6);
  }
  dynamicSize += (_purchaceStore?.length ?? 0) as int;
  final value7 = object.score;
  final _score = value7;
  final value8 = _memoFileConverter.toIsar(object.specImage);
  IsarUint8List? _specImage;
  if (value8 != null) {
    _specImage = IsarBinaryWriter.utf8Encoder.convert(value8);
  }
  dynamicSize += (_specImage?.length ?? 0) as int;
  final value9 = object.tappedOn;
  final _tappedOn = value9;
  final value10 = object.updatedAt;
  final _updatedAt = value10;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _body);
  writer.writeDateTime(offsets[1], _createdAt);
  writer.writeBytes(offsets[2], _keywordsString);
  writer.writeBytes(offsets[3], _labelImage);
  writer.writeBytes(offsets[4], _name);
  writer.writeBytes(offsets[5], _otherImage);
  writer.writeBytes(offsets[6], _purchaceStore);
  writer.writeLong(offsets[7], _score);
  writer.writeBytes(offsets[8], _specImage);
  writer.writeDateTime(offsets[9], _tappedOn);
  writer.writeDateTime(offsets[10], _updatedAt);
}

Memo _memoDeserializeNative(IsarCollection<Memo> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Memo();
  object.body = reader.readStringOrNull(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.id = id;
  object.keywordsString = reader.readStringOrNull(offsets[2]);
  object.labelImage =
      _memoFileConverter.fromIsar(reader.readStringOrNull(offsets[3]));
  object.name = reader.readStringOrNull(offsets[4]);
  object.otherImage =
      _memoFileConverter.fromIsar(reader.readStringOrNull(offsets[5]));
  object.purchaceStore = reader.readStringOrNull(offsets[6]);
  object.score = reader.readLongOrNull(offsets[7]);
  object.specImage =
      _memoFileConverter.fromIsar(reader.readStringOrNull(offsets[8]));
  object.tappedOn = reader.readDateTimeOrNull(offsets[9]);
  object.updatedAt = reader.readDateTime(offsets[10]);
  return object;
}

P _memoDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (_memoFileConverter.fromIsar(reader.readStringOrNull(offset)))
          as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (_memoFileConverter.fromIsar(reader.readStringOrNull(offset)))
          as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (_memoFileConverter.fromIsar(reader.readStringOrNull(offset)))
          as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _memoSerializeWeb(IsarCollection<Memo> collection, Memo object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'body', object.body);
  IsarNative.jsObjectSet(
      jsObj, 'createdAt', object.createdAt.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'keywordsString', object.keywordsString);
  IsarNative.jsObjectSet(
      jsObj, 'labelImage', _memoFileConverter.toIsar(object.labelImage));
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(
      jsObj, 'otherImage', _memoFileConverter.toIsar(object.otherImage));
  IsarNative.jsObjectSet(jsObj, 'purchaceStore', object.purchaceStore);
  IsarNative.jsObjectSet(jsObj, 'score', object.score);
  IsarNative.jsObjectSet(
      jsObj, 'specImage', _memoFileConverter.toIsar(object.specImage));
  IsarNative.jsObjectSet(
      jsObj, 'tappedOn', object.tappedOn?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(
      jsObj, 'updatedAt', object.updatedAt.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

Memo _memoDeserializeWeb(IsarCollection<Memo> collection, dynamic jsObj) {
  final object = Memo();
  object.body = IsarNative.jsObjectGet(jsObj, 'body');
  object.createdAt = IsarNative.jsObjectGet(jsObj, 'createdAt') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'createdAt'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.keywordsString = IsarNative.jsObjectGet(jsObj, 'keywordsString');
  object.labelImage =
      _memoFileConverter.fromIsar(IsarNative.jsObjectGet(jsObj, 'labelImage'));
  object.name = IsarNative.jsObjectGet(jsObj, 'name');
  object.otherImage =
      _memoFileConverter.fromIsar(IsarNative.jsObjectGet(jsObj, 'otherImage'));
  object.purchaceStore = IsarNative.jsObjectGet(jsObj, 'purchaceStore');
  object.score = IsarNative.jsObjectGet(jsObj, 'score');
  object.specImage =
      _memoFileConverter.fromIsar(IsarNative.jsObjectGet(jsObj, 'specImage'));
  object.tappedOn = IsarNative.jsObjectGet(jsObj, 'tappedOn') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'tappedOn'),
              isUtc: true)
          .toLocal()
      : null;
  object.updatedAt = IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'updatedAt'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  return object;
}

P _memoDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'body':
      return (IsarNative.jsObjectGet(jsObj, 'body')) as P;
    case 'createdAt':
      return (IsarNative.jsObjectGet(jsObj, 'createdAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createdAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'keywordsString':
      return (IsarNative.jsObjectGet(jsObj, 'keywordsString')) as P;
    case 'labelImage':
      return (_memoFileConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'labelImage'))) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name')) as P;
    case 'otherImage':
      return (_memoFileConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'otherImage'))) as P;
    case 'purchaceStore':
      return (IsarNative.jsObjectGet(jsObj, 'purchaceStore')) as P;
    case 'score':
      return (IsarNative.jsObjectGet(jsObj, 'score')) as P;
    case 'specImage':
      return (_memoFileConverter
          .fromIsar(IsarNative.jsObjectGet(jsObj, 'specImage'))) as P;
    case 'tappedOn':
      return (IsarNative.jsObjectGet(jsObj, 'tappedOn') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'tappedOn'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'updatedAt':
      return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _memoAttachLinks(IsarCollection col, int id, Memo object) {}

extension MemoQueryWhereSort on QueryBuilder<Memo, Memo, QWhere> {
  QueryBuilder<Memo, Memo, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Memo, Memo, QAfterWhere> anyTappedOn() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'tappedOn'));
  }
}

extension MemoQueryWhere on QueryBuilder<Memo, Memo, QWhereClause> {
  QueryBuilder<Memo, Memo, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> tappedOnEqualTo(
      DateTime? tappedOn) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'tappedOn',
      value: [tappedOn],
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> tappedOnNotEqualTo(
      DateTime? tappedOn) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'tappedOn',
        upper: [tappedOn],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'tappedOn',
        lower: [tappedOn],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'tappedOn',
        lower: [tappedOn],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'tappedOn',
        upper: [tappedOn],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> tappedOnIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'tappedOn',
      value: [null],
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> tappedOnIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'tappedOn',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> tappedOnGreaterThan(
    DateTime? tappedOn, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'tappedOn',
      lower: [tappedOn],
      includeLower: include,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> tappedOnLessThan(
    DateTime? tappedOn, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'tappedOn',
      upper: [tappedOn],
      includeUpper: include,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> tappedOnBetween(
    DateTime? lowerTappedOn,
    DateTime? upperTappedOn, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'tappedOn',
      lower: [lowerTappedOn],
      includeLower: includeLower,
      upper: [upperTappedOn],
      includeUpper: includeUpper,
    ));
  }
}

extension MemoQueryFilter on QueryBuilder<Memo, Memo, QFilterCondition> {
  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'body',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'body',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'body',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> bodyMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'body',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'keywordsString',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'keywordsString',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'keywordsString',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'keywordsString',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'keywordsString',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'keywordsString',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'keywordsString',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'keywordsString',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsStringMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'keywordsString',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'labelImage',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageEqualTo(
    File? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'labelImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageGreaterThan(
    File? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'labelImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageLessThan(
    File? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'labelImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageBetween(
    File? lower,
    File? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'labelImage',
      lower: _memoFileConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _memoFileConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageStartsWith(
    File value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'labelImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageEndsWith(
    File value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'labelImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageContains(File value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'labelImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> labelImageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'labelImage',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'otherImage',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageEqualTo(
    File? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'otherImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageGreaterThan(
    File? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'otherImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageLessThan(
    File? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'otherImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageBetween(
    File? lower,
    File? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'otherImage',
      lower: _memoFileConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _memoFileConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageStartsWith(
    File value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'otherImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageEndsWith(
    File value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'otherImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageContains(File value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'otherImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> otherImageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'otherImage',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'purchaceStore',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'purchaceStore',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'purchaceStore',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'purchaceStore',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'purchaceStore',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'purchaceStore',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'purchaceStore',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'purchaceStore',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> purchaceStoreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'purchaceStore',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> scoreIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'score',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> scoreEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'score',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> scoreGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'score',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> scoreLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'score',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> scoreBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'score',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'specImage',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageEqualTo(
    File? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'specImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageGreaterThan(
    File? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'specImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageLessThan(
    File? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'specImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageBetween(
    File? lower,
    File? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'specImage',
      lower: _memoFileConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _memoFileConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageStartsWith(
    File value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'specImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageEndsWith(
    File value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'specImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageContains(File value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'specImage',
      value: _memoFileConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> specImageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'specImage',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> tappedOnIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'tappedOn',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> tappedOnEqualTo(
      DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'tappedOn',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> tappedOnGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'tappedOn',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> tappedOnLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'tappedOn',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> tappedOnBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tappedOn',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension MemoQueryLinks on QueryBuilder<Memo, Memo, QFilterCondition> {}

extension MemoQueryWhereSortBy on QueryBuilder<Memo, Memo, QSortBy> {
  QueryBuilder<Memo, Memo, QAfterSortBy> sortByBody() {
    return addSortByInternal('body', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByBodyDesc() {
    return addSortByInternal('body', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByKeywordsString() {
    return addSortByInternal('keywordsString', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByKeywordsStringDesc() {
    return addSortByInternal('keywordsString', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByLabelImage() {
    return addSortByInternal('labelImage', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByLabelImageDesc() {
    return addSortByInternal('labelImage', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByOtherImage() {
    return addSortByInternal('otherImage', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByOtherImageDesc() {
    return addSortByInternal('otherImage', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByPurchaceStore() {
    return addSortByInternal('purchaceStore', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByPurchaceStoreDesc() {
    return addSortByInternal('purchaceStore', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByScore() {
    return addSortByInternal('score', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByScoreDesc() {
    return addSortByInternal('score', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortBySpecImage() {
    return addSortByInternal('specImage', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortBySpecImageDesc() {
    return addSortByInternal('specImage', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByTappedOn() {
    return addSortByInternal('tappedOn', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByTappedOnDesc() {
    return addSortByInternal('tappedOn', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension MemoQueryWhereSortThenBy on QueryBuilder<Memo, Memo, QSortThenBy> {
  QueryBuilder<Memo, Memo, QAfterSortBy> thenByBody() {
    return addSortByInternal('body', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByBodyDesc() {
    return addSortByInternal('body', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByKeywordsString() {
    return addSortByInternal('keywordsString', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByKeywordsStringDesc() {
    return addSortByInternal('keywordsString', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByLabelImage() {
    return addSortByInternal('labelImage', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByLabelImageDesc() {
    return addSortByInternal('labelImage', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByOtherImage() {
    return addSortByInternal('otherImage', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByOtherImageDesc() {
    return addSortByInternal('otherImage', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByPurchaceStore() {
    return addSortByInternal('purchaceStore', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByPurchaceStoreDesc() {
    return addSortByInternal('purchaceStore', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByScore() {
    return addSortByInternal('score', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByScoreDesc() {
    return addSortByInternal('score', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenBySpecImage() {
    return addSortByInternal('specImage', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenBySpecImageDesc() {
    return addSortByInternal('specImage', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByTappedOn() {
    return addSortByInternal('tappedOn', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByTappedOnDesc() {
    return addSortByInternal('tappedOn', Sort.desc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension MemoQueryWhereDistinct on QueryBuilder<Memo, Memo, QDistinct> {
  QueryBuilder<Memo, Memo, QDistinct> distinctByBody(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('body', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByCreatedAt() {
    return addDistinctByInternal('createdAt');
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByKeywordsString(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('keywordsString',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByLabelImage(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('labelImage', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByOtherImage(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('otherImage', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByPurchaceStore(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('purchaceStore', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByScore() {
    return addDistinctByInternal('score');
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctBySpecImage(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('specImage', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByTappedOn() {
    return addDistinctByInternal('tappedOn');
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }
}

extension MemoQueryProperty on QueryBuilder<Memo, Memo, QQueryProperty> {
  QueryBuilder<Memo, String?, QQueryOperations> bodyProperty() {
    return addPropertyNameInternal('body');
  }

  QueryBuilder<Memo, DateTime, QQueryOperations> createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<Memo, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Memo, String?, QQueryOperations> keywordsStringProperty() {
    return addPropertyNameInternal('keywordsString');
  }

  QueryBuilder<Memo, File?, QQueryOperations> labelImageProperty() {
    return addPropertyNameInternal('labelImage');
  }

  QueryBuilder<Memo, String?, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Memo, File?, QQueryOperations> otherImageProperty() {
    return addPropertyNameInternal('otherImage');
  }

  QueryBuilder<Memo, String?, QQueryOperations> purchaceStoreProperty() {
    return addPropertyNameInternal('purchaceStore');
  }

  QueryBuilder<Memo, int?, QQueryOperations> scoreProperty() {
    return addPropertyNameInternal('score');
  }

  QueryBuilder<Memo, File?, QQueryOperations> specImageProperty() {
    return addPropertyNameInternal('specImage');
  }

  QueryBuilder<Memo, DateTime?, QQueryOperations> tappedOnProperty() {
    return addPropertyNameInternal('tappedOn');
  }

  QueryBuilder<Memo, DateTime, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }
}
