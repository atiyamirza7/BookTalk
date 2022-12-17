// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateGroupRecord> _$createGroupRecordSerializer =
    new _$CreateGroupRecordSerializer();

class _$CreateGroupRecordSerializer
    implements StructuredSerializer<CreateGroupRecord> {
  @override
  final Iterable<Type> types = const [CreateGroupRecord, _$CreateGroupRecord];
  @override
  final String wireName = 'CreateGroupRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CreateGroupRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.groupName;
    if (value != null) {
      result
        ..add('GroupName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userID;
    if (value != null) {
      result
        ..add('UserID')
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
  CreateGroupRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateGroupRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'GroupName':
          result.groupName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UserID':
          result.userID = serializers.deserialize(value,
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

class _$CreateGroupRecord extends CreateGroupRecord {
  @override
  final String? groupName;
  @override
  final String? userID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CreateGroupRecord(
          [void Function(CreateGroupRecordBuilder)? updates]) =>
      (new CreateGroupRecordBuilder()..update(updates))._build();

  _$CreateGroupRecord._({this.groupName, this.userID, this.ffRef}) : super._();

  @override
  CreateGroupRecord rebuild(void Function(CreateGroupRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGroupRecordBuilder toBuilder() =>
      new CreateGroupRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGroupRecord &&
        groupName == other.groupName &&
        userID == other.userID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, groupName.hashCode), userID.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateGroupRecord')
          ..add('groupName', groupName)
          ..add('userID', userID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CreateGroupRecordBuilder
    implements Builder<CreateGroupRecord, CreateGroupRecordBuilder> {
  _$CreateGroupRecord? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CreateGroupRecordBuilder() {
    CreateGroupRecord._initializeBuilder(this);
  }

  CreateGroupRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _userID = $v.userID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGroupRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGroupRecord;
  }

  @override
  void update(void Function(CreateGroupRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGroupRecord build() => _build();

  _$CreateGroupRecord _build() {
    final _$result = _$v ??
        new _$CreateGroupRecord._(
            groupName: groupName, userID: userID, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
