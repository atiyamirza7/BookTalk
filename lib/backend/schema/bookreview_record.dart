import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bookreview_record.g.dart';

abstract class BookreviewRecord
    implements Built<BookreviewRecord, BookreviewRecordBuilder> {
  static Serializer<BookreviewRecord> get serializer =>
      _$bookreviewRecordSerializer;

  String? get user;

  String? get booktitle;

  String? get author;

  @BuiltValueField(wireName: 'written_rating')
  String? get writtenRating;

  @BuiltValueField(wireName: 'star_rating')
  double? get starRating;

  String? get pfp;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BookreviewRecordBuilder builder) => builder
    ..user = ''
    ..booktitle = ''
    ..author = ''
    ..writtenRating = ''
    ..starRating = 0.0
    ..pfp = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookreview');

  static Stream<BookreviewRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BookreviewRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BookreviewRecord._();
  factory BookreviewRecord([void Function(BookreviewRecordBuilder) updates]) =
      _$BookreviewRecord;

  static BookreviewRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBookreviewRecordData({
  String? user,
  String? booktitle,
  String? author,
  String? writtenRating,
  double? starRating,
  String? pfp,
}) {
  final firestoreData = serializers.toFirestore(
    BookreviewRecord.serializer,
    BookreviewRecord(
      (b) => b
        ..user = user
        ..booktitle = booktitle
        ..author = author
        ..writtenRating = writtenRating
        ..starRating = starRating
        ..pfp = pfp,
    ),
  );

  return firestoreData;
}
