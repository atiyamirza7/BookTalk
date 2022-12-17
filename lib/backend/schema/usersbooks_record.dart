import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usersbooks_record.g.dart';

abstract class UsersbooksRecord
    implements Built<UsersbooksRecord, UsersbooksRecordBuilder> {
  static Serializer<UsersbooksRecord> get serializer =>
      _$usersbooksRecordSerializer;

  String? get title;

  String? get author;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UsersbooksRecordBuilder builder) => builder
    ..title = ''
    ..author = ''
    ..image = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('usersbooks')
          : FirebaseFirestore.instance.collectionGroup('usersbooks');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('usersbooks').doc();

  static Stream<UsersbooksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersbooksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersbooksRecord._();
  factory UsersbooksRecord([void Function(UsersbooksRecordBuilder) updates]) =
      _$UsersbooksRecord;

  static UsersbooksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersbooksRecordData({
  String? title,
  String? author,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    UsersbooksRecord.serializer,
    UsersbooksRecord(
      (u) => u
        ..title = title
        ..author = author
        ..image = image,
    ),
  );

  return firestoreData;
}
