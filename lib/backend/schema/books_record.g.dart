// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooksRecord> _$booksRecordSerializer = new _$BooksRecordSerializer();

class _$BooksRecordSerializer implements StructuredSerializer<BooksRecord> {
  @override
  final Iterable<Type> types = const [BooksRecord, _$BooksRecord];
  @override
  final String wireName = 'BooksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BooksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  BooksRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$BooksRecord extends BooksRecord {
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BooksRecord([void Function(BooksRecordBuilder)? updates]) =>
      (new BooksRecordBuilder()..update(updates))._build();

  _$BooksRecord._({this.title, this.author, this.image, this.ffRef})
      : super._();

  @override
  BooksRecord rebuild(void Function(BooksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksRecordBuilder toBuilder() => new BooksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooksRecord &&
        title == other.title &&
        author == other.author &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), author.hashCode), image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BooksRecord')
          ..add('title', title)
          ..add('author', author)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BooksRecordBuilder implements Builder<BooksRecord, BooksRecordBuilder> {
  _$BooksRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BooksRecordBuilder() {
    BooksRecord._initializeBuilder(this);
  }

  BooksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _author = $v.author;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BooksRecord;
  }

  @override
  void update(void Function(BooksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BooksRecord build() => _build();

  _$BooksRecord _build() {
    final _$result = _$v ??
        new _$BooksRecord._(
            title: title, author: author, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
