// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtFiltersServicesStruct extends FFFirebaseStruct {
  DtFiltersServicesStruct({
    DateTime? dateIni,
    DateTime? dateEnd,
    List<int>? companies,
    List<int>? contracts,
    List<int>? ordersTypes,
    List<int>? ordersTypesSubs,
    List<int>? units,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dateIni = dateIni,
        _dateEnd = dateEnd,
        _companies = companies,
        _contracts = contracts,
        _ordersTypes = ordersTypes,
        _ordersTypesSubs = ordersTypesSubs,
        _units = units,
        super(firestoreUtilData);

  // "dateIni" field.
  DateTime? _dateIni;
  DateTime? get dateIni => _dateIni;
  set dateIni(DateTime? val) => _dateIni = val;
  bool hasDateIni() => _dateIni != null;

  // "dateEnd" field.
  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  set dateEnd(DateTime? val) => _dateEnd = val;
  bool hasDateEnd() => _dateEnd != null;

  // "companies" field.
  List<int>? _companies;
  List<int> get companies => _companies ?? const [];
  set companies(List<int>? val) => _companies = val;
  void updateCompanies(Function(List<int>) updateFn) =>
      updateFn(_companies ??= []);
  bool hasCompanies() => _companies != null;

  // "contracts" field.
  List<int>? _contracts;
  List<int> get contracts => _contracts ?? const [];
  set contracts(List<int>? val) => _contracts = val;
  void updateContracts(Function(List<int>) updateFn) =>
      updateFn(_contracts ??= []);
  bool hasContracts() => _contracts != null;

  // "ordersTypes" field.
  List<int>? _ordersTypes;
  List<int> get ordersTypes => _ordersTypes ?? const [];
  set ordersTypes(List<int>? val) => _ordersTypes = val;
  void updateOrdersTypes(Function(List<int>) updateFn) =>
      updateFn(_ordersTypes ??= []);
  bool hasOrdersTypes() => _ordersTypes != null;

  // "ordersTypesSubs" field.
  List<int>? _ordersTypesSubs;
  List<int> get ordersTypesSubs => _ordersTypesSubs ?? const [];
  set ordersTypesSubs(List<int>? val) => _ordersTypesSubs = val;
  void updateOrdersTypesSubs(Function(List<int>) updateFn) =>
      updateFn(_ordersTypesSubs ??= []);
  bool hasOrdersTypesSubs() => _ordersTypesSubs != null;

  // "units" field.
  List<int>? _units;
  List<int> get units => _units ?? const [];
  set units(List<int>? val) => _units = val;
  void updateUnits(Function(List<int>) updateFn) => updateFn(_units ??= []);
  bool hasUnits() => _units != null;

  static DtFiltersServicesStruct fromMap(Map<String, dynamic> data) =>
      DtFiltersServicesStruct(
        dateIni: data['dateIni'] as DateTime?,
        dateEnd: data['dateEnd'] as DateTime?,
        companies: getDataList(data['companies']),
        contracts: getDataList(data['contracts']),
        ordersTypes: getDataList(data['ordersTypes']),
        ordersTypesSubs: getDataList(data['ordersTypesSubs']),
        units: getDataList(data['units']),
      );

  static DtFiltersServicesStruct? maybeFromMap(dynamic data) => data is Map
      ? DtFiltersServicesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dateIni': _dateIni,
        'dateEnd': _dateEnd,
        'companies': _companies,
        'contracts': _contracts,
        'ordersTypes': _ordersTypes,
        'ordersTypesSubs': _ordersTypesSubs,
        'units': _units,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dateIni': serializeParam(
          _dateIni,
          ParamType.DateTime,
        ),
        'dateEnd': serializeParam(
          _dateEnd,
          ParamType.DateTime,
        ),
        'companies': serializeParam(
          _companies,
          ParamType.int,
          true,
        ),
        'contracts': serializeParam(
          _contracts,
          ParamType.int,
          true,
        ),
        'ordersTypes': serializeParam(
          _ordersTypes,
          ParamType.int,
          true,
        ),
        'ordersTypesSubs': serializeParam(
          _ordersTypesSubs,
          ParamType.int,
          true,
        ),
        'units': serializeParam(
          _units,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static DtFiltersServicesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtFiltersServicesStruct(
        dateIni: deserializeParam(
          data['dateIni'],
          ParamType.DateTime,
          false,
        ),
        dateEnd: deserializeParam(
          data['dateEnd'],
          ParamType.DateTime,
          false,
        ),
        companies: deserializeParam<int>(
          data['companies'],
          ParamType.int,
          true,
        ),
        contracts: deserializeParam<int>(
          data['contracts'],
          ParamType.int,
          true,
        ),
        ordersTypes: deserializeParam<int>(
          data['ordersTypes'],
          ParamType.int,
          true,
        ),
        ordersTypesSubs: deserializeParam<int>(
          data['ordersTypesSubs'],
          ParamType.int,
          true,
        ),
        units: deserializeParam<int>(
          data['units'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'DtFiltersServicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DtFiltersServicesStruct &&
        dateIni == other.dateIni &&
        dateEnd == other.dateEnd &&
        listEquality.equals(companies, other.companies) &&
        listEquality.equals(contracts, other.contracts) &&
        listEquality.equals(ordersTypes, other.ordersTypes) &&
        listEquality.equals(ordersTypesSubs, other.ordersTypesSubs) &&
        listEquality.equals(units, other.units);
  }

  @override
  int get hashCode => const ListEquality().hash([
        dateIni,
        dateEnd,
        companies,
        contracts,
        ordersTypes,
        ordersTypesSubs,
        units
      ]);
}

DtFiltersServicesStruct createDtFiltersServicesStruct({
  DateTime? dateIni,
  DateTime? dateEnd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtFiltersServicesStruct(
      dateIni: dateIni,
      dateEnd: dateEnd,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtFiltersServicesStruct? updateDtFiltersServicesStruct(
  DtFiltersServicesStruct? dtFiltersServices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtFiltersServices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtFiltersServicesStructData(
  Map<String, dynamic> firestoreData,
  DtFiltersServicesStruct? dtFiltersServices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtFiltersServices == null) {
    return;
  }
  if (dtFiltersServices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtFiltersServices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtFiltersServicesData =
      getDtFiltersServicesFirestoreData(dtFiltersServices, forFieldValue);
  final nestedData =
      dtFiltersServicesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtFiltersServices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtFiltersServicesFirestoreData(
  DtFiltersServicesStruct? dtFiltersServices, [
  bool forFieldValue = false,
]) {
  if (dtFiltersServices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtFiltersServices.toMap());

  // Add any Firestore field values
  dtFiltersServices.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtFiltersServicesListFirestoreData(
  List<DtFiltersServicesStruct>? dtFiltersServicess,
) =>
    dtFiltersServicess
        ?.map((e) => getDtFiltersServicesFirestoreData(e, true))
        .toList() ??
    [];
