// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetMemoCollection on Isar {
  IsarCollection<Memo> get memos {
    return getCollection('Memo');
  }
}

final MemoSchema = CollectionSchema(
  name: 'Memo',
  schema:
      '{"name":"Memo","idName":"id","properties":[{"name":"body","type":"String"},{"name":"keywords","type":"StringList"},{"name":"keywordsString","type":"String"},{"name":"name","type":"String"},{"name":"purchaceStore","type":"String"},{"name":"score","type":"Long"},{"name":"tappedOn","type":"Long"}],"indexes":[],"links":[]}',
  nativeAdapter: const _MemoNativeAdapter(),
  webAdapter: const _MemoWebAdapter(),
  idName: 'id',
  propertyIds: {
    'body': 0,
    'keywords': 1,
    'keywordsString': 2,
    'name': 3,
    'purchaceStore': 4,
    'score': 5,
    'tappedOn': 6
  },
  listProperties: {'keywords'},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _MemoWebAdapter extends IsarWebTypeAdapter<Memo> {
  const _MemoWebAdapter();

  @override
  Object serialize(IsarCollection<Memo> collection, Memo object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'body', object.body);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'keywords', object.keywords);
    IsarNative.jsObjectSet(jsObj, 'keywordsString', object.keywordsString);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    IsarNative.jsObjectSet(jsObj, 'purchaceStore', object.purchaceStore);
    IsarNative.jsObjectSet(jsObj, 'score', object.score);
    IsarNative.jsObjectSet(
        jsObj, 'tappedOn', object.tappedOn?.toUtc().millisecondsSinceEpoch);
    return jsObj;
  }

  @override
  Memo deserialize(IsarCollection<Memo> collection, dynamic jsObj) {
    final object = Memo();
    object.body = IsarNative.jsObjectGet(jsObj, 'body');
    object.id = IsarNative.jsObjectGet(jsObj, 'id');
    object.keywords = (IsarNative.jsObjectGet(jsObj, 'keywords') as List?)
        ?.map((e) => e ?? '')
        .toList()
        .cast<String>();
    object.keywordsString = IsarNative.jsObjectGet(jsObj, 'keywordsString');
    object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
    object.purchaceStore = IsarNative.jsObjectGet(jsObj, 'purchaceStore');
    object.score = IsarNative.jsObjectGet(jsObj, 'score');
    object.tappedOn = IsarNative.jsObjectGet(jsObj, 'tappedOn') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'tappedOn'),
                isUtc: true)
            .toLocal()
        : null;
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'body':
        return (IsarNative.jsObjectGet(jsObj, 'body')) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'keywords':
        return ((IsarNative.jsObjectGet(jsObj, 'keywords') as List?)
            ?.map((e) => e ?? '')
            .toList()
            .cast<String>()) as P;
      case 'keywordsString':
        return (IsarNative.jsObjectGet(jsObj, 'keywordsString')) as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
      case 'purchaceStore':
        return (IsarNative.jsObjectGet(jsObj, 'purchaceStore')) as P;
      case 'score':
        return (IsarNative.jsObjectGet(jsObj, 'score')) as P;
      case 'tappedOn':
        return (IsarNative.jsObjectGet(jsObj, 'tappedOn') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'tappedOn'),
                    isUtc: true)
                .toLocal()
            : null) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Memo object) {}
}

class _MemoNativeAdapter extends IsarNativeTypeAdapter<Memo> {
  const _MemoNativeAdapter();

  @override
  void serialize(IsarCollection<Memo> collection, IsarRawObject rawObj,
      Memo object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.body;
    IsarUint8List? _body;
    if (value0 != null) {
      _body = IsarBinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += (_body?.length ?? 0) as int;
    final value1 = object.keywords;
    dynamicSize += (value1?.length ?? 0) * 8;
    List<IsarUint8List?>? bytesList1;
    if (value1 != null) {
      bytesList1 = [];
      for (var str in value1) {
        final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
        bytesList1.add(bytes);
        dynamicSize += bytes.length as int;
      }
    }
    final _keywords = bytesList1;
    final value2 = object.keywordsString;
    IsarUint8List? _keywordsString;
    if (value2 != null) {
      _keywordsString = IsarBinaryWriter.utf8Encoder.convert(value2);
    }
    dynamicSize += (_keywordsString?.length ?? 0) as int;
    final value3 = object.name;
    final _name = IsarBinaryWriter.utf8Encoder.convert(value3);
    dynamicSize += (_name.length) as int;
    final value4 = object.purchaceStore;
    IsarUint8List? _purchaceStore;
    if (value4 != null) {
      _purchaceStore = IsarBinaryWriter.utf8Encoder.convert(value4);
    }
    dynamicSize += (_purchaceStore?.length ?? 0) as int;
    final value5 = object.score;
    final _score = value5;
    final value6 = object.tappedOn;
    final _tappedOn = value6;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _body);
    writer.writeStringList(offsets[1], _keywords);
    writer.writeBytes(offsets[2], _keywordsString);
    writer.writeBytes(offsets[3], _name);
    writer.writeBytes(offsets[4], _purchaceStore);
    writer.writeLong(offsets[5], _score);
    writer.writeDateTime(offsets[6], _tappedOn);
  }

