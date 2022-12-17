import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'completed_books_record.g.dart';

abstract class CompletedBooksRecord
    implements Built<CompletedBooksRecord, CompletedBooksRecordBuilder> {
  static Serializer<CompletedBooksRecord> get serializer =>
      _$completedBooksRecordSerializer;

  String? get title;

  String? get author;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompletedBooksRecordBuilder builder) => builder
    ..title = ''
    ..author = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('completedBooks');

  static Stream<CompletedBooksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompletedBooksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompletedBooksRecord._();
  factory CompletedBooksRecord(
          [void Function(CompletedBooksRecordBuilder) updates]) =
      _$CompletedBooksRecord;

  static CompletedBooksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompletedBooksRecordData({
  String? title,
  String? author,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    CompletedBooksRecord.serializer,
    CompletedBooksRecord(
      (c) => c
        ..title = title
        ..author = author
        ..image = image,
    ),
  );

  return firestoreData;
}
