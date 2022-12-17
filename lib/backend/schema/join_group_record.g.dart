// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_group_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JoinGroupRecord> _$joinGroupRecordSerializer =
    new _$JoinGroupRecordSerializer();

class _$JoinGroupRecordSerializer
    implements StructuredSerializer<JoinGroupRecord> {
  @override
  final Iterable<Type> types = const [JoinGroupRecord, _$JoinGroupRecord];
  @override
  final String wireName = 'JoinGroupRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, JoinGroupRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.groupId;
    if (value != null) {
      result
        ..add('groupId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  JoinGroupRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JoinGroupRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$JoinGroupRecord extends JoinGroupRecord {
  @override
  final String? groupId;
  @override
  final String? userId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$JoinGroupRecord([void Function(JoinGroupRecordBuilder)? updates]) =>
      (new JoinGroupRecordBuilder()..update(updates))._build();

  _$JoinGroupRecord._({this.groupId, this.userId, this.ffRef}) : super._();

  @override
  JoinGroupRecord rebuild(void Function(JoinGroupRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JoinGroupRecordBuilder toBuilder() =>
      new JoinGroupRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JoinGroupRecord &&
        groupId == other.groupId &&
        userId == other.userId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, groupId.hashCode), userId.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JoinGroupRecord')
          ..add('groupId', groupId)
          ..add('userId', userId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class JoinGroupRecordBuilder
    implements Builder<JoinGroupRecord, JoinGroupRecordBuilder> {
  _$JoinGroupRecord? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  JoinGroupRecordBuilder() {
    JoinGroupRecord._initializeBuilder(this);
  }

  JoinGroupRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _userId = $v.userId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JoinGroupRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JoinGroupRecord;
  }

  @override
  void update(void Function(JoinGroupRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JoinGroupRecord build() => _build();

  _$JoinGroupRecord _build() {
    final _$result = _$v ??
        new _$JoinGroupRecord._(groupId: groupId, userId: userId, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