  @override
  Memo deserialize(IsarCollection<Memo> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Memo();
    object.body = reader.readStringOrNull(offsets[0]);
    object.id = id;
    object.keywords = reader.readStringList(offsets[1]);
    object.keywordsString = reader.readStringOrNull(offsets[2]);
    object.name = reader.readString(offsets[3]);
    object.purchaceStore = reader.readStringOrNull(offsets[4]);
    object.score = reader.readLongOrNull(offsets[5]);
    object.tappedOn = reader.readDateTimeOrNull(offsets[6]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readStringOrNull(offset)) as P;
      case 1:
        return (reader.readStringList(offset)) as P;
      case 2:
        return (reader.readStringOrNull(offset)) as P;
      case 3:
        return (reader.readString(offset)) as P;
      case 4:
        return (reader.readStringOrNull(offset)) as P;
      case 5:
        return (reader.readLongOrNull(offset)) as P;
      case 6:
        return (reader.readDateTimeOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Memo object) {}
}

extension MemoQueryWhereSort on QueryBuilder<Memo, Memo, QWhere> {
  QueryBuilder<Memo, Memo, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension MemoQueryWhere on QueryBuilder<Memo, Memo, QWhereClause> {
  QueryBuilder<Memo, Memo, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
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

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> idGreaterThan(
    int? value, {
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
    int? value, {
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
    int? lower,
    int? upper, {
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

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'keywords',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'keywords',
      value: null,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'keywords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'keywords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'keywords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'keywords',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'keywords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'keywords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'keywords',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Memo, Memo, QAfterFilterCondition> keywordsAnyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'keywords',
      value: pattern,
      caseSensitive: caseSensitive,
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

  QueryBuilder<Memo, Memo, QAfterFilterCondition> nameEqualTo(
    String value, {
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
    String value, {
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
    String value, {
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
    String lower,
    String upper, {
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
}

extension MemoQueryLinks on QueryBuilder<Memo, Memo, QFilterCondition> {}

extension MemoQueryWhereSortBy on QueryBuilder<Memo, Memo, QSortBy> {
  QueryBuilder<Memo, Memo, QAfterSortBy> sortByBody() {
    return addSortByInternal('body', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByBodyDesc() {
    return addSortByInternal('body', Sort.desc);
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

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
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

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByTappedOn() {
    return addSortByInternal('tappedOn', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> sortByTappedOnDesc() {
    return addSortByInternal('tappedOn', Sort.desc);
  }
}

extension MemoQueryWhereSortThenBy on QueryBuilder<Memo, Memo, QSortThenBy> {
  QueryBuilder<Memo, Memo, QAfterSortBy> thenByBody() {
    return addSortByInternal('body', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByBodyDesc() {
    return addSortByInternal('body', Sort.desc);
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

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
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

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByTappedOn() {
    return addSortByInternal('tappedOn', Sort.asc);
  }

  QueryBuilder<Memo, Memo, QAfterSortBy> thenByTappedOnDesc() {
    return addSortByInternal('tappedOn', Sort.desc);
  }
}

extension MemoQueryWhereDistinct on QueryBuilder<Memo, Memo, QDistinct> {
  QueryBuilder<Memo, Memo, QDistinct> distinctByBody(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('body', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByKeywordsString(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('keywordsString',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByPurchaceStore(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('purchaceStore', caseSensitive: caseSensitive);
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByScore() {
    return addDistinctByInternal('score');
  }

  QueryBuilder<Memo, Memo, QDistinct> distinctByTappedOn() {
    return addDistinctByInternal('tappedOn');
  }
}

extension MemoQueryProperty on QueryBuilder<Memo, Memo, QQueryProperty> {
  QueryBuilder<Memo, String?, QQueryOperations> bodyProperty() {
    return addPropertyNameInternal('body');
  }

  QueryBuilder<Memo, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Memo, List<String>?, QQueryOperations> keywordsProperty() {
    return addPropertyNameInternal('keywords');
  }

  QueryBuilder<Memo, String?, QQueryOperations> keywordsStringProperty() {
    return addPropertyNameInternal('keywordsString');
  }

  QueryBuilder<Memo, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Memo, String?, QQueryOperations> purchaceStoreProperty() {
    return addPropertyNameInternal('purchaceStore');
  }

  QueryBuilder<Memo, int?, QQueryOperations> scoreProperty() {
    return addPropertyNameInternal('score');
  }

  QueryBuilder<Memo, DateTime?, QQueryOperations> tappedOnProperty() {
    return addPropertyNameInternal('tappedOn');
  }
}
