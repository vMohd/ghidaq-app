import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FlowersDataRecord extends FirestoreRecord {
  FlowersDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "occasion" field.
  String? _occasion;
  String get occasion => _occasion ?? '';
  bool hasOccasion() => _occasion != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "is_wishlist" field.
  bool? _isWishlist;
  bool get isWishlist => _isWishlist ?? false;
  bool hasIsWishlist() => _isWishlist != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _occasion = snapshotData['occasion'] as String?;
    _details = snapshotData['details'] as String?;
    _type = snapshotData['type'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _isWishlist = snapshotData['is_wishlist'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flowers_data');

  static Stream<FlowersDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlowersDataRecord.fromSnapshot(s));

  static Future<FlowersDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlowersDataRecord.fromSnapshot(s));

  static FlowersDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlowersDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlowersDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlowersDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlowersDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlowersDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlowersDataRecordData({
  String? name,
  String? description,
  String? specifications,
  String? occasion,
  String? details,
  String? type,
  double? price,
  String? image,
  bool? isWishlist,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'occasion': occasion,
      'details': details,
      'type': type,
      'price': price,
      'image': image,
      'is_wishlist': isWishlist,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlowersDataRecordDocumentEquality implements Equality<FlowersDataRecord> {
  const FlowersDataRecordDocumentEquality();

  @override
  bool equals(FlowersDataRecord? e1, FlowersDataRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.occasion == e2?.occasion &&
        e1?.details == e2?.details &&
        e1?.type == e2?.type &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.isWishlist == e2?.isWishlist;
  }

  @override
  int hash(FlowersDataRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.occasion,
        e?.details,
        e?.type,
        e?.price,
        e?.image,
        e?.isWishlist
      ]);

  @override
  bool isValidKey(Object? o) => o is FlowersDataRecord;
}
