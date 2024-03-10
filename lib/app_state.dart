import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_asUserCurrent')) {
        try {
          final serializedData = prefs.getString('ff_asUserCurrent') ?? '{}';
          _asUserCurrent =
              DtUserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _stMapOrdersCenterInitial =
          latLngFromString(prefs.getString('ff_stMapOrdersCenterInitial')) ??
              _stMapOrdersCenterInitial;
    });
    _safeInit(() {
      _stMapOrdersStatusId =
          prefs.getInt('ff_stMapOrdersStatusId') ?? _stMapOrdersStatusId;
    });
    _safeInit(() {
      _stMapOrdersCenterSelected =
          latLngFromString(prefs.getString('ff_stMapOrdersCenterSelected')) ??
              _stMapOrdersCenterSelected;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_asFiltersServices')) {
        try {
          final serializedData =
              prefs.getString('ff_asFiltersServices') ?? '{}';
          _asFiltersServices = DtFiltersServicesStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _asDashAdminOrdersParentFilters = prefs
              .getStringList('ff_asDashAdminOrdersParentFilters')
              ?.map((x) {
                try {
                  return DtVOrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _asDashAdminOrdersParentFilters;
    });
    _safeInit(() {
      _asDashAdminOrdersFilters = prefs
              .getStringList('ff_asDashAdminOrdersFilters')
              ?.map((x) {
                try {
                  return DtVOrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _asDashAdminOrdersFilters;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_stTmpOVFiltersSumPrices')) {
        try {
          final serializedData =
              prefs.getString('ff_stTmpOVFiltersSumPrices') ?? '{}';
          _stTmpOVFiltersSumPrices =
              DtTmpOrdersVisitsFiltersSumPricesStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _stUserOOpen = prefs
              .getStringList('ff_stUserOOpen')
              ?.map((x) {
                try {
                  return DtVOrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _stUserOOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DtUserStruct _asUserCurrent = DtUserStruct();
  DtUserStruct get asUserCurrent => _asUserCurrent;
  set asUserCurrent(DtUserStruct value) {
    _asUserCurrent = value;
    prefs.setString('ff_asUserCurrent', value.serialize());
  }

  void updateAsUserCurrentStruct(Function(DtUserStruct) updateFn) {
    updateFn(_asUserCurrent);
    prefs.setString('ff_asUserCurrent', _asUserCurrent.serialize());
  }

  List<DtUserPermissionStruct> _asUserPermissions = [];
  List<DtUserPermissionStruct> get asUserPermissions => _asUserPermissions;
  set asUserPermissions(List<DtUserPermissionStruct> value) {
    _asUserPermissions = value;
  }

  void addToAsUserPermissions(DtUserPermissionStruct value) {
    _asUserPermissions.add(value);
  }

  void removeFromAsUserPermissions(DtUserPermissionStruct value) {
    _asUserPermissions.remove(value);
  }

  void removeAtIndexFromAsUserPermissions(int index) {
    _asUserPermissions.removeAt(index);
  }

  void updateAsUserPermissionsAtIndex(
    int index,
    DtUserPermissionStruct Function(DtUserPermissionStruct) updateFn,
  ) {
    _asUserPermissions[index] = updateFn(_asUserPermissions[index]);
  }

  void insertAtIndexInAsUserPermissions(
      int index, DtUserPermissionStruct value) {
    _asUserPermissions.insert(index, value);
  }

  DtUserStruct _stTeamUserSelected = DtUserStruct();
  DtUserStruct get stTeamUserSelected => _stTeamUserSelected;
  set stTeamUserSelected(DtUserStruct value) {
    _stTeamUserSelected = value;
  }

  void updateStTeamUserSelectedStruct(Function(DtUserStruct) updateFn) {
    updateFn(_stTeamUserSelected);
  }

  int _stCounterLoop = 0;
  int get stCounterLoop => _stCounterLoop;
  set stCounterLoop(int value) {
    _stCounterLoop = value;
  }

  int _stCounterLoopFinal = 0;
  int get stCounterLoopFinal => _stCounterLoopFinal;
  set stCounterLoopFinal(int value) {
    _stCounterLoopFinal = value;
  }

  List<DtUserLeaderByTeamStruct> _stUsersLeadersByTeam = [];
  List<DtUserLeaderByTeamStruct> get stUsersLeadersByTeam =>
      _stUsersLeadersByTeam;
  set stUsersLeadersByTeam(List<DtUserLeaderByTeamStruct> value) {
    _stUsersLeadersByTeam = value;
  }

  void addToStUsersLeadersByTeam(DtUserLeaderByTeamStruct value) {
    _stUsersLeadersByTeam.add(value);
  }

  void removeFromStUsersLeadersByTeam(DtUserLeaderByTeamStruct value) {
    _stUsersLeadersByTeam.remove(value);
  }

  void removeAtIndexFromStUsersLeadersByTeam(int index) {
    _stUsersLeadersByTeam.removeAt(index);
  }

  void updateStUsersLeadersByTeamAtIndex(
    int index,
    DtUserLeaderByTeamStruct Function(DtUserLeaderByTeamStruct) updateFn,
  ) {
    _stUsersLeadersByTeam[index] = updateFn(_stUsersLeadersByTeam[index]);
  }

  void insertAtIndexInStUsersLeadersByTeam(
      int index, DtUserLeaderByTeamStruct value) {
    _stUsersLeadersByTeam.insert(index, value);
  }

  List<int> _stOVOpenTeamUsers = [];
  List<int> get stOVOpenTeamUsers => _stOVOpenTeamUsers;
  set stOVOpenTeamUsers(List<int> value) {
    _stOVOpenTeamUsers = value;
  }

  void addToStOVOpenTeamUsers(int value) {
    _stOVOpenTeamUsers.add(value);
  }

  void removeFromStOVOpenTeamUsers(int value) {
    _stOVOpenTeamUsers.remove(value);
  }

  void removeAtIndexFromStOVOpenTeamUsers(int index) {
    _stOVOpenTeamUsers.removeAt(index);
  }

  void updateStOVOpenTeamUsersAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _stOVOpenTeamUsers[index] = updateFn(_stOVOpenTeamUsers[index]);
  }

  void insertAtIndexInStOVOpenTeamUsers(int index, int value) {
    _stOVOpenTeamUsers.insert(index, value);
  }

  List<DtVOrderVisitAssetsStruct> _stOVAssets = [];
  List<DtVOrderVisitAssetsStruct> get stOVAssets => _stOVAssets;
  set stOVAssets(List<DtVOrderVisitAssetsStruct> value) {
    _stOVAssets = value;
  }

  void addToStOVAssets(DtVOrderVisitAssetsStruct value) {
    _stOVAssets.add(value);
  }

  void removeFromStOVAssets(DtVOrderVisitAssetsStruct value) {
    _stOVAssets.remove(value);
  }

  void removeAtIndexFromStOVAssets(int index) {
    _stOVAssets.removeAt(index);
  }

  void updateStOVAssetsAtIndex(
    int index,
    DtVOrderVisitAssetsStruct Function(DtVOrderVisitAssetsStruct) updateFn,
  ) {
    _stOVAssets[index] = updateFn(_stOVAssets[index]);
  }

  void insertAtIndexInStOVAssets(int index, DtVOrderVisitAssetsStruct value) {
    _stOVAssets.insert(index, value);
  }

  int _stOVAssetsDraftAmount = 0;
  int get stOVAssetsDraftAmount => _stOVAssetsDraftAmount;
  set stOVAssetsDraftAmount(int value) {
    _stOVAssetsDraftAmount = value;
  }

  int _stOVAssetsReportedAmount = 0;
  int get stOVAssetsReportedAmount => _stOVAssetsReportedAmount;
  set stOVAssetsReportedAmount(int value) {
    _stOVAssetsReportedAmount = value;
  }

  int _stOVAssetsDisapprovedAmount = 0;
  int get stOVAssetsDisapprovedAmount => _stOVAssetsDisapprovedAmount;
  set stOVAssetsDisapprovedAmount(int value) {
    _stOVAssetsDisapprovedAmount = value;
  }

  int _stOVAssetsApprovedAmount = 0;
  int get stOVAssetsApprovedAmount => _stOVAssetsApprovedAmount;
  set stOVAssetsApprovedAmount(int value) {
    _stOVAssetsApprovedAmount = value;
  }

  List<DtVOrderFollowerStruct> _stOFollowers = [
    DtVOrderFollowerStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"0\",\"userId\":\"0\",\"orderId\":\"0\"}')),
    DtVOrderFollowerStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"0\",\"userId\":\"0\",\"orderId\":\"0\"}'))
  ];
  List<DtVOrderFollowerStruct> get stOFollowers => _stOFollowers;
  set stOFollowers(List<DtVOrderFollowerStruct> value) {
    _stOFollowers = value;
  }

  void addToStOFollowers(DtVOrderFollowerStruct value) {
    _stOFollowers.add(value);
  }

  void removeFromStOFollowers(DtVOrderFollowerStruct value) {
    _stOFollowers.remove(value);
  }

  void removeAtIndexFromStOFollowers(int index) {
    _stOFollowers.removeAt(index);
  }

  void updateStOFollowersAtIndex(
    int index,
    DtVOrderFollowerStruct Function(DtVOrderFollowerStruct) updateFn,
  ) {
    _stOFollowers[index] = updateFn(_stOFollowers[index]);
  }

  void insertAtIndexInStOFollowers(int index, DtVOrderFollowerStruct value) {
    _stOFollowers.insert(index, value);
  }

  List<DtVOrderVisitAssetsStruct> _stOVAssetsNewCheck = [];
  List<DtVOrderVisitAssetsStruct> get stOVAssetsNewCheck => _stOVAssetsNewCheck;
  set stOVAssetsNewCheck(List<DtVOrderVisitAssetsStruct> value) {
    _stOVAssetsNewCheck = value;
  }

  void addToStOVAssetsNewCheck(DtVOrderVisitAssetsStruct value) {
    _stOVAssetsNewCheck.add(value);
  }

  void removeFromStOVAssetsNewCheck(DtVOrderVisitAssetsStruct value) {
    _stOVAssetsNewCheck.remove(value);
  }

  void removeAtIndexFromStOVAssetsNewCheck(int index) {
    _stOVAssetsNewCheck.removeAt(index);
  }

  void updateStOVAssetsNewCheckAtIndex(
    int index,
    DtVOrderVisitAssetsStruct Function(DtVOrderVisitAssetsStruct) updateFn,
  ) {
    _stOVAssetsNewCheck[index] = updateFn(_stOVAssetsNewCheck[index]);
  }

  void insertAtIndexInStOVAssetsNewCheck(
      int index, DtVOrderVisitAssetsStruct value) {
    _stOVAssetsNewCheck.insert(index, value);
  }

  List<DtVOrderVisitStruct> _stOVSelected = [];
  List<DtVOrderVisitStruct> get stOVSelected => _stOVSelected;
  set stOVSelected(List<DtVOrderVisitStruct> value) {
    _stOVSelected = value;
  }

  void addToStOVSelected(DtVOrderVisitStruct value) {
    _stOVSelected.add(value);
  }

  void removeFromStOVSelected(DtVOrderVisitStruct value) {
    _stOVSelected.remove(value);
  }

  void removeAtIndexFromStOVSelected(int index) {
    _stOVSelected.removeAt(index);
  }

  void updateStOVSelectedAtIndex(
    int index,
    DtVOrderVisitStruct Function(DtVOrderVisitStruct) updateFn,
  ) {
    _stOVSelected[index] = updateFn(_stOVSelected[index]);
  }

  void insertAtIndexInStOVSelected(int index, DtVOrderVisitStruct value) {
    _stOVSelected.insert(index, value);
  }

  String _stAssetNavBarOption = '';
  String get stAssetNavBarOption => _stAssetNavBarOption;
  set stAssetNavBarOption(String value) {
    _stAssetNavBarOption = value;
  }

  String _stOVShowNavBarOption = '';
  String get stOVShowNavBarOption => _stOVShowNavBarOption;
  set stOVShowNavBarOption(String value) {
    _stOVShowNavBarOption = value;
  }

  String _stUnitShowNavBarOption = '';
  String get stUnitShowNavBarOption => _stUnitShowNavBarOption;
  set stUnitShowNavBarOption(String value) {
    _stUnitShowNavBarOption = value;
  }

  bool _stIsPermission = false;
  bool get stIsPermission => _stIsPermission;
  set stIsPermission(bool value) {
    _stIsPermission = value;
  }

  List<DtVOrderStruct> _stMapOrders = [];
  List<DtVOrderStruct> get stMapOrders => _stMapOrders;
  set stMapOrders(List<DtVOrderStruct> value) {
    _stMapOrders = value;
  }

  void addToStMapOrders(DtVOrderStruct value) {
    _stMapOrders.add(value);
  }

  void removeFromStMapOrders(DtVOrderStruct value) {
    _stMapOrders.remove(value);
  }

  void removeAtIndexFromStMapOrders(int index) {
    _stMapOrders.removeAt(index);
  }

  void updateStMapOrdersAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _stMapOrders[index] = updateFn(_stMapOrders[index]);
  }

  void insertAtIndexInStMapOrders(int index, DtVOrderStruct value) {
    _stMapOrders.insert(index, value);
  }

  LatLng? _stMapOrdersCenterInitial = const LatLng(-30.04508079999999, -51.2008052);
  LatLng? get stMapOrdersCenterInitial => _stMapOrdersCenterInitial;
  set stMapOrdersCenterInitial(LatLng? value) {
    _stMapOrdersCenterInitial = value;
    value != null
        ? prefs.setString('ff_stMapOrdersCenterInitial', value.serialize())
        : prefs.remove('ff_stMapOrdersCenterInitial');
  }

  int _stMapOrdersStatusId = 4;
  int get stMapOrdersStatusId => _stMapOrdersStatusId;
  set stMapOrdersStatusId(int value) {
    _stMapOrdersStatusId = value;
    prefs.setInt('ff_stMapOrdersStatusId', value);
  }

  LatLng? _stMapOrdersCenterSelected = const LatLng(-30.04508079999999, -51.2008052);
  LatLng? get stMapOrdersCenterSelected => _stMapOrdersCenterSelected;
  set stMapOrdersCenterSelected(LatLng? value) {
    _stMapOrdersCenterSelected = value;
    value != null
        ? prefs.setString('ff_stMapOrdersCenterSelected', value.serialize())
        : prefs.remove('ff_stMapOrdersCenterSelected');
  }

  List<DtVOrderStruct> _stOSelected = [];
  List<DtVOrderStruct> get stOSelected => _stOSelected;
  set stOSelected(List<DtVOrderStruct> value) {
    _stOSelected = value;
  }

  void addToStOSelected(DtVOrderStruct value) {
    _stOSelected.add(value);
  }

  void removeFromStOSelected(DtVOrderStruct value) {
    _stOSelected.remove(value);
  }

  void removeAtIndexFromStOSelected(int index) {
    _stOSelected.removeAt(index);
  }

  void updateStOSelectedAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _stOSelected[index] = updateFn(_stOSelected[index]);
  }

  void insertAtIndexInStOSelected(int index, DtVOrderStruct value) {
    _stOSelected.insert(index, value);
  }

  DtOrderParentNewStruct _stOPNew = DtOrderParentNewStruct();
  DtOrderParentNewStruct get stOPNew => _stOPNew;
  set stOPNew(DtOrderParentNewStruct value) {
    _stOPNew = value;
  }

  void updateStOPNewStruct(Function(DtOrderParentNewStruct) updateFn) {
    updateFn(_stOPNew);
  }

  List<DtVOrderStruct> _stOPSelected = [];
  List<DtVOrderStruct> get stOPSelected => _stOPSelected;
  set stOPSelected(List<DtVOrderStruct> value) {
    _stOPSelected = value;
  }

  void addToStOPSelected(DtVOrderStruct value) {
    _stOPSelected.add(value);
  }

  void removeFromStOPSelected(DtVOrderStruct value) {
    _stOPSelected.remove(value);
  }

  void removeAtIndexFromStOPSelected(int index) {
    _stOPSelected.removeAt(index);
  }

  void updateStOPSelectedAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _stOPSelected[index] = updateFn(_stOPSelected[index]);
  }

  void insertAtIndexInStOPSelected(int index, DtVOrderStruct value) {
    _stOPSelected.insert(index, value);
  }

  List<DtVAssetStruct> _stAssetSeleted = [];
  List<DtVAssetStruct> get stAssetSeleted => _stAssetSeleted;
  set stAssetSeleted(List<DtVAssetStruct> value) {
    _stAssetSeleted = value;
  }

  void addToStAssetSeleted(DtVAssetStruct value) {
    _stAssetSeleted.add(value);
  }

  void removeFromStAssetSeleted(DtVAssetStruct value) {
    _stAssetSeleted.remove(value);
  }

  void removeAtIndexFromStAssetSeleted(int index) {
    _stAssetSeleted.removeAt(index);
  }

  void updateStAssetSeletedAtIndex(
    int index,
    DtVAssetStruct Function(DtVAssetStruct) updateFn,
  ) {
    _stAssetSeleted[index] = updateFn(_stAssetSeleted[index]);
  }

  void insertAtIndexInStAssetSeleted(int index, DtVAssetStruct value) {
    _stAssetSeleted.insert(index, value);
  }

  List<DtVAssetStruct> _stAssets = [];
  List<DtVAssetStruct> get stAssets => _stAssets;
  set stAssets(List<DtVAssetStruct> value) {
    _stAssets = value;
  }

  void addToStAssets(DtVAssetStruct value) {
    _stAssets.add(value);
  }

  void removeFromStAssets(DtVAssetStruct value) {
    _stAssets.remove(value);
  }

  void removeAtIndexFromStAssets(int index) {
    _stAssets.removeAt(index);
  }

  void updateStAssetsAtIndex(
    int index,
    DtVAssetStruct Function(DtVAssetStruct) updateFn,
  ) {
    _stAssets[index] = updateFn(_stAssets[index]);
  }

  void insertAtIndexInStAssets(int index, DtVAssetStruct value) {
    _stAssets.insert(index, value);
  }

  List<DtVOrderVisitAssetsStruct> _stOVAssetSelected = [
    DtVOrderVisitAssetsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"orderVisitId\":\"0\",\"assetId\":\"0\",\"code\":\"Hello World\",\"description\":\"Hello World\",\"isMoved\":\"false\",\"movedComments\":\"Hello World\",\"beforeUnitId\":\"0\",\"beforeUnitDescription\":\"Hello World\",\"beforeUnitLatitude\":\"0\",\"beforeUnitLongitude\":\"0\",\"beforeTagId\":\"0\",\"beforeTagDescription\":\"Hello World\",\"beforeTagSubId\":\"0\",\"beforeTagSubDescription\":\"Hello World\",\"beforeStatusId\":\"0\",\"beforeStatusDescription\":\"Hello World\",\"beforeComments\":\"Hello World\",\"beforeImgFilePath\":\"Hello World\",\"beforeImgFileName\":\"Hello World\",\"beforeRecord\":\"0\",\"beforeLatitude\":\"0\",\"beforeLongitude\":\"0\",\"afterUnitId\":\"0\",\"afterUnitDescription\":\"Hello World\",\"afterUnitLatitude\":\"0\",\"afterUnitLongitude\":\"0\",\"afterTagId\":\"0\",\"afterTagDescription\":\"Hello World\",\"afterTagSubId\":\"0\",\"afterTagSubDescription\":\"Hello World\",\"afterStatusId\":\"0\",\"afterStatusDescription\":\"Hello World\",\"afterComments\":\"Hello World\",\"afterImgFilePath\":\"Hello World\",\"afterImgFileName\":\"Hello World\",\"afterRecord\":\"0\",\"afterLatitude\":\"0\",\"afterLongitude\":\"0\",\"processingId\":\"0\",\"processingDescription\":\"Hello World\",\"reportedUserId\":\"0\",\"reportedUserNameShort\":\"Hello World\",\"reportedDate\":\"Hello World\",\"reportedDateDateTime\":\"1709572539570\",\"disapprovedUserId\":\"0\",\"disapprovedUserNameShort\":\"Hello World\",\"disapprovedDate\":\"Hello World\",\"disapprovedDateDateTime\":\"1709572539570\",\"disapprovedNotes\":\"Hello World\",\"approvedUserId\":\"0\",\"approvedUserNameShort\":\"Hello World\",\"approvedDate\":\"Hello World\",\"approvedDateDateTime\":\"1709572539570\"}'))
  ];
  List<DtVOrderVisitAssetsStruct> get stOVAssetSelected => _stOVAssetSelected;
  set stOVAssetSelected(List<DtVOrderVisitAssetsStruct> value) {
    _stOVAssetSelected = value;
  }

  void addToStOVAssetSelected(DtVOrderVisitAssetsStruct value) {
    _stOVAssetSelected.add(value);
  }

  void removeFromStOVAssetSelected(DtVOrderVisitAssetsStruct value) {
    _stOVAssetSelected.remove(value);
  }

  void removeAtIndexFromStOVAssetSelected(int index) {
    _stOVAssetSelected.removeAt(index);
  }

  void updateStOVAssetSelectedAtIndex(
    int index,
    DtVOrderVisitAssetsStruct Function(DtVOrderVisitAssetsStruct) updateFn,
  ) {
    _stOVAssetSelected[index] = updateFn(_stOVAssetSelected[index]);
  }

  void insertAtIndexInStOVAssetSelected(
      int index, DtVOrderVisitAssetsStruct value) {
    _stOVAssetSelected.insert(index, value);
  }

  List<DtVOrderVisitAssetActivityStruct> _stOVAssetActivities = [];
  List<DtVOrderVisitAssetActivityStruct> get stOVAssetActivities =>
      _stOVAssetActivities;
  set stOVAssetActivities(List<DtVOrderVisitAssetActivityStruct> value) {
    _stOVAssetActivities = value;
  }

  void addToStOVAssetActivities(DtVOrderVisitAssetActivityStruct value) {
    _stOVAssetActivities.add(value);
  }

  void removeFromStOVAssetActivities(DtVOrderVisitAssetActivityStruct value) {
    _stOVAssetActivities.remove(value);
  }

  void removeAtIndexFromStOVAssetActivities(int index) {
    _stOVAssetActivities.removeAt(index);
  }

  void updateStOVAssetActivitiesAtIndex(
    int index,
    DtVOrderVisitAssetActivityStruct Function(DtVOrderVisitAssetActivityStruct)
        updateFn,
  ) {
    _stOVAssetActivities[index] = updateFn(_stOVAssetActivities[index]);
  }

  void insertAtIndexInStOVAssetActivities(
      int index, DtVOrderVisitAssetActivityStruct value) {
    _stOVAssetActivities.insert(index, value);
  }

  List<DtVContractStruct> _stContractSelected = [];
  List<DtVContractStruct> get stContractSelected => _stContractSelected;
  set stContractSelected(List<DtVContractStruct> value) {
    _stContractSelected = value;
  }

  void addToStContractSelected(DtVContractStruct value) {
    _stContractSelected.add(value);
  }

  void removeFromStContractSelected(DtVContractStruct value) {
    _stContractSelected.remove(value);
  }

  void removeAtIndexFromStContractSelected(int index) {
    _stContractSelected.removeAt(index);
  }

  void updateStContractSelectedAtIndex(
    int index,
    DtVContractStruct Function(DtVContractStruct) updateFn,
  ) {
    _stContractSelected[index] = updateFn(_stContractSelected[index]);
  }

  void insertAtIndexInStContractSelected(int index, DtVContractStruct value) {
    _stContractSelected.insert(index, value);
  }

  String _asCwOVServiceAmountFormatted = '';
  String get asCwOVServiceAmountFormatted => _asCwOVServiceAmountFormatted;
  set asCwOVServiceAmountFormatted(String value) {
    _asCwOVServiceAmountFormatted = value;
  }

  double _asCwOVServiceAmountDouble = 0.0;
  double get asCwOVServiceAmountDouble => _asCwOVServiceAmountDouble;
  set asCwOVServiceAmountDouble(double value) {
    _asCwOVServiceAmountDouble = value;
  }

  String _asCwOVServiceDiscountFormatted = '';
  String get asCwOVServiceDiscountFormatted => _asCwOVServiceDiscountFormatted;
  set asCwOVServiceDiscountFormatted(String value) {
    _asCwOVServiceDiscountFormatted = value;
  }

  double _asCwOVServiceDiscountDouble = 0.0;
  double get asCwOVServiceDiscountDouble => _asCwOVServiceDiscountDouble;
  set asCwOVServiceDiscountDouble(double value) {
    _asCwOVServiceDiscountDouble = value;
  }

  List<DtVOrderVisitServicesStruct> _asOVSelectedServices = [];
  List<DtVOrderVisitServicesStruct> get asOVSelectedServices =>
      _asOVSelectedServices;
  set asOVSelectedServices(List<DtVOrderVisitServicesStruct> value) {
    _asOVSelectedServices = value;
  }

  void addToAsOVSelectedServices(DtVOrderVisitServicesStruct value) {
    _asOVSelectedServices.add(value);
  }

  void removeFromAsOVSelectedServices(DtVOrderVisitServicesStruct value) {
    _asOVSelectedServices.remove(value);
  }

  void removeAtIndexFromAsOVSelectedServices(int index) {
    _asOVSelectedServices.removeAt(index);
  }

  void updateAsOVSelectedServicesAtIndex(
    int index,
    DtVOrderVisitServicesStruct Function(DtVOrderVisitServicesStruct) updateFn,
  ) {
    _asOVSelectedServices[index] = updateFn(_asOVSelectedServices[index]);
  }

  void insertAtIndexInAsOVSelectedServices(
      int index, DtVOrderVisitServicesStruct value) {
    _asOVSelectedServices.insert(index, value);
  }

  double _asOVSelectedServicesTotal = 0.0;
  double get asOVSelectedServicesTotal => _asOVSelectedServicesTotal;
  set asOVSelectedServicesTotal(double value) {
    _asOVSelectedServicesTotal = value;
  }

  List<DtVOrderVisitPricesStruct> _asTmpOrderVisitSelectedPricesBalance = [];
  List<DtVOrderVisitPricesStruct> get asTmpOrderVisitSelectedPricesBalance =>
      _asTmpOrderVisitSelectedPricesBalance;
  set asTmpOrderVisitSelectedPricesBalance(
      List<DtVOrderVisitPricesStruct> value) {
    _asTmpOrderVisitSelectedPricesBalance = value;
  }

  void addToAsTmpOrderVisitSelectedPricesBalance(
      DtVOrderVisitPricesStruct value) {
    _asTmpOrderVisitSelectedPricesBalance.add(value);
  }

  void removeFromAsTmpOrderVisitSelectedPricesBalance(
      DtVOrderVisitPricesStruct value) {
    _asTmpOrderVisitSelectedPricesBalance.remove(value);
  }

  void removeAtIndexFromAsTmpOrderVisitSelectedPricesBalance(int index) {
    _asTmpOrderVisitSelectedPricesBalance.removeAt(index);
  }

  void updateAsTmpOrderVisitSelectedPricesBalanceAtIndex(
    int index,
    DtVOrderVisitPricesStruct Function(DtVOrderVisitPricesStruct) updateFn,
  ) {
    _asTmpOrderVisitSelectedPricesBalance[index] =
        updateFn(_asTmpOrderVisitSelectedPricesBalance[index]);
  }

  void insertAtIndexInAsTmpOrderVisitSelectedPricesBalance(
      int index, DtVOrderVisitPricesStruct value) {
    _asTmpOrderVisitSelectedPricesBalance.insert(index, value);
  }

  DtFiltersServicesStruct _asFiltersServices = DtFiltersServicesStruct();
  DtFiltersServicesStruct get asFiltersServices => _asFiltersServices;
  set asFiltersServices(DtFiltersServicesStruct value) {
    _asFiltersServices = value;
    prefs.setString('ff_asFiltersServices', value.serialize());
  }

  void updateAsFiltersServicesStruct(
      Function(DtFiltersServicesStruct) updateFn) {
    updateFn(_asFiltersServices);
    prefs.setString('ff_asFiltersServices', _asFiltersServices.serialize());
  }

  List<DtVOrderStruct> _asDashAdminOrdersParentFilters = [];
  List<DtVOrderStruct> get asDashAdminOrdersParentFilters =>
      _asDashAdminOrdersParentFilters;
  set asDashAdminOrdersParentFilters(List<DtVOrderStruct> value) {
    _asDashAdminOrdersParentFilters = value;
    prefs.setStringList('ff_asDashAdminOrdersParentFilters',
        value.map((x) => x.serialize()).toList());
  }

  void addToAsDashAdminOrdersParentFilters(DtVOrderStruct value) {
    _asDashAdminOrdersParentFilters.add(value);
    prefs.setStringList('ff_asDashAdminOrdersParentFilters',
        _asDashAdminOrdersParentFilters.map((x) => x.serialize()).toList());
  }

  void removeFromAsDashAdminOrdersParentFilters(DtVOrderStruct value) {
    _asDashAdminOrdersParentFilters.remove(value);
    prefs.setStringList('ff_asDashAdminOrdersParentFilters',
        _asDashAdminOrdersParentFilters.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAsDashAdminOrdersParentFilters(int index) {
    _asDashAdminOrdersParentFilters.removeAt(index);
    prefs.setStringList('ff_asDashAdminOrdersParentFilters',
        _asDashAdminOrdersParentFilters.map((x) => x.serialize()).toList());
  }

  void updateAsDashAdminOrdersParentFiltersAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _asDashAdminOrdersParentFilters[index] =
        updateFn(_asDashAdminOrdersParentFilters[index]);
    prefs.setStringList('ff_asDashAdminOrdersParentFilters',
        _asDashAdminOrdersParentFilters.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAsDashAdminOrdersParentFilters(
      int index, DtVOrderStruct value) {
    _asDashAdminOrdersParentFilters.insert(index, value);
    prefs.setStringList('ff_asDashAdminOrdersParentFilters',
        _asDashAdminOrdersParentFilters.map((x) => x.serialize()).toList());
  }

  List<DtVOrderStruct> _asDashAdminOrdersFilters = [];
  List<DtVOrderStruct> get asDashAdminOrdersFilters =>
      _asDashAdminOrdersFilters;
  set asDashAdminOrdersFilters(List<DtVOrderStruct> value) {
    _asDashAdminOrdersFilters = value;
    prefs.setStringList('ff_asDashAdminOrdersFilters',
        value.map((x) => x.serialize()).toList());
  }

  void addToAsDashAdminOrdersFilters(DtVOrderStruct value) {
    _asDashAdminOrdersFilters.add(value);
    prefs.setStringList('ff_asDashAdminOrdersFilters',
        _asDashAdminOrdersFilters.map((x) => x.serialize()).toList());
  }

  void removeFromAsDashAdminOrdersFilters(DtVOrderStruct value) {
    _asDashAdminOrdersFilters.remove(value);
    prefs.setStringList('ff_asDashAdminOrdersFilters',
        _asDashAdminOrdersFilters.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAsDashAdminOrdersFilters(int index) {
    _asDashAdminOrdersFilters.removeAt(index);
    prefs.setStringList('ff_asDashAdminOrdersFilters',
        _asDashAdminOrdersFilters.map((x) => x.serialize()).toList());
  }

  void updateAsDashAdminOrdersFiltersAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _asDashAdminOrdersFilters[index] =
        updateFn(_asDashAdminOrdersFilters[index]);
    prefs.setStringList('ff_asDashAdminOrdersFilters',
        _asDashAdminOrdersFilters.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAsDashAdminOrdersFilters(
      int index, DtVOrderStruct value) {
    _asDashAdminOrdersFilters.insert(index, value);
    prefs.setStringList('ff_asDashAdminOrdersFilters',
        _asDashAdminOrdersFilters.map((x) => x.serialize()).toList());
  }

  List<DtVOrderVisitStruct> _asOVSearchResults = [];
  List<DtVOrderVisitStruct> get asOVSearchResults => _asOVSearchResults;
  set asOVSearchResults(List<DtVOrderVisitStruct> value) {
    _asOVSearchResults = value;
  }

  void addToAsOVSearchResults(DtVOrderVisitStruct value) {
    _asOVSearchResults.add(value);
  }

  void removeFromAsOVSearchResults(DtVOrderVisitStruct value) {
    _asOVSearchResults.remove(value);
  }

  void removeAtIndexFromAsOVSearchResults(int index) {
    _asOVSearchResults.removeAt(index);
  }

  void updateAsOVSearchResultsAtIndex(
    int index,
    DtVOrderVisitStruct Function(DtVOrderVisitStruct) updateFn,
  ) {
    _asOVSearchResults[index] = updateFn(_asOVSearchResults[index]);
  }

  void insertAtIndexInAsOVSearchResults(
      int index, DtVOrderVisitStruct value) {
    _asOVSearchResults.insert(index, value);
  }

  DtTmpOrdersVisitsFiltersSumPricesStruct _stTmpOVFiltersSumPrices =
      DtTmpOrdersVisitsFiltersSumPricesStruct();
  DtTmpOrdersVisitsFiltersSumPricesStruct get stTmpOVFiltersSumPrices =>
      _stTmpOVFiltersSumPrices;
  set stTmpOVFiltersSumPrices(DtTmpOrdersVisitsFiltersSumPricesStruct value) {
    _stTmpOVFiltersSumPrices = value;
    prefs.setString('ff_stTmpOVFiltersSumPrices', value.serialize());
  }

  void updateStTmpOVFiltersSumPricesStruct(
      Function(DtTmpOrdersVisitsFiltersSumPricesStruct) updateFn) {
    updateFn(_stTmpOVFiltersSumPrices);
    prefs.setString(
        'ff_stTmpOVFiltersSumPrices', _stTmpOVFiltersSumPrices.serialize());
  }

  List<DtVOrderStruct> _stUserOOpen = [];
  List<DtVOrderStruct> get stUserOOpen => _stUserOOpen;
  set stUserOOpen(List<DtVOrderStruct> value) {
    _stUserOOpen = value;
    prefs.setStringList(
        'ff_stUserOOpen', value.map((x) => x.serialize()).toList());
  }

  void addToStUserOOpen(DtVOrderStruct value) {
    _stUserOOpen.add(value);
    prefs.setStringList(
        'ff_stUserOOpen', _stUserOOpen.map((x) => x.serialize()).toList());
  }

  void removeFromStUserOOpen(DtVOrderStruct value) {
    _stUserOOpen.remove(value);
    prefs.setStringList(
        'ff_stUserOOpen', _stUserOOpen.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromStUserOOpen(int index) {
    _stUserOOpen.removeAt(index);
    prefs.setStringList(
        'ff_stUserOOpen', _stUserOOpen.map((x) => x.serialize()).toList());
  }

  void updateStUserOOpenAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _stUserOOpen[index] = updateFn(_stUserOOpen[index]);
    prefs.setStringList(
        'ff_stUserOOpen', _stUserOOpen.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInStUserOOpen(int index, DtVOrderStruct value) {
    _stUserOOpen.insert(index, value);
    prefs.setStringList(
        'ff_stUserOOpen', _stUserOOpen.map((x) => x.serialize()).toList());
  }

  List<DtVOrderVisitStruct> _stUserOVOpen = [];
  List<DtVOrderVisitStruct> get stUserOVOpen => _stUserOVOpen;
  set stUserOVOpen(List<DtVOrderVisitStruct> value) {
    _stUserOVOpen = value;
  }

  void addToStUserOVOpen(DtVOrderVisitStruct value) {
    _stUserOVOpen.add(value);
  }

  void removeFromStUserOVOpen(DtVOrderVisitStruct value) {
    _stUserOVOpen.remove(value);
  }

  void removeAtIndexFromStUserOVOpen(int index) {
    _stUserOVOpen.removeAt(index);
  }

  void updateStUserOVOpenAtIndex(
    int index,
    DtVOrderVisitStruct Function(DtVOrderVisitStruct) updateFn,
  ) {
    _stUserOVOpen[index] = updateFn(_stUserOVOpen[index]);
  }

  void insertAtIndexInStUserOVOpen(int index, DtVOrderVisitStruct value) {
    _stUserOVOpen.insert(index, value);
  }

  List<DtVOrderVisitVehicleStruct> _stOVVehicles = [];
  List<DtVOrderVisitVehicleStruct> get stOVVehicles => _stOVVehicles;
  set stOVVehicles(List<DtVOrderVisitVehicleStruct> value) {
    _stOVVehicles = value;
  }

  void addToStOVVehicles(DtVOrderVisitVehicleStruct value) {
    _stOVVehicles.add(value);
  }

  void removeFromStOVVehicles(DtVOrderVisitVehicleStruct value) {
    _stOVVehicles.remove(value);
  }

  void removeAtIndexFromStOVVehicles(int index) {
    _stOVVehicles.removeAt(index);
  }

  void updateStOVVehiclesAtIndex(
    int index,
    DtVOrderVisitVehicleStruct Function(DtVOrderVisitVehicleStruct) updateFn,
  ) {
    _stOVVehicles[index] = updateFn(_stOVVehicles[index]);
  }

  void insertAtIndexInStOVVehicles(
      int index, DtVOrderVisitVehicleStruct value) {
    _stOVVehicles.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
