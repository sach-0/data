import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PhotosPtRecord extends FirestoreRecord {
  PhotosPtRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('photos_pt');

  static Stream<PhotosPtRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhotosPtRecord.fromSnapshot(s));

  static Future<PhotosPtRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PhotosPtRecord.fromSnapshot(s));

  static PhotosPtRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PhotosPtRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhotosPtRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhotosPtRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhotosPtRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhotosPtRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhotosPtRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhotosPtRecordDocumentEquality implements Equality<PhotosPtRecord> {
  const PhotosPtRecordDocumentEquality();

  @override
  bool equals(PhotosPtRecord? e1, PhotosPtRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(PhotosPtRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is PhotosPtRecord;
}
