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
      if (prefs.containsKey('ff_stUserCurrent')) {
        try {
          final serializedData = prefs.getString('ff_stUserCurrent') ?? '{}';
          _stUserCurrent =
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DtUserStruct _stUserCurrent = DtUserStruct();
  DtUserStruct get stUserCurrent => _stUserCurrent;
  set stUserCurrent(DtUserStruct value) {
    _stUserCurrent = value;
    prefs.setString('ff_stUserCurrent', value.serialize());
  }

  void updateStUserCurrentStruct(Function(DtUserStruct) updateFn) {
    updateFn(_stUserCurrent);
    prefs.setString('ff_stUserCurrent', _stUserCurrent.serialize());
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

  List<DtAssetStruct> _stAssets = [];
  List<DtAssetStruct> get stAssets => _stAssets;
  set stAssets(List<DtAssetStruct> value) {
    _stAssets = value;
  }

  void addToStAssets(DtAssetStruct value) {
    _stAssets.add(value);
  }

  void removeFromStAssets(DtAssetStruct value) {
    _stAssets.remove(value);
  }

  void removeAtIndexFromStAssets(int index) {
    _stAssets.removeAt(index);
  }

  void updateStAssetsAtIndex(
    int index,
    DtAssetStruct Function(DtAssetStruct) updateFn,
  ) {
    _stAssets[index] = updateFn(_stAssets[index]);
  }

  void insertAtIndexInStAssets(int index, DtAssetStruct value) {
    _stAssets.insert(index, value);
  }

  DtAssetStruct _stAssetSelected = DtAssetStruct();
  DtAssetStruct get stAssetSelected => _stAssetSelected;
  set stAssetSelected(DtAssetStruct value) {
    _stAssetSelected = value;
  }

  void updateStAssetSelectedStruct(Function(DtAssetStruct) updateFn) {
    updateFn(_stAssetSelected);
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

  DtVOrderVisitAssetStruct _stOrderVisitAssetSelected =
      DtVOrderVisitAssetStruct();
  DtVOrderVisitAssetStruct get stOrderVisitAssetSelected =>
      _stOrderVisitAssetSelected;
  set stOrderVisitAssetSelected(DtVOrderVisitAssetStruct value) {
    _stOrderVisitAssetSelected = value;
  }

  void updateStOrderVisitAssetSelectedStruct(
      Function(DtVOrderVisitAssetStruct) updateFn) {
    updateFn(_stOrderVisitAssetSelected);
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

  int _stOrdervisitAssetsReportedAmount = 0;
  int get stOrdervisitAssetsReportedAmount => _stOrdervisitAssetsReportedAmount;
  set stOrdervisitAssetsReportedAmount(int value) {
    _stOrdervisitAssetsReportedAmount = value;
  }

  int _stOrdervisitAssetsDisapprovedAmount = 0;
  int get stOrdervisitAssetsDisapprovedAmount =>
      _stOrdervisitAssetsDisapprovedAmount;
  set stOrdervisitAssetsDisapprovedAmount(int value) {
    _stOrdervisitAssetsDisapprovedAmount = value;
  }

  int _stOrdervisitAssetsApprovedAmount = 0;
  int get stOrdervisitAssetsApprovedAmount => _stOrdervisitAssetsApprovedAmount;
  set stOrdervisitAssetsApprovedAmount(int value) {
    _stOrdervisitAssetsApprovedAmount = value;
  }

  DtVOrderParentStruct _stOrderParentSelected = DtVOrderParentStruct();
  DtVOrderParentStruct get stOrderParentSelected => _stOrderParentSelected;
  set stOrderParentSelected(DtVOrderParentStruct value) {
    _stOrderParentSelected = value;
  }

  void updateStOrderParentSelectedStruct(
      Function(DtVOrderParentStruct) updateFn) {
    updateFn(_stOrderParentSelected);
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