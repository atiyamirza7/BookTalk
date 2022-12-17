import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'completedbooks_record.g.dart';

abstract class CompletedbooksRecord
    implements Built<CompletedbooksRecord, CompletedbooksRecordBuilder> {
  static Serializer<CompletedbooksRecord> get serializer =>
      _$completedbooksRecordSerializer;

  String? get title;

  String? get author;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(CompletedbooksRecordBuilder builder) => builder
    ..title = ''
    ..author = ''
    ..image = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('completedbooks')
          : FirebaseFirestore.instance.collectionGroup('completedbooks');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('completedbooks').doc();

  static Stream<CompletedbooksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompletedbooksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompletedbooksRecord._();
  factory CompletedbooksRecord(
          [void Function(CompletedbooksRecordBuilder) updates]) =
      _$CompletedbooksRecord;

  static CompletedbooksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompletedbooksRecordData({
  String? title,
  String? author,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    CompletedbooksRecord.serializer,
    CompletedbooksRecord(
      (c) => c
        ..title = title
        ..author = author
        ..image = image,
    ),
  );

  return firestoreData;
}
