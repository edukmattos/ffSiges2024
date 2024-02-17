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

/// Converts the input value into a value that can be JSON encoded.
dynamic serializeParameter(dynamic value) {
  switch (value.runtimeType) {
    case DateTime:
      return (value as DateTime).millisecondsSinceEpoch;
    case DateTimeRange:
      return dateTimeRangeToString(value as DateTimeRange);
    case LatLng:
      return (value as LatLng).serialize();
    case Color:
      return (value as Color).toCssString();
    case FFPlace:
      return placeToString(value as FFPlace);
    case FFUploadedFile:
      return uploadedFileToString(value as FFUploadedFile);
    case SupabaseDataRow:
      return json.encode((value as SupabaseDataRow).data);
  }

  if (value is DocumentReference) {
    return value.path;
  }

  if (value is FirestoreRecord) {
    return (value as dynamic).reference.path;
  }

  return value;
}

String serializeParameterData(Map<String, dynamic> parameterData) => jsonEncode(
      parameterData.map(
        (key, value) => MapEntry(
          key,
          serializeParameter(value),
        ),
      )..removeWhere((k, v) => v == null),
    );

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

T? getParameter<T>(Map<String, dynamic> data, String paramName) {
  try {
    if (!data.containsKey(paramName)) {
      return null;
    }
    final param = data[paramName];
    switch (T) {
      case String:
        return param;
      case double:
        return param.toDouble();
      case DateTime:
        return DateTime.fromMillisecondsSinceEpoch(param) as T;
      case DateTimeRange:
        return dateTimeRangeFromString(param) as T;
      case LatLng:
        return latLngFromString(param) as T;
      case Color:
        return fromCssColor(param) as T;
      case FFPlace:
        return placeFromString(param) as T;
      case FFUploadedFile:
        return uploadedFileFromString(param) as T;
      case UnitsTypesRow:
        return UnitsTypesRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByTeamsStatusesRow:
        return VOrdersCountByTeamsStatusesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case AppRow:
        return AppRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersFollowersRow:
        return VOrdersFollowersRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case LogsRow:
        return LogsRow(json.decode(param) as Map<String, dynamic>) as T;
      case OrdersVisitsProcessingRow:
        return OrdersVisitsProcessingRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case OrdersTypesSubsRow:
        return OrdersTypesSubsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VAssetsStatusesRow:
        return VAssetsStatusesRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VOrdersVisitsRow:
        return VOrdersVisitsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case AssetsTagsRow:
        return AssetsTagsRow(json.decode(param) as Map<String, dynamic>) as T;
      case VProfilesPermissionsRow:
        return VProfilesPermissionsRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case UsersStatusesRow:
        return UsersStatusesRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VUnitsTypesRow:
        return VUnitsTypesRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersTypesActivitiesRow:
        return VOrdersTypesActivitiesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case CompaniesRow:
        return CompaniesRow(json.decode(param) as Map<String, dynamic>) as T;
      case OrdersVisitsAssetsRow:
        return OrdersVisitsAssetsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case UsersNotificationsRow:
        return UsersNotificationsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrdersFollowersRow:
        return OrdersFollowersRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrdersVisitsServicesRow:
        return OrdersVisitsServicesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByUnitsAssetsTagsRow:
        return VOrdersCountByUnitsAssetsTagsRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersParentOpenRow:
        return VOrdersParentOpenRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case UsersMaterialsRow:
        return UsersMaterialsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VOrdersVisitsServicesRow:
        return VOrdersVisitsServicesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersOpenRow:
        return VOrdersOpenRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByUnitsParentsStatusesRow:
        return VOrdersCountByUnitsParentsStatusesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VAssetsMaterialsRow:
        return VAssetsMaterialsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VAssetsTagsRow:
        return VAssetsTagsRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByUnitsStatusesRow:
        return VOrdersCountByUnitsStatusesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VDashAdminOrdersSuspendedRow:
        return VDashAdminOrdersSuspendedRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersVisitsOpenRow:
        return VOrdersVisitsOpenRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VOrdersVisitsCountByTeamleaderProcessingRow:
        return VOrdersVisitsCountByTeamleaderProcessingRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case AssetsMaterialsRow:
        return AssetsMaterialsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrdersVisitsStatusesRow:
        return OrdersVisitsStatusesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case ProfilesPermissionsRow:
        return ProfilesPermissionsRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case OrdersPrioritiesRow:
        return OrdersPrioritiesRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case AssetsRow:
        return AssetsRow(json.decode(param) as Map<String, dynamic>) as T;
      case OrdersStatusessRow:
        return OrdersStatusessRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VContractsRow:
        return VContractsRow(json.decode(param) as Map<String, dynamic>) as T;
      case VUnitsRow:
        return VUnitsRow(json.decode(param) as Map<String, dynamic>) as T;
      case VDashAdminOrdersAnalysisRow:
        return VDashAdminOrdersAnalysisRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VDashAdminOrdersScheduledRow:
        return VDashAdminOrdersScheduledRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case AssetsStatusessRow:
        return AssetsStatusessRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrdersTypesRow:
        return OrdersTypesRow(json.decode(param) as Map<String, dynamic>) as T;
      case VUsersNotificationsCountRow:
        return VUsersNotificationsCountRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case UsersTracksRow:
        return UsersTracksRow(json.decode(param) as Map<String, dynamic>) as T;
      case MaterialsStockRow:
        return MaterialsStockRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VAssetsRow:
        return VAssetsRow(json.decode(param) as Map<String, dynamic>) as T;
      case OrdersTypesActivitiesRow:
        return OrdersTypesActivitiesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case SystemsRow:
        return SystemsRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersVisitsCountByTeamleaderOpenRow:
        return VOrdersVisitsCountByTeamleaderOpenRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case OrdersVisitsAssetsActivitiesRow:
        return OrdersVisitsAssetsActivitiesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByParentOpenRow:
        return VOrdersCountByParentOpenRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VUsersRow:
        return VUsersRow(json.decode(param) as Map<String, dynamic>) as T;
      case OrdersActivitiesRow:
        return OrdersActivitiesRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrdersCounterRow:
        return OrdersCounterRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrdersStatusesLogsRow:
        return OrdersStatusesLogsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VUsersCountByOrdersVisitsRow:
        return VUsersCountByOrdersVisitsRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case ServicesRow:
        return ServicesRow(json.decode(param) as Map<String, dynamic>) as T;
      case DepartmentsRow:
        return DepartmentsRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByUnitsParentsOpenRow:
        return VOrdersCountByUnitsParentsOpenRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByUnitsOpenRow:
        return VOrdersCountByUnitsOpenRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersRow:
        return VOrdersRow(json.decode(param) as Map<String, dynamic>) as T;
      case ContractsServicesRow:
        return ContractsServicesRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VOrdersVisitsTeamsRow:
        return VOrdersVisitsTeamsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VOrdersVisitsAssetsRow:
        return VOrdersVisitsAssetsRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case AssetsTagsSubsRow:
        return AssetsTagsSubsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrdersVisitsTeamsRow:
        return OrdersVisitsTeamsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case UnitsRow:
        return UnitsRow(json.decode(param) as Map<String, dynamic>) as T;
      case VAssetsTagsSubsRow:
        return VAssetsTagsSubsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case ContractsRow:
        return ContractsRow(json.decode(param) as Map<String, dynamic>) as T;
      case OrdersCancelReasonsRow:
        return OrdersCancelReasonsRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case UsersRow:
        return UsersRow(json.decode(param) as Map<String, dynamic>) as T;
      case WarehousesRow:
        return WarehousesRow(json.decode(param) as Map<String, dynamic>) as T;
      case OrdersVisitsRow:
        return OrdersVisitsRow(json.decode(param) as Map<String, dynamic>) as T;
      case MaterialsRow:
        return MaterialsRow(json.decode(param) as Map<String, dynamic>) as T;
      case TeamsRow:
        return TeamsRow(json.decode(param) as Map<String, dynamic>) as T;
      case AppPagesRow:
        return AppPagesRow(json.decode(param) as Map<String, dynamic>) as T;
      case AssetsTypesRow:
        return AssetsTypesRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByTeamleadersStatusesOpenRow:
        return VOrdersCountByTeamleadersStatusesOpenRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VDashAdminOrdersAuthorizedRow:
        return VDashAdminOrdersAuthorizedRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case OrdersRow:
        return OrdersRow(json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersCountByParentsStatusesRow:
        return VOrdersCountByParentsStatusesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case VOrdersParentRow:
        return VOrdersParentRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VOrdersVisitsAssetsActivitiesRow:
        return VOrdersVisitsAssetsActivitiesRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case UsersFiltersOrdersRow:
        return UsersFiltersOrdersRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case VDashAdminOrdersInProgressRow:
        return VDashAdminOrdersInProgressRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case OrdersVisitsAssetsMaterialsRow:
        return OrdersVisitsAssetsMaterialsRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case UsersProfilesRow:
        return UsersProfilesRow(json.decode(param) as Map<String, dynamic>)
            as T;
    }
    if (param is String) {
      return FirebaseFirestore.instance.doc(param) as T;
    }
    return param;
  } catch (e) {
    print('Error parsing parameter "$paramName": $e');
    return null;
  }
}

Future<T?> getDocumentParameter<T>(
  Map<String, dynamic> data,
  String paramName,
  RecordBuilder<T> recordBuilder,
) {
  if (!data.containsKey(paramName)) {
    return Future.value(null);
  }
  return FirebaseFirestore.instance
      .doc(data[paramName])
      .get()
      .then((s) => recordBuilder(s));
}

/// END DESERIALIZATION HELPERS
