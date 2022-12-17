import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'book_record.g.dart';

abstract class BookRecord implements Built<BookRecord, BookRecordBuilder> {
  static Serializer<BookRecord> get serializer => _$bookRecordSerializer;

  String? get title;

  String? get author;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BookRecordBuilder builder) => builder
    ..title = ''
    ..author = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('book');

  static Stream<BookRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BookRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BookRecord._();
  factory BookRecord([void Function(BookRecordBuilder) updates]) = _$BookRecord;

  static BookRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBookRecordData({
  String? title,
  String? author,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    BookRecord.serializer,
    BookRecord(
      (b) => b
        ..title = title
        ..author = author
        ..image = image,
    ),
  );

  return firestoreData;
}
