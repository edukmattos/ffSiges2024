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
      _asUserPermissions = prefs
              .getStringList('ff_asUserPermissions')
              ?.map((x) {
                try {
                  return DtVUserPermissionsStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _asUserPermissions;
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

  List<int> _stOrderVisitOpenTeamUsers = [];
  List<int> get stOrderVisitOpenTeamUsers => _stOrderVisitOpenTeamUsers;
  set stOrderVisitOpenTeamUsers(List<int> value) {
    _stOrderVisitOpenTeamUsers = value;
  }

  void addToStOrderVisitOpenTeamUsers(int value) {
    _stOrderVisitOpenTeamUsers.add(value);
  }

  void removeFromStOrderVisitOpenTeamUsers(int value) {
    _stOrderVisitOpenTeamUsers.remove(value);
  }

  void removeAtIndexFromStOrderVisitOpenTeamUsers(int index) {
    _stOrderVisitOpenTeamUsers.removeAt(index);
  }

  void updateStOrderVisitOpenTeamUsersAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _stOrderVisitOpenTeamUsers[index] =
        updateFn(_stOrderVisitOpenTeamUsers[index]);
  }

  void insertAtIndexInStOrderVisitOpenTeamUsers(int index, int value) {
    _stOrderVisitOpenTeamUsers.insert(index, value);
  }

  List<DtVOrderVisitAssetsStruct> _stOrderVisitAssets = [];
  List<DtVOrderVisitAssetsStruct> get stOrderVisitAssets => _stOrderVisitAssets;
  set stOrderVisitAssets(List<DtVOrderVisitAssetsStruct> value) {
    _stOrderVisitAssets = value;
  }

  void addToStOrderVisitAssets(DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssets.add(value);
  }

  void removeFromStOrderVisitAssets(DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssets.remove(value);
  }

  void removeAtIndexFromStOrderVisitAssets(int index) {
    _stOrderVisitAssets.removeAt(index);
  }

  void updateStOrderVisitAssetsAtIndex(
    int index,
    DtVOrderVisitAssetsStruct Function(DtVOrderVisitAssetsStruct) updateFn,
  ) {
    _stOrderVisitAssets[index] = updateFn(_stOrderVisitAssets[index]);
  }

  void insertAtIndexInStOrderVisitAssets(
      int index, DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssets.insert(index, value);
  }

  int _stOrderVisitAssetsDraftAmount = 0;
  int get stOrderVisitAssetsDraftAmount => _stOrderVisitAssetsDraftAmount;
  set stOrderVisitAssetsDraftAmount(int value) {
    _stOrderVisitAssetsDraftAmount = value;
  }

  int _stOrderVisitAssetsReportedAmount = 0;
  int get stOrderVisitAssetsReportedAmount => _stOrderVisitAssetsReportedAmount;
  set stOrderVisitAssetsReportedAmount(int value) {
    _stOrderVisitAssetsReportedAmount = value;
  }

  int _stOrdervisitAssetsDisapprovedAmount = 0;
  int get stOrdervisitAssetsDisapprovedAmount =>
      _stOrdervisitAssetsDisapprovedAmount;
  set stOrdervisitAssetsDisapprovedAmount(int value) {
    _stOrdervisitAssetsDisapprovedAmount = value;
  }

  int _stOrderVisitAssetsApprovedAmount = 0;
  int get stOrderVisitAssetsApprovedAmount => _stOrderVisitAssetsApprovedAmount;
  set stOrderVisitAssetsApprovedAmount(int value) {
    _stOrderVisitAssetsApprovedAmount = value;
  }

  List<DtVOrderFollowerStruct> _stOrdersFollowers = [
    DtVOrderFollowerStruct.fromSerializableMap(
        jsonDecode('{"id":"0","userId":"0","orderId":"0"}')),
    DtVOrderFollowerStruct.fromSerializableMap(
        jsonDecode('{"id":"0","userId":"0","orderId":"0"}'))
  ];
  List<DtVOrderFollowerStruct> get stOrdersFollowers => _stOrdersFollowers;
  set stOrdersFollowers(List<DtVOrderFollowerStruct> value) {
    _stOrdersFollowers = value;
  }

  void addToStOrdersFollowers(DtVOrderFollowerStruct value) {
    _stOrdersFollowers.add(value);
  }

  void removeFromStOrdersFollowers(DtVOrderFollowerStruct value) {
    _stOrdersFollowers.remove(value);
  }

  void removeAtIndexFromStOrdersFollowers(int index) {
    _stOrdersFollowers.removeAt(index);
  }

  void updateStOrdersFollowersAtIndex(
    int index,
    DtVOrderFollowerStruct Function(DtVOrderFollowerStruct) updateFn,
  ) {
    _stOrdersFollowers[index] = updateFn(_stOrdersFollowers[index]);
  }

  void insertAtIndexInStOrdersFollowers(
      int index, DtVOrderFollowerStruct value) {
    _stOrdersFollowers.insert(index, value);
  }

  List<DtVOrderVisitAssetsStruct> _stOrderVisitAssetsNewCheck = [];
  List<DtVOrderVisitAssetsStruct> get stOrderVisitAssetsNewCheck =>
      _stOrderVisitAssetsNewCheck;
  set stOrderVisitAssetsNewCheck(List<DtVOrderVisitAssetsStruct> value) {
    _stOrderVisitAssetsNewCheck = value;
  }

  void addToStOrderVisitAssetsNewCheck(DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssetsNewCheck.add(value);
  }

  void removeFromStOrderVisitAssetsNewCheck(DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssetsNewCheck.remove(value);
  }

  void removeAtIndexFromStOrderVisitAssetsNewCheck(int index) {
    _stOrderVisitAssetsNewCheck.removeAt(index);
  }

  void updateStOrderVisitAssetsNewCheckAtIndex(
    int index,
    DtVOrderVisitAssetsStruct Function(DtVOrderVisitAssetsStruct) updateFn,
  ) {
    _stOrderVisitAssetsNewCheck[index] =
        updateFn(_stOrderVisitAssetsNewCheck[index]);
  }

  void insertAtIndexInStOrderVisitAssetsNewCheck(
      int index, DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssetsNewCheck.insert(index, value);
  }

  List<DtVOrderVisitStruct> _stOrderVisitSelected = [];
  List<DtVOrderVisitStruct> get stOrderVisitSelected => _stOrderVisitSelected;
  set stOrderVisitSelected(List<DtVOrderVisitStruct> value) {
    _stOrderVisitSelected = value;
  }

  void addToStOrderVisitSelected(DtVOrderVisitStruct value) {
    _stOrderVisitSelected.add(value);
  }

  void removeFromStOrderVisitSelected(DtVOrderVisitStruct value) {
    _stOrderVisitSelected.remove(value);
  }

  void removeAtIndexFromStOrderVisitSelected(int index) {
    _stOrderVisitSelected.removeAt(index);
  }

  void updateStOrderVisitSelectedAtIndex(
    int index,
    DtVOrderVisitStruct Function(DtVOrderVisitStruct) updateFn,
  ) {
    _stOrderVisitSelected[index] = updateFn(_stOrderVisitSelected[index]);
  }

  void insertAtIndexInStOrderVisitSelected(
      int index, DtVOrderVisitStruct value) {
    _stOrderVisitSelected.insert(index, value);
  }

  String _stAssetNavBarOption = '';
  String get stAssetNavBarOption => _stAssetNavBarOption;
  set stAssetNavBarOption(String value) {
    _stAssetNavBarOption = value;
  }

  String _stOrderVisitShowNavBarOption = '';
  String get stOrderVisitShowNavBarOption => _stOrderVisitShowNavBarOption;
  set stOrderVisitShowNavBarOption(String value) {
    _stOrderVisitShowNavBarOption = value;
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

  List<DtVOrderStruct> _stOrderSelected = [];
  List<DtVOrderStruct> get stOrderSelected => _stOrderSelected;
  set stOrderSelected(List<DtVOrderStruct> value) {
    _stOrderSelected = value;
  }

  void addToStOrderSelected(DtVOrderStruct value) {
    _stOrderSelected.add(value);
  }

  void removeFromStOrderSelected(DtVOrderStruct value) {
    _stOrderSelected.remove(value);
  }

  void removeAtIndexFromStOrderSelected(int index) {
    _stOrderSelected.removeAt(index);
  }

  void updateStOrderSelectedAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _stOrderSelected[index] = updateFn(_stOrderSelected[index]);
  }

  void insertAtIndexInStOrderSelected(int index, DtVOrderStruct value) {
    _stOrderSelected.insert(index, value);
  }

  DtOrderParentNewStruct _stOrderParentNew = DtOrderParentNewStruct();
  DtOrderParentNewStruct get stOrderParentNew => _stOrderParentNew;
  set stOrderParentNew(DtOrderParentNewStruct value) {
    _stOrderParentNew = value;
  }

  void updateStOrderParentNewStruct(Function(DtOrderParentNewStruct) updateFn) {
    updateFn(_stOrderParentNew);
  }

  List<DtVOrderStruct> _stOrderParentSelected = [];
  List<DtVOrderStruct> get stOrderParentSelected => _stOrderParentSelected;
  set stOrderParentSelected(List<DtVOrderStruct> value) {
    _stOrderParentSelected = value;
  }

  void addToStOrderParentSelected(DtVOrderStruct value) {
    _stOrderParentSelected.add(value);
  }

  void removeFromStOrderParentSelected(DtVOrderStruct value) {
    _stOrderParentSelected.remove(value);
  }

  void removeAtIndexFromStOrderParentSelected(int index) {
    _stOrderParentSelected.removeAt(index);
  }

  void updateStOrderParentSelectedAtIndex(
    int index,
    DtVOrderStruct Function(DtVOrderStruct) updateFn,
  ) {
    _stOrderParentSelected[index] = updateFn(_stOrderParentSelected[index]);
  }

  void insertAtIndexInStOrderParentSelected(int index, DtVOrderStruct value) {
    _stOrderParentSelected.insert(index, value);
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

  List<DtVOrderVisitAssetsStruct> _stOrderVisitAssetSelected = [];
  List<DtVOrderVisitAssetsStruct> get stOrderVisitAssetSelected =>
      _stOrderVisitAssetSelected;
  set stOrderVisitAssetSelected(List<DtVOrderVisitAssetsStruct> value) {
    _stOrderVisitAssetSelected = value;
  }

  void addToStOrderVisitAssetSelected(DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssetSelected.add(value);
  }

  void removeFromStOrderVisitAssetSelected(DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssetSelected.remove(value);
  }

  void removeAtIndexFromStOrderVisitAssetSelected(int index) {
    _stOrderVisitAssetSelected.removeAt(index);
  }

  void updateStOrderVisitAssetSelectedAtIndex(
    int index,
    DtVOrderVisitAssetsStruct Function(DtVOrderVisitAssetsStruct) updateFn,
  ) {
    _stOrderVisitAssetSelected[index] =
        updateFn(_stOrderVisitAssetSelected[index]);
  }

  void insertAtIndexInStOrderVisitAssetSelected(
      int index, DtVOrderVisitAssetsStruct value) {
    _stOrderVisitAssetSelected.insert(index, value);
  }

  List<DtVOrderVisitAssetActivityStruct> _stOrderVisitAssetActivities = [];
  List<DtVOrderVisitAssetActivityStruct> get stOrderVisitAssetActivities =>
      _stOrderVisitAssetActivities;
  set stOrderVisitAssetActivities(
      List<DtVOrderVisitAssetActivityStruct> value) {
    _stOrderVisitAssetActivities = value;
  }

  void addToStOrderVisitAssetActivities(
      DtVOrderVisitAssetActivityStruct value) {
    _stOrderVisitAssetActivities.add(value);
  }

  void removeFromStOrderVisitAssetActivities(
      DtVOrderVisitAssetActivityStruct value) {
    _stOrderVisitAssetActivities.remove(value);
  }

  void removeAtIndexFromStOrderVisitAssetActivities(int index) {
    _stOrderVisitAssetActivities.removeAt(index);
  }

  void updateStOrderVisitAssetActivitiesAtIndex(
    int index,
    DtVOrderVisitAssetActivityStruct Function(DtVOrderVisitAssetActivityStruct)
        updateFn,
  ) {
    _stOrderVisitAssetActivities[index] =
        updateFn(_stOrderVisitAssetActivities[index]);
  }

  void insertAtIndexInStOrderVisitAssetActivities(
      int index, DtVOrderVisitAssetActivityStruct value) {
    _stOrderVisitAssetActivities.insert(index, value);
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

  String _asCwOrderVisitServiceAmountFormatted = '';
  String get asCwOrderVisitServiceAmountFormatted =>
      _asCwOrderVisitServiceAmountFormatted;
  set asCwOrderVisitServiceAmountFormatted(String value) {
    _asCwOrderVisitServiceAmountFormatted = value;
  }

  double _asCwOrderVisitServiceAmountDouble = 0.0;
  double get asCwOrderVisitServiceAmountDouble =>
      _asCwOrderVisitServiceAmountDouble;
  set asCwOrderVisitServiceAmountDouble(double value) {
    _asCwOrderVisitServiceAmountDouble = value;
  }

  String _asCwOrderVisitServiceDiscountFormatted = '';
  String get asCwOrderVisitServiceDiscountFormatted =>
      _asCwOrderVisitServiceDiscountFormatted;
  set asCwOrderVisitServiceDiscountFormatted(String value) {
    _asCwOrderVisitServiceDiscountFormatted = value;
  }

  double _asCwOrderVisitServiceDiscountDouble = 0.0;
  double get asCwOrderVisitServiceDiscountDouble =>
      _asCwOrderVisitServiceDiscountDouble;
  set asCwOrderVisitServiceDiscountDouble(double value) {
    _asCwOrderVisitServiceDiscountDouble = value;
  }

  List<DtVOrderVisitServicesStruct> _asOrderVisitSelectedServices = [];
  List<DtVOrderVisitServicesStruct> get asOrderVisitSelectedServices =>
      _asOrderVisitSelectedServices;
  set asOrderVisitSelectedServices(List<DtVOrderVisitServicesStruct> value) {
    _asOrderVisitSelectedServices = value;
  }

  void addToAsOrderVisitSelectedServices(DtVOrderVisitServicesStruct value) {
    _asOrderVisitSelectedServices.add(value);
  }

  void removeFromAsOrderVisitSelectedServices(
      DtVOrderVisitServicesStruct value) {
    _asOrderVisitSelectedServices.remove(value);
  }

  void removeAtIndexFromAsOrderVisitSelectedServices(int index) {
    _asOrderVisitSelectedServices.removeAt(index);
  }

  void updateAsOrderVisitSelectedServicesAtIndex(
    int index,
    DtVOrderVisitServicesStruct Function(DtVOrderVisitServicesStruct) updateFn,
  ) {
    _asOrderVisitSelectedServices[index] =
        updateFn(_asOrderVisitSelectedServices[index]);
  }

  void insertAtIndexInAsOrderVisitSelectedServices(
      int index, DtVOrderVisitServicesStruct value) {
    _asOrderVisitSelectedServices.insert(index, value);
  }

  double _asOrderVisitSelectedServicesTotal = 0.0;
  double get asOrderVisitSelectedServicesTotal =>
      _asOrderVisitSelectedServicesTotal;
  set asOrderVisitSelectedServicesTotal(double value) {
    _asOrderVisitSelectedServicesTotal = value;
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

  List<DtVUserPermissionsStruct> _asUserPermissions = [];
  List<DtVUserPermissionsStruct> get asUserPermissions => _asUserPermissions;
  set asUserPermissions(List<DtVUserPermissionsStruct> value) {
    _asUserPermissions = value;
    prefs.setStringList(
        'ff_asUserPermissions', value.map((x) => x.serialize()).toList());
  }

  void addToAsUserPermissions(DtVUserPermissionsStruct value) {
    _asUserPermissions.add(value);
    prefs.setStringList('ff_asUserPermissions',
        _asUserPermissions.map((x) => x.serialize()).toList());
  }

  void removeFromAsUserPermissions(DtVUserPermissionsStruct value) {
    _asUserPermissions.remove(value);
    prefs.setStringList('ff_asUserPermissions',
        _asUserPermissions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAsUserPermissions(int index) {
    _asUserPermissions.removeAt(index);
    prefs.setStringList('ff_asUserPermissions',
        _asUserPermissions.map((x) => x.serialize()).toList());
  }

  void updateAsUserPermissionsAtIndex(
    int index,
    DtVUserPermissionsStruct Function(DtVUserPermissionsStruct) updateFn,
  ) {
    _asUserPermissions[index] = updateFn(_asUserPermissions[index]);
    prefs.setStringList('ff_asUserPermissions',
        _asUserPermissions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAsUserPermissions(
      int index, DtVUserPermissionsStruct value) {
    _asUserPermissions.insert(index, value);
    prefs.setStringList('ff_asUserPermissions',
        _asUserPermissions.map((x) => x.serialize()).toList());
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
