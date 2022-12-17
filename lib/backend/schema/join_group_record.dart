import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'join_group_record.g.dart';

abstract class JoinGroupRecord
    implements Built<JoinGroupRecord, JoinGroupRecordBuilder> {
  static Serializer<JoinGroupRecord> get serializer =>
      _$joinGroupRecordSerializer;

  String? get groupId;

  String? get userId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(JoinGroupRecordBuilder builder) => builder
    ..groupId = ''
    ..userId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('JoinGroup');

  static Stream<JoinGroupRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<JoinGroupRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  JoinGroupRecord._();
  factory JoinGroupRecord([void Function(JoinGroupRecordBuilder) updates]) =
      _$JoinGroupRecord;

  static JoinGroupRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createJoinGroupRecordData({
  String? groupId,
  String? userId,
}) {
  final firestoreData = serializers.toFirestore(
    JoinGroupRecord.serializer,
    JoinGroupRecord(
      (j) => j
        ..groupId = groupId
        ..userId = userId,
    ),
  );

  return firestoreData;
}
