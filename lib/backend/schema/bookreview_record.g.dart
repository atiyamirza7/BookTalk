// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookreview_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookreviewRecord> _$bookreviewRecordSerializer =
    new _$BookreviewRecordSerializer();

class _$BookreviewRecordSerializer
    implements StructuredSerializer<BookreviewRecord> {
  @override
  final Iterable<Type> types = const [BookreviewRecord, _$BookreviewRecord];
  @override
  final String wireName = 'BookreviewRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BookreviewRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.booktitle;
    if (value != null) {
      result
        ..add('booktitle')
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
    value = object.writtenRating;
    if (value != null) {
      result
        ..add('written_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.starRating;
    if (value != null) {
      result
        ..add('star_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pfp;
    if (value != null) {
      result
        ..add('pfp')
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
  BookreviewRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookreviewRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'booktitle':
          result.booktitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'written_rating':
          result.writtenRating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'star_rating':
          result.starRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'pfp':
          result.pfp = serializers.deserialize(value,
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

class _$BookreviewRecord extends BookreviewRecord {
  @override
  final String? user;
  @override
  final String? booktitle;
  @override
  final String? author;
  @override
  final String? writtenRating;
  @override
  final double? starRating;
  @override
  final String? pfp;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BookreviewRecord(
          [void Function(BookreviewRecordBuilder)? updates]) =>
      (new BookreviewRecordBuilder()..update(updates))._build();

  _$BookreviewRecord._(
      {this.user,
      this.booktitle,
      this.author,
      this.writtenRating,
      this.starRating,
      this.pfp,
      this.ffRef})
      : super._();

  @override
  BookreviewRecord rebuild(void Function(BookreviewRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookreviewRecordBuilder toBuilder() =>
      new BookreviewRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookreviewRecord &&
        user == other.user &&
        booktitle == other.booktitle &&
        author == other.author &&
        writtenRating == other.writtenRating &&
        starRating == other.starRating &&
        pfp == other.pfp &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, user.hashCode), booktitle.hashCode),
                        author.hashCode),
                    writtenRating.hashCode),
                starRating.hashCode),
            pfp.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookreviewRecord')
          ..add('user', user)
          ..add('booktitle', booktitle)
          ..add('author', author)
          ..add('writtenRating', writtenRating)
          ..add('starRating', starRating)
          ..add('pfp', pfp)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BookreviewRecordBuilder
    implements Builder<BookreviewRecord, BookreviewRecordBuilder> {
  _$BookreviewRecord? _$v;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _booktitle;
  String? get booktitle => _$this._booktitle;
  set booktitle(String? booktitle) => _$this._booktitle = booktitle;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _writtenRating;
  String? get writtenRating => _$this._writtenRating;
  set writtenRating(String? writtenRating) =>
      _$this._writtenRating = writtenRating;

  double? _starRating;
  double? get starRating => _$this._starRating;
  set starRating(double? starRating) => _$this._starRating = starRating;

  String? _pfp;
  String? get pfp => _$this._pfp;
  set pfp(String? pfp) => _$this._pfp = pfp;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BookreviewRecordBuilder() {
    BookreviewRecord._initializeBuilder(this);
  }

  BookreviewRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _booktitle = $v.booktitle;
      _author = $v.author;
      _writtenRating = $v.writtenRating;
      _starRating = $v.starRating;
      _pfp = $v.pfp;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookreviewRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookreviewRecord;
  }

  @override
  void update(void Function(BookreviewRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookreviewRecord build() => _build();

  _$BookreviewRecord _build() {
    final _$result = _$v ??
        new _$BookreviewRecord._(
            user: user,
            booktitle: booktitle,
            author: author,
            writtenRating: writtenRating,
            starRating: starRating,
            pfp: pfp,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
