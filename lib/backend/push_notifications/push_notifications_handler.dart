import 'dart:async';

import 'serialization_util.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
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
          color: FlutterFlowTheme.of(context).primary,
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
  'pgOrderParentShow': (data) async => ParameterData(
        allParams: {
          'orderId': getParameter<int>(data, 'orderId'),
        },
      ),
  'pgOrderShow': (data) async => ParameterData(
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
  'pgMyTeam': (data) async => ParameterData(
        allParams: {
          'visitId': getParameter<int>(data, 'visitId'),
        },
      ),
  'Home13Productivity': ParameterData.none(),
  'pgOVShow': (data) async => ParameterData(
        allParams: {
          'visitId': getParameter<int>(data, 'visitId'),
          'orderId': getParameter<int>(data, 'orderId'),
          'appPageId009': getParameter<int>(data, 'appPageId009'),
        },
      ),
  'pgOVAsset1Search': (data) async => ParameterData(
        allParams: {
          'visitId': getParameter<int>(data, 'visitId'),
        },
      ),
  'List11Messages': ParameterData.none(),
  'pgOVAsset3ActivitiesSearch': ParameterData.none(),
  'pgOrderVisitAsset2Before': (data) async => ParameterData(
        allParams: {
          'operation': getParameter<String>(data, 'operation'),
        },
      ),
  'Create3SupportTicketBugReport': ParameterData.none(),
  'pgOrderVisitAssetMoving': ParameterData.none(),
  'Profile09': ParameterData.none(),
  'Home12Activity': ParameterData.none(),
  'Home09Dashboard': ParameterData.none(),
  'pgAssetsSearch': ParameterData.none(),
  'pgAssetShow': ParameterData.none(),
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
  'pgOrderParentNew': ParameterData.none(),
  'pgOrderProgramming': (data) async => ParameterData(
        allParams: {
          'orderId': getParameter<int>(data, 'orderId'),
        },
      ),
  'pgDashboardUserOrders': ParameterData.none(),
  'pgOVServicesSearch': ParameterData.none(),
  'Details03TransactionsSummary': ParameterData.none(),
  'Details43WorkoutSummary': ParameterData.none(),
  'pgOVSearch': ParameterData.none(),
  'Details03TransactionsSummary1': ParameterData.none(),
  'qwerty': ParameterData.none(),
  'pgDBUserOrders': ParameterData.none(),
  'Details19TransactionBudget': ParameterData.none(),
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
