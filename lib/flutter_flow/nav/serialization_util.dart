import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/backend.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

const _kDocIdDelimeter = '|';
String _serializeDocumentReference(DocumentReference ref) {
  final docIds = <String>[];
  DocumentReference? currentRef = ref;
  while (currentRef != null) {
    docIds.add(currentRef.id);
    // Get the parent document (catching any errors that arise).
    currentRef = safeGet<DocumentReference?>(() => currentRef?.parent.parent);
  }
  // Reverse the list to get the correct ordering.
  return docIds.reversed.join(_kDocIdDelimeter);
}

String? serializeParam(
  dynamic param,
  ParamType paramType, [
  bool isList = false,
]) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    switch (paramType) {
      case ParamType.int:
        return param.toString();
      case ParamType.double:
        return param.toString();
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param ? 'true' : 'false';
      case ParamType.DateTime:
        return (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        return dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        return (param as LatLng).serialize();
      case ParamType.Color:
        return (param as Color).toCssString();
      case ParamType.FFPlace:
        return placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        return uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        return json.encode(param);
      case ParamType.DocumentReference:
        return _serializeDocumentReference(param as DocumentReference);
      case ParamType.Document:
        final reference = (param as FirestoreRecord).reference;
        return _serializeDocumentReference(reference);

      case ParamType.DataStruct:
        return param is BaseStruct ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        return null;
    }
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

DocumentReference _deserializeDocumentReference(
  String refStr,
  List<String> collectionNamePath,
) {
  var path = '';
  final docIds = refStr.split(_kDocIdDelimeter);
  for (int i = 0; i < docIds.length && i < collectionNamePath.length; i++) {
    path += '/${collectionNamePath[i]}/${docIds[i]}';
  }
  return FirebaseFirestore.instance.doc(path);
}

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,
  Document,
  DocumentReference,
  DataStruct,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  List<String>? collectionNamePath,
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                collectionNamePath: collectionNamePath,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);
      case ParamType.DocumentReference:
        return _deserializeDocumentReference(param, collectionNamePath ?? []);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case UnitsTypesRow:
            return UnitsTypesRow(data);
          case VOrdersCountByTeamsStatusesRow:
            return VOrdersCountByTeamsStatusesRow(data);
          case AppRow:
            return AppRow(data);
          case VOrdersFollowersRow:
            return VOrdersFollowersRow(data);
          case VDashUserOrdersStatus5Row:
            return VDashUserOrdersStatus5Row(data);
          case LogsRow:
            return LogsRow(data);
          case VOrdersVisitsSearchFiltersRow:
            return VOrdersVisitsSearchFiltersRow(data);
          case OrdersVisitsProcessingRow:
            return OrdersVisitsProcessingRow(data);
          case OrdersTypesSubsRow:
            return OrdersTypesSubsRow(data);
          case VAssetsStatusesRow:
            return VAssetsStatusesRow(data);
          case VOrdersVisitsRow:
            return VOrdersVisitsRow(data);
          case VOrdersUnscheduleRow:
            return VOrdersUnscheduleRow(data);
          case AssetsTagsRow:
            return AssetsTagsRow(data);
          case VDashAdminOrdersParentFiltersOpenRow:
            return VDashAdminOrdersParentFiltersOpenRow(data);
          case VOrdersCountByTeamLeadersStatus4Row:
            return VOrdersCountByTeamLeadersStatus4Row(data);
          case VProfilesPermissionsRow:
            return VProfilesPermissionsRow(data);
          case VOrdersOpenStatus6Row:
            return VOrdersOpenStatus6Row(data);
          case UsersStatusesRow:
            return UsersStatusesRow(data);
          case VUnitsTypesRow:
            return VUnitsTypesRow(data);
          case VOrdersTypesActivitiesRow:
            return VOrdersTypesActivitiesRow(data);
          case VOrdersOpenStatus3Row:
            return VOrdersOpenStatus3Row(data);
          case CompaniesRow:
            return CompaniesRow(data);
          case OrdersVisitsAssetsRow:
            return OrdersVisitsAssetsRow(data);
          case UsersNotificationsRow:
            return UsersNotificationsRow(data);
          case OrdersFollowersRow:
            return OrdersFollowersRow(data);
          case VDashUserOrdersStatus3Row:
            return VDashUserOrdersStatus3Row(data);
          case OrdersVisitsServicesRow:
            return OrdersVisitsServicesRow(data);
          case VOrdersCountByUnitsAssetsTagsRow:
            return VOrdersCountByUnitsAssetsTagsRow(data);
          case VOrdersParentOpenRow:
            return VOrdersParentOpenRow(data);
          case UsersMaterialsRow:
            return UsersMaterialsRow(data);
          case VOrdersVisitsServicesRow:
            return VOrdersVisitsServicesRow(data);
          case VDashUserOrdersStatus6Row:
            return VDashUserOrdersStatus6Row(data);
          case VOrdersOpenRow:
            return VOrdersOpenRow(data);
          case VOrdersCountByUnitsParentsStatusesRow:
            return VOrdersCountByUnitsParentsStatusesRow(data);
          case VAssetsMaterialsRow:
            return VAssetsMaterialsRow(data);
          case VAssetsTagsRow:
            return VAssetsTagsRow(data);
          case VOrdersCountByUnitsStatusesRow:
            return VOrdersCountByUnitsStatusesRow(data);
          case VOrdersCountByTeamLeadersStatus6Row:
            return VOrdersCountByTeamLeadersStatus6Row(data);
          case VOrdersVisitsOpenRow:
            return VOrdersVisitsOpenRow(data);
          case VOrdersVisitsCountByTeamleaderProcessingRow:
            return VOrdersVisitsCountByTeamleaderProcessingRow(data);
          case AssetsMaterialsRow:
            return AssetsMaterialsRow(data);
          case OrdersVisitsStatusesRow:
            return OrdersVisitsStatusesRow(data);
          case ProfilesPermissionsRow:
            return ProfilesPermissionsRow(data);
          case OrdersPrioritiesRow:
            return OrdersPrioritiesRow(data);
          case AssetsRow:
            return AssetsRow(data);
          case OrdersStatusessRow:
            return OrdersStatusessRow(data);
          case VContractsRow:
            return VContractsRow(data);
          case VUnitsRow:
            return VUnitsRow(data);
          case VOrdersOpenParentStatus3Row:
            return VOrdersOpenParentStatus3Row(data);
          case VOrdersOpenStatus5Row:
            return VOrdersOpenStatus5Row(data);
          case AssetsStatusessRow:
            return AssetsStatusessRow(data);
          case OrdersTypesRow:
            return OrdersTypesRow(data);
          case VUsersNotificationsCountRow:
            return VUsersNotificationsCountRow(data);
          case UsersTracksRow:
            return UsersTracksRow(data);
          case VDashUserOrdersStatus4Row:
            return VDashUserOrdersStatus4Row(data);
          case MaterialsStockRow:
            return MaterialsStockRow(data);
          case VAssetsRow:
            return VAssetsRow(data);
          case VDashAdminOrdersFiltersOpenRow:
            return VDashAdminOrdersFiltersOpenRow(data);
          case OrdersTypesActivitiesRow:
            return OrdersTypesActivitiesRow(data);
          case VOrdersAuthorizedRow:
            return VOrdersAuthorizedRow(data);
          case VOrdersCountByTeamLeadersStatus3Row:
            return VOrdersCountByTeamLeadersStatus3Row(data);
          case VOrdersCountByTeamLeadersStatusesOpenRow:
            return VOrdersCountByTeamLeadersStatusesOpenRow(data);
          case SystemsRow:
            return SystemsRow(data);
          case VOrdersVisitsServicesPriceTotalRow:
            return VOrdersVisitsServicesPriceTotalRow(data);
          case VOrdersVisitsCountByTeamleaderOpenRow:
            return VOrdersVisitsCountByTeamleaderOpenRow(data);
          case OrdersVisitsAssetsActivitiesRow:
            return OrdersVisitsAssetsActivitiesRow(data);
          case VOrdersCountByParentOpenRow:
            return VOrdersCountByParentOpenRow(data);
          case VUsersRow:
            return VUsersRow(data);
          case OrdersActivitiesRow:
            return OrdersActivitiesRow(data);
          case OrdersCounterRow:
            return OrdersCounterRow(data);
          case VOrdersOpenParentStatus1Row:
            return VOrdersOpenParentStatus1Row(data);
          case OrdersStatusesLogsRow:
            return OrdersStatusesLogsRow(data);
          case VUsersCountByOrdersVisitsRow:
            return VUsersCountByOrdersVisitsRow(data);
          case ServicesRow:
            return ServicesRow(data);
          case DepartmentsRow:
            return DepartmentsRow(data);
          case VOrdersCountByUnitsParentsOpenRow:
            return VOrdersCountByUnitsParentsOpenRow(data);
          case VOrdersCountByUnitsOpenRow:
            return VOrdersCountByUnitsOpenRow(data);
          case VOrdersRow:
            return VOrdersRow(data);
          case ContractsServicesRow:
            return ContractsServicesRow(data);
          case VOrdersVisitsTeamsRow:
            return VOrdersVisitsTeamsRow(data);
          case VOrdersVisitsAssetsRow:
            return VOrdersVisitsAssetsRow(data);
          case AssetsTagsSubsRow:
            return AssetsTagsSubsRow(data);
          case OrdersVisitsTeamsRow:
            return OrdersVisitsTeamsRow(data);
          case UnitsRow:
            return UnitsRow(data);
          case VAssetsTagsSubsRow:
            return VAssetsTagsSubsRow(data);
          case ContractsRow:
            return ContractsRow(data);
          case VOrdersCountByTeamLeadersStatus5Row:
            return VOrdersCountByTeamLeadersStatus5Row(data);
          case OrdersCancelReasonsRow:
            return OrdersCancelReasonsRow(data);
          case VContractsServicesRow:
            return VContractsServicesRow(data);
          case UsersRow:
            return UsersRow(data);
          case WarehousesRow:
            return WarehousesRow(data);
          case OrdersVisitsRow:
            return OrdersVisitsRow(data);
          case VOrdersOpenStatus2Row:
            return VOrdersOpenStatus2Row(data);
          case MaterialsRow:
            return MaterialsRow(data);
          case VOrdersSuspendedRow:
            return VOrdersSuspendedRow(data);
          case TeamsRow:
            return TeamsRow(data);
          case AppPagesRow:
            return AppPagesRow(data);
          case AssetsTypesRow:
            return AssetsTypesRow(data);
          case VOrdersScheduledRow:
            return VOrdersScheduledRow(data);
          case OrdersRow:
            return OrdersRow(data);
          case VOrdersCountByParentsStatusesRow:
            return VOrdersCountByParentsStatusesRow(data);
          case VOrdersParentRow:
            return VOrdersParentRow(data);
          case VOrdersVisitsAssetsActivitiesRow:
            return VOrdersVisitsAssetsActivitiesRow(data);
          case UsersFiltersOrdersRow:
            return UsersFiltersOrdersRow(data);
          case VOrdersOpenParentStatus2Row:
            return VOrdersOpenParentStatus2Row(data);
          case VOrdersOpenStatus4Row:
            return VOrdersOpenStatus4Row(data);
          case OrdersVisitsAssetsMaterialsRow:
            return OrdersVisitsAssetsMaterialsRow(data);
          case UsersProfilesRow:
            return UsersProfilesRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}

Future<dynamic> Function(String) getDoc(
  List<String> collectionNamePath,
  RecordBuilder recordBuilder,
) {
  return (String ids) => _deserializeDocumentReference(ids, collectionNamePath)
      .get()
      .then((s) => recordBuilder(s));
}

Future<List<T>> Function(String) getDocList<T>(
  List<String> collectionNamePath,
  RecordBuilder<T> recordBuilder,
) {
  return (String idsList) {
    List<String> docIds = [];
    try {
      final ids = json.decode(idsList) as Iterable;
      docIds = ids.whereType<String>().map((d) => d).toList();
    } catch (_) {}
    return Future.wait(
      docIds.map(
        (ids) => _deserializeDocumentReference(ids, collectionNamePath)
            .get()
            .then((s) => recordBuilder(s)),
      ),
    ).then((docs) => docs.where((d) => d != null).map((d) => d!).toList());
  };
}
