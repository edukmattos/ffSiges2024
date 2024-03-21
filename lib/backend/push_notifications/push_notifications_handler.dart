import 'dart:async';

import 'serialization_util.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: const Color(0xFF4744E1),
          child: Center(
            child: Image.asset(
              'assets/images/67.jpeg',
              width: 150.0,
              fit: BoxFit.fitHeight,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'pgSignin': ParameterData.none(),
  'auth_2_ForgotPassword': ParameterData.none(),
  'pgSignupProfile': ParameterData.none(),
  'pgSignupEmailPassword': ParameterData.none(),
  'pgMyProfile': ParameterData.none(),
  'pgUnitsSearch': ParameterData.none(),
  'pgUnitsNew': ParameterData.none(),
  'pgDBAdmin': ParameterData.none(),
  'pgSettingsDepartment': ParameterData.none(),
  'pgSettingUsers': ParameterData.none(),
  'pgDBUserVisits': ParameterData.none(),
  'pgOPShowOrig': (data) async => ParameterData(
        allParams: {
          'orderParentId': getParameter<int>(data, 'orderParentId'),
        },
      ),
  'pgOShow': (data) async => ParameterData(
        allParams: {
          'orderId': getParameter<int>(data, 'orderId'),
        },
      ),
  'pgUserNotifications': ParameterData.none(),
  'pgUnitShowOri': (data) async => ParameterData(
        allParams: {
          'unitId': getParameter<int>(data, 'unitId'),
        },
      ),
  'Home13Productivity': ParameterData.none(),
  'pgOVShowOrig': (data) async => ParameterData(
        allParams: {
          'ppOVId': getParameter<int>(data, 'ppOVId'),
          'ppOId': getParameter<int>(data, 'ppOId'),
          'ppProcessingId': getParameter<int>(data, 'ppProcessingId'),
          'ppUnitId': getParameter<int>(data, 'ppUnitId'),
          'ppOPId': getParameter<int>(data, 'ppOPId'),
        },
      ),
  'pgOVAsset1Search': (data) async => ParameterData(
        allParams: {
          'oVId': getParameter<int>(data, 'oVId'),
          'unitId': getParameter<int>(data, 'unitId'),
          'orderId': getParameter<int>(data, 'orderId'),
          'oPId': getParameter<int>(data, 'oPId'),
        },
      ),
  'List11Messages': ParameterData.none(),
  'pgOVAsset3ActivitiesSearch': ParameterData.none(),
  'pgOVAsset2Before': (data) async => ParameterData(
        allParams: {
          'ppOperation': getParameter<String>(data, 'ppOperation'),
        },
      ),
  'Create3SupportTicketBugReport': ParameterData.none(),
  'pgOVAssetMoving': ParameterData.none(),
  'Profile09': ParameterData.none(),
  'Home12Activity': ParameterData.none(),
  'Home09Dashboard': ParameterData.none(),
  'pgAssetsSearch': ParameterData.none(),
  'Home24BankFintechDashboard': ParameterData.none(),
  'Details38TransactionHistoryResponsive': ParameterData.none(),
  'Details37Transaction': ParameterData.none(),
  'Details03ProductFood': ParameterData.none(),
  'Profile07': ParameterData.none(),
  'pgAccessDenied': ParameterData.none(),
  'pgDashOrdersInProgressMap': ParameterData.none(),
  'Success03': ParameterData.none(),
  'audioChatDemo': ParameterData.none(),
  'Details22Task': ParameterData.none(),
  'pgUnitShow': (data) async => ParameterData(
        allParams: {
          'unitId': getParameter<int>(data, 'unitId'),
        },
      ),
  'pgOPNew': ParameterData.none(),
  'pgOProgramming': (data) async => ParameterData(
        allParams: {
          'orderParentId': getParameter<int>(data, 'orderParentId'),
        },
      ),
  'pgDashboardUserOrders': ParameterData.none(),
  'pgOVServicesSearch': (data) async => ParameterData(
        allParams: {
          'ppOVId': getParameter<int>(data, 'ppOVId'),
        },
      ),
  'Details03TransactionsSummary': ParameterData.none(),
  'Details43WorkoutSummary': ParameterData.none(),
  'pgOVSearch': ParameterData.none(),
  'Details03TransactionsSummary1': ParameterData.none(),
  'qwerty': ParameterData.none(),
  'pgDBUserOrders': ParameterData.none(),
  'Details19TransactionBudget': ParameterData.none(),
  'pgAssetShow': (data) async => ParameterData(
        allParams: {
          'ppView': getParameter<String>(data, 'ppView'),
          'ppAssetId': getParameter<int>(data, 'ppAssetId'),
        },
      ),
  'List17Notifications': ParameterData.none(),
  'List17Notificationsqq': ParameterData.none(),
  'pgMyProfileVehicleList': ParameterData.none(),
  'List06UserSearch': ParameterData.none(),
  'pgMyTeamCopy': (data) async => ParameterData(
        allParams: {
          'visitId': getParameter<int>(data, 'visitId'),
        },
      ),
  'pgMyTeam': ParameterData.none(),
  'Home07Invoices': ParameterData.none(),
  'Home07Invoicesee': ParameterData.none(),
  'pgOVMyTeam': ParameterData.none(),
  'pgOPSearch': (data) async => ParameterData(
        allParams: {
          'orderParentId': getParameter<int>(data, 'orderParentId'),
        },
      ),
  'pgOPSearchCol': ParameterData.none(),
  'pgOPShow': (data) async => ParameterData(
        allParams: {
          'ppOPId': getParameter<int>(data, 'ppOPId'),
        },
      ),
  'pgOPShow1': ParameterData.none(),
  'pgONew': (data) async => ParameterData(
        allParams: {
          'orderParentId': getParameter<int>(data, 'orderParentId'),
        },
      ),
  'djklasdj': ParameterData.none(),
  'pgOVAssetApproved': (data) async => ParameterData(
        allParams: {
          'ppOVAssetId': getParameter<int>(data, 'ppOVAssetId'),
        },
      ),
  'pgOVShow': (data) async => ParameterData(
        allParams: {
          'ppOVId': getParameter<int>(data, 'ppOVId'),
          'ppOId': getParameter<int>(data, 'ppOId'),
          'ppOPId': getParameter<int>(data, 'ppOPId'),
          'ppProcessingId': getParameter<int>(data, 'ppProcessingId'),
          'ppUnitId': getParameter<int>(data, 'ppUnitId'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
