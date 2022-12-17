import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'futurereads_record.g.dart';

abstract class FuturereadsRecord
    implements Built<FuturereadsRecord, FuturereadsRecordBuilder> {
  static Serializer<FuturereadsRecord> get serializer =>
      _$futurereadsRecordSerializer;

  String? get title;

  String? get author;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(FuturereadsRecordBuilder builder) => builder
    ..title = ''
    ..author = ''
    ..image = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('futurereads')
          : FirebaseFirestore.instance.collectionGroup('futurereads');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('futurereads').doc();

  static Stream<FuturereadsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FuturereadsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FuturereadsRecord._();
  factory FuturereadsRecord([void Function(FuturereadsRecordBuilder) updates]) =
      _$FuturereadsRecord;

  static FuturereadsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFuturereadsRecordData({
  String? title,
  String? author,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    FuturereadsRecord.serializer,
    FuturereadsRecord(
      (f) => f
        ..title = title
        ..author = author
        ..image = image,
    ),
  );

  return firestoreData;
}
