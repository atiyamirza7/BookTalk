import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'create_group_record.g.dart';

abstract class CreateGroupRecord
    implements Built<CreateGroupRecord, CreateGroupRecordBuilder> {
  static Serializer<CreateGroupRecord> get serializer =>
      _$createGroupRecordSerializer;

  @BuiltValueField(wireName: 'GroupName')
  String? get groupName;

  @BuiltValueField(wireName: 'UserID')
  String? get userID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CreateGroupRecordBuilder builder) => builder
    ..groupName = ''
    ..userID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CreateGroup');

  static Stream<CreateGroupRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CreateGroupRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CreateGroupRecord._();
  factory CreateGroupRecord([void Function(CreateGroupRecordBuilder) updates]) =
      _$CreateGroupRecord;

  static CreateGroupRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCreateGroupRecordData({
  String? groupName,
  String? userID,
}) {
  final firestoreData = serializers.toFirestore(
    CreateGroupRecord.serializer,
    CreateGroupRecord(
      (c) => c
        ..groupName = groupName
        ..userID = userID,
    ),
  );

  return firestoreData;
}
