// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVAssetMaterialsStruct extends FFFirebaseStruct {
  DtVAssetMaterialsStruct({
    int? id,
    int? assetId,
    int? materialId,
    String? code,
    String? description,
    String? brand,
    String? model,
    String? serial,
    String? localization,
    double? amount,
    bool? isOriginal,
    DateTime? dateIn,
    DateTime? dateOut,
    int? orderVisitAssetId,
    int? recorderIn,
    int? recorderOut,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _assetId = assetId,
        _materialId = materialId,
        _code = code,
        _description = description,
        _brand = brand,
        _model = model,
        _serial = serial,
        _localization = localization,
        _amount = amount,
        _isOriginal = isOriginal,
        _dateIn = dateIn,
        _dateOut = dateOut,
        _orderVisitAssetId = orderVisitAssetId,
        _recorderIn = recorderIn,
        _recorderOut = recorderOut,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "assetId" field.
  int? _assetId;
  int get assetId => _assetId ?? 0;
  set assetId(int? val) => _assetId = val;
  void incrementAssetId(int amount) => _assetId = assetId + amount;
  bool hasAssetId() => _assetId != null;

  // "materialId" field.
  int? _materialId;
  int get materialId => _materialId ?? 0;
  set materialId(int? val) => _materialId = val;
  void incrementMaterialId(int amount) => _materialId = materialId + amount;
  bool hasMaterialId() => _materialId != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;
  bool hasBrand() => _brand != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;
  bool hasModel() => _model != null;

  // "serial" field.
  String? _serial;
  String get serial => _serial ?? '';
  set serial(String? val) => _serial = val;
  bool hasSerial() => _serial != null;

  // "localization" field.
  String? _localization;
  String get localization => _localization ?? '';
  set localization(String? val) => _localization = val;
  bool hasLocalization() => _localization != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "isOriginal" field.
  bool? _isOriginal;
  bool get isOriginal => _isOriginal ?? false;
  set isOriginal(bool? val) => _isOriginal = val;
  bool hasIsOriginal() => _isOriginal != null;

  // "dateIn" field.
  DateTime? _dateIn;
  DateTime? get dateIn => _dateIn;
  set dateIn(DateTime? val) => _dateIn = val;
  bool hasDateIn() => _dateIn != null;

  // "dateOut" field.
  DateTime? _dateOut;
  DateTime? get dateOut => _dateOut;
  set dateOut(DateTime? val) => _dateOut = val;
  bool hasDateOut() => _dateOut != null;

  // "orderVisitAssetId" field.
  int? _orderVisitAssetId;
  int get orderVisitAssetId => _orderVisitAssetId ?? 0;
  set orderVisitAssetId(int? val) => _orderVisitAssetId = val;
  void incrementOrderVisitAssetId(int amount) =>
      _orderVisitAssetId = orderVisitAssetId + amount;
  bool hasOrderVisitAssetId() => _orderVisitAssetId != null;

  // "recorderIn" field.
  int? _recorderIn;
  int get recorderIn => _recorderIn ?? 0;
  set recorderIn(int? val) => _recorderIn = val;
  void incrementRecorderIn(int amount) => _recorderIn = recorderIn + amount;
  bool hasRecorderIn() => _recorderIn != null;

  // "recorderOut" field.
  int? _recorderOut;
  int get recorderOut => _recorderOut ?? 0;
  set recorderOut(int? val) => _recorderOut = val;
  void incrementRecorderOut(int amount) => _recorderOut = recorderOut + amount;
  bool hasRecorderOut() => _recorderOut != null;

  static DtVAssetMaterialsStruct fromMap(Map<String, dynamic> data) =>
      DtVAssetMaterialsStruct(
        id: castToType<int>(data['id']),
        assetId: castToType<int>(data['assetId']),
        materialId: castToType<int>(data['materialId']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        brand: data['brand'] as String?,
        model: data['model'] as String?,
        serial: data['serial'] as String?,
        localization: data['localization'] as String?,
        amount: castToType<double>(data['amount']),
        isOriginal: data['isOriginal'] as bool?,
        dateIn: data['dateIn'] as DateTime?,
        dateOut: data['dateOut'] as DateTime?,
        orderVisitAssetId: castToType<int>(data['orderVisitAssetId']),
        recorderIn: castToType<int>(data['recorderIn']),
        recorderOut: castToType<int>(data['recorderOut']),
      );

  static DtVAssetMaterialsStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVAssetMaterialsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'assetId': _assetId,
        'materialId': _materialId,
        'code': _code,
        'description': _description,
        'brand': _brand,
        'model': _model,
        'serial': _serial,
        'localization': _localization,
        'amount': _amount,
        'isOriginal': _isOriginal,
        'dateIn': _dateIn,
        'dateOut': _dateOut,
        'orderVisitAssetId': _orderVisitAssetId,
        'recorderIn': _recorderIn,
        'recorderOut': _recorderOut,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'assetId': serializeParam(
          _assetId,
          ParamType.int,
        ),
        'materialId': serializeParam(
          _materialId,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'serial': serializeParam(
          _serial,
          ParamType.String,
        ),
        'localization': serializeParam(
          _localization,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'isOriginal': serializeParam(
          _isOriginal,
          ParamType.bool,
        ),
        'dateIn': serializeParam(
          _dateIn,
          ParamType.DateTime,
        ),
        'dateOut': serializeParam(
          _dateOut,
          ParamType.DateTime,
        ),
        'orderVisitAssetId': serializeParam(
          _orderVisitAssetId,
          ParamType.int,
        ),
        'recorderIn': serializeParam(
          _recorderIn,
          ParamType.int,
        ),
        'recorderOut': serializeParam(
          _recorderOut,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtVAssetMaterialsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVAssetMaterialsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        assetId: deserializeParam(
          data['assetId'],
          ParamType.int,
          false,
        ),
        materialId: deserializeParam(
          data['materialId'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        serial: deserializeParam(
          data['serial'],
          ParamType.String,
          false,
        ),
        localization: deserializeParam(
          data['localization'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        isOriginal: deserializeParam(
          data['isOriginal'],
          ParamType.bool,
          false,
        ),
        dateIn: deserializeParam(
          data['dateIn'],
          ParamType.DateTime,
          false,
        ),
        dateOut: deserializeParam(
          data['dateOut'],
          ParamType.DateTime,
          false,
        ),
        orderVisitAssetId: deserializeParam(
          data['orderVisitAssetId'],
          ParamType.int,
          false,
        ),
        recorderIn: deserializeParam(
          data['recorderIn'],
          ParamType.int,
          false,
        ),
        recorderOut: deserializeParam(
          data['recorderOut'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtVAssetMaterialsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVAssetMaterialsStruct &&
        id == other.id &&
        assetId == other.assetId &&
        materialId == other.materialId &&
        code == other.code &&
        description == other.description &&
        brand == other.brand &&
        model == other.model &&
        serial == other.serial &&
        localization == other.localization &&
        amount == other.amount &&
        isOriginal == other.isOriginal &&
        dateIn == other.dateIn &&
        dateOut == other.dateOut &&
        orderVisitAssetId == other.orderVisitAssetId &&
        recorderIn == other.recorderIn &&
        recorderOut == other.recorderOut;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        assetId,
        materialId,
        code,
        description,
        brand,
        model,
        serial,
        localization,
        amount,
        isOriginal,
        dateIn,
        dateOut,
        orderVisitAssetId,
        recorderIn,
        recorderOut
      ]);
}

DtVAssetMaterialsStruct createDtVAssetMaterialsStruct({
  int? id,
  int? assetId,
  int? materialId,
  String? code,
  String? description,
  String? brand,
  String? model,
  String? serial,
  String? localization,
  double? amount,
  bool? isOriginal,
  DateTime? dateIn,
  DateTime? dateOut,
  int? orderVisitAssetId,
  int? recorderIn,
  int? recorderOut,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVAssetMaterialsStruct(
      id: id,
      assetId: assetId,
      materialId: materialId,
      code: code,
      description: description,
      brand: brand,
      model: model,
      serial: serial,
      localization: localization,
      amount: amount,
      isOriginal: isOriginal,
      dateIn: dateIn,
      dateOut: dateOut,
      orderVisitAssetId: orderVisitAssetId,
      recorderIn: recorderIn,
      recorderOut: recorderOut,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVAssetMaterialsStruct? updateDtVAssetMaterialsStruct(
  DtVAssetMaterialsStruct? dtVAssetMaterials, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVAssetMaterials
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVAssetMaterialsStructData(
  Map<String, dynamic> firestoreData,
  DtVAssetMaterialsStruct? dtVAssetMaterials,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVAssetMaterials == null) {
    return;
  }
  if (dtVAssetMaterials.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVAssetMaterials.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVAssetMaterialsData =
      getDtVAssetMaterialsFirestoreData(dtVAssetMaterials, forFieldValue);
  final nestedData =
      dtVAssetMaterialsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtVAssetMaterials.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVAssetMaterialsFirestoreData(
  DtVAssetMaterialsStruct? dtVAssetMaterials, [
  bool forFieldValue = false,
]) {
  if (dtVAssetMaterials == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVAssetMaterials.toMap());

  // Add any Firestore field values
  dtVAssetMaterials.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVAssetMaterialsListFirestoreData(
  List<DtVAssetMaterialsStruct>? dtVAssetMaterialss,
) =>
    dtVAssetMaterialss
        ?.map((e) => getDtVAssetMaterialsFirestoreData(e, true))
        .toList() ??
    [];
