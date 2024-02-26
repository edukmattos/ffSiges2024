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
    List<int>? systemsParents,
    List<int>? systems,
    List<int>? unitsTypesParent,
    List<int>? ordersTypes,
    List<int>? ordersTypesSubs,
    List<int>? ordersPriorities,
    List<int>? companies,
    List<int>? contracts,
    List<int>? ordersVisitsProcessing,
    List<int>? units,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dateIni = dateIni,
        _dateEnd = dateEnd,
        _systemsParents = systemsParents,
        _systems = systems,
        _unitsTypesParent = unitsTypesParent,
        _ordersTypes = ordersTypes,
        _ordersTypesSubs = ordersTypesSubs,
        _ordersPriorities = ordersPriorities,
        _companies = companies,
        _contracts = contracts,
        _ordersVisitsProcessing = ordersVisitsProcessing,
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

  // "systemsParents" field.
  List<int>? _systemsParents;
  List<int> get systemsParents => _systemsParents ?? const [];
  set systemsParents(List<int>? val) => _systemsParents = val;
  void updateSystemsParents(Function(List<int>) updateFn) =>
      updateFn(_systemsParents ??= []);
  bool hasSystemsParents() => _systemsParents != null;

  // "systems" field.
  List<int>? _systems;
  List<int> get systems => _systems ?? const [];
  set systems(List<int>? val) => _systems = val;
  void updateSystems(Function(List<int>) updateFn) => updateFn(_systems ??= []);
  bool hasSystems() => _systems != null;

  // "unitsTypesParent" field.
  List<int>? _unitsTypesParent;
  List<int> get unitsTypesParent => _unitsTypesParent ?? const [];
  set unitsTypesParent(List<int>? val) => _unitsTypesParent = val;
  void updateUnitsTypesParent(Function(List<int>) updateFn) =>
      updateFn(_unitsTypesParent ??= []);
  bool hasUnitsTypesParent() => _unitsTypesParent != null;

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

  // "ordersPriorities" field.
  List<int>? _ordersPriorities;
  List<int> get ordersPriorities => _ordersPriorities ?? const [];
  set ordersPriorities(List<int>? val) => _ordersPriorities = val;
  void updateOrdersPriorities(Function(List<int>) updateFn) =>
      updateFn(_ordersPriorities ??= []);
  bool hasOrdersPriorities() => _ordersPriorities != null;

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

  // "ordersVisitsProcessing" field.
  List<int>? _ordersVisitsProcessing;
  List<int> get ordersVisitsProcessing => _ordersVisitsProcessing ?? const [];
  set ordersVisitsProcessing(List<int>? val) => _ordersVisitsProcessing = val;
  void updateOrdersVisitsProcessing(Function(List<int>) updateFn) =>
      updateFn(_ordersVisitsProcessing ??= []);
  bool hasOrdersVisitsProcessing() => _ordersVisitsProcessing != null;

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
        systemsParents: getDataList(data['systemsParents']),
        systems: getDataList(data['systems']),
        unitsTypesParent: getDataList(data['unitsTypesParent']),
        ordersTypes: getDataList(data['ordersTypes']),
        ordersTypesSubs: getDataList(data['ordersTypesSubs']),
        ordersPriorities: getDataList(data['ordersPriorities']),
        companies: getDataList(data['companies']),
        contracts: getDataList(data['contracts']),
        ordersVisitsProcessing: getDataList(data['ordersVisitsProcessing']),
        units: getDataList(data['units']),
      );

  static DtFiltersServicesStruct? maybeFromMap(dynamic data) => data is Map
      ? DtFiltersServicesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dateIni': _dateIni,
        'dateEnd': _dateEnd,
        'systemsParents': _systemsParents,
        'systems': _systems,
        'unitsTypesParent': _unitsTypesParent,
        'ordersTypes': _ordersTypes,
        'ordersTypesSubs': _ordersTypesSubs,
        'ordersPriorities': _ordersPriorities,
        'companies': _companies,
        'contracts': _contracts,
        'ordersVisitsProcessing': _ordersVisitsProcessing,
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
        'systemsParents': serializeParam(
          _systemsParents,
          ParamType.int,
          true,
        ),
        'systems': serializeParam(
          _systems,
          ParamType.int,
          true,
        ),
        'unitsTypesParent': serializeParam(
          _unitsTypesParent,
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
        'ordersPriorities': serializeParam(
          _ordersPriorities,
          ParamType.int,
          true,
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
        'ordersVisitsProcessing': serializeParam(
          _ordersVisitsProcessing,
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
        systemsParents: deserializeParam<int>(
          data['systemsParents'],
          ParamType.int,
          true,
        ),
        systems: deserializeParam<int>(
          data['systems'],
          ParamType.int,
          true,
        ),
        unitsTypesParent: deserializeParam<int>(
          data['unitsTypesParent'],
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
        ordersPriorities: deserializeParam<int>(
          data['ordersPriorities'],
          ParamType.int,
          true,
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
        ordersVisitsProcessing: deserializeParam<int>(
          data['ordersVisitsProcessing'],
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
        listEquality.equals(systemsParents, other.systemsParents) &&
        listEquality.equals(systems, other.systems) &&
        listEquality.equals(unitsTypesParent, other.unitsTypesParent) &&
        listEquality.equals(ordersTypes, other.ordersTypes) &&
        listEquality.equals(ordersTypesSubs, other.ordersTypesSubs) &&
        listEquality.equals(ordersPriorities, other.ordersPriorities) &&
        listEquality.equals(companies, other.companies) &&
        listEquality.equals(contracts, other.contracts) &&
        listEquality.equals(
            ordersVisitsProcessing, other.ordersVisitsProcessing) &&
        listEquality.equals(units, other.units);
  }

  @override
  int get hashCode => const ListEquality().hash([
        dateIni,
        dateEnd,
        systemsParents,
        systems,
        unitsTypesParent,
        ordersTypes,
        ordersTypesSubs,
        ordersPriorities,
        companies,
        contracts,
        ordersVisitsProcessing,
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
