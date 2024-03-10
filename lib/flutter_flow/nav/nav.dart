import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn ? const NavBarPage() : const PgSigninWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const PgSigninWidget(),
        ),
        FFRoute(
          name: 'pgSignin',
          path: '/pgSignin',
          builder: (context, params) => const PgSigninWidget(),
        ),
        FFRoute(
          name: 'auth_2_ForgotPassword',
          path: '/auth2ForgotPassword',
          builder: (context, params) => const Auth2ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'pgSignupProfile',
          path: '/pgSignupProfile',
          requireAuth: true,
          builder: (context, params) => const PgSignupProfileWidget(),
        ),
        FFRoute(
          name: 'pgSignupEmailPassword',
          path: '/pgSignupEmailPassword',
          builder: (context, params) => const PgSignupEmailPasswordWidget(),
        ),
        FFRoute(
          name: 'pgMyProfile',
          path: '/pgMyProfile',
          requireAuth: true,
          builder: (context, params) => const PgMyProfileWidget(),
        ),
        FFRoute(
          name: 'pgUnitsSearch',
          path: '/pgUnitsSearch',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'pgUnitsSearch')
              : const PgUnitsSearchWidget(),
        ),
        FFRoute(
          name: 'pgUnitsNew',
          path: '/pgUnitsNew',
          requireAuth: true,
          builder: (context, params) => const PgUnitsNewWidget(),
        ),
        FFRoute(
          name: 'pgDBAdmin',
          path: '/pgDBAdmin',
          requireAuth: true,
          builder: (context, params) => const PgDBAdminWidget(),
        ),
        FFRoute(
          name: 'pgSettingsDepartment',
          path: '/pgSettingsDepartment',
          requireAuth: true,
          builder: (context, params) => const PgSettingsDepartmentWidget(),
        ),
        FFRoute(
          name: 'pgSettingUsers',
          path: '/pgSettingUsers',
          requireAuth: true,
          builder: (context, params) => const PgSettingUsersWidget(),
        ),
        FFRoute(
          name: 'pgDBUserVisits',
          path: '/pgDBUserVisits',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'pgDBUserVisits')
              : const PgDBUserVisitsWidget(),
        ),
        FFRoute(
          name: 'pgOrderParentShow',
          path: '/pgOrderParentShow',
          requireAuth: true,
          builder: (context, params) => PgOrderParentShowWidget(
            orderId: params.getParam('orderId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'pgOrderShow',
          path: '/pgOrderShow',
          requireAuth: true,
          builder: (context, params) => PgOrderShowWidget(
            orderId: params.getParam('orderId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'pgUserNotifications',
          path: '/pgUserNotifications',
          builder: (context, params) => const PgUserNotificationsWidget(),
        ),
        FFRoute(
          name: 'pgUnitShowOri',
          path: '/pgUnitShowOri',
          requireAuth: true,
          builder: (context, params) => PgUnitShowOriWidget(
            unitId: params.getParam('unitId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'pgMyTeam',
          path: '/pgMyTeam',
          requireAuth: true,
          builder: (context, params) => PgMyTeamWidget(
            visitId: params.getParam('visitId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Home13Productivity',
          path: '/home13Productivity',
          builder: (context, params) => const Home13ProductivityWidget(),
        ),
        FFRoute(
          name: 'pgOVShow',
          path: '/pgOVShow',
          requireAuth: true,
          builder: (context, params) => PgOVShowWidget(
            visitId: params.getParam('visitId', ParamType.int),
            orderId: params.getParam('orderId', ParamType.int),
            appPageId009: params.getParam('appPageId009', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'pgOVAsset1Search',
          path: '/pgOVAsset1Search',
          requireAuth: true,
          builder: (context, params) => PgOVAsset1SearchWidget(
            visitId: params.getParam('visitId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'List11Messages',
          path: '/list11Messages',
          builder: (context, params) => const List11MessagesWidget(),
        ),
        FFRoute(
          name: 'pgOVAsset3ActivitiesSearch',
          path: '/pgOVAsset3ActivitiesSearch',
          requireAuth: true,
          builder: (context, params) => const PgOVAsset3ActivitiesSearchWidget(),
        ),
        FFRoute(
          name: 'pgOrderVisitAsset2Before',
          path: '/pgOrderVisitAsset2Before',
          requireAuth: true,
          builder: (context, params) => PgOrderVisitAsset2BeforeWidget(
            operation: params.getParam('operation', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Create3SupportTicketBugReport',
          path: '/create3SupportTicketBugReport',
          builder: (context, params) => const Create3SupportTicketBugReportWidget(),
        ),
        FFRoute(
          name: 'pgOrderVisitAssetMoving',
          path: '/pgOrderVisitAssetMoving',
          requireAuth: true,
          builder: (context, params) => const PgOrderVisitAssetMovingWidget(),
        ),
        FFRoute(
          name: 'Profile09',
          path: '/profile09',
          builder: (context, params) => const Profile09Widget(),
        ),
        FFRoute(
          name: 'Home12Activity',
          path: '/home12Activity',
          builder: (context, params) => const Home12ActivityWidget(),
        ),
        FFRoute(
          name: 'Home09Dashboard',
          path: '/home09Dashboard',
          builder: (context, params) => const Home09DashboardWidget(),
        ),
        FFRoute(
          name: 'pgAssetsSearch',
          path: '/pgAssetsSearch',
          requireAuth: true,
          builder: (context, params) => const PgAssetsSearchWidget(),
        ),
        FFRoute(
          name: 'pgAssetShow',
          path: '/pgAssetShow',
          requireAuth: true,
          builder: (context, params) => const PgAssetShowWidget(),
        ),
        FFRoute(
          name: 'Home24BankFintechDashboard',
          path: '/home24BankFintechDashboard',
          builder: (context, params) => const Home24BankFintechDashboardWidget(),
        ),
        FFRoute(
          name: 'Details38TransactionHistoryResponsive',
          path: '/details38TransactionHistoryResponsive',
          builder: (context, params) =>
              const Details38TransactionHistoryResponsiveWidget(),
        ),
        FFRoute(
          name: 'Details37Transaction',
          path: '/details37Transaction',
          builder: (context, params) => const Details37TransactionWidget(),
        ),
        FFRoute(
          name: 'Details03ProductFood',
          path: '/details03ProductFood',
          builder: (context, params) => const Details03ProductFoodWidget(),
        ),
        FFRoute(
          name: 'Profile07',
          path: '/profile07',
          builder: (context, params) => const Profile07Widget(),
        ),
        FFRoute(
          name: 'pgAccessDenied',
          path: '/pgAccessDenied',
          builder: (context, params) => const PgAccessDeniedWidget(),
        ),
        FFRoute(
          name: 'pgDashOrdersInProgressMap',
          path: '/pgDashOrdersInProgressMap',
          requireAuth: true,
          builder: (context, params) => const PgDashOrdersInProgressMapWidget(),
        ),
        FFRoute(
          name: 'Success03',
          path: '/success03',
          builder: (context, params) => const Success03Widget(),
        ),
        FFRoute(
          name: 'audioChatDemo',
          path: '/audioChatDemo',
          builder: (context, params) => const AudioChatDemoWidget(),
        ),
        FFRoute(
          name: 'Details22Task',
          path: '/details22Task',
          builder: (context, params) => const Details22TaskWidget(),
        ),
        FFRoute(
          name: 'pgUnitShow',
          path: '/pgUnitShow',
          requireAuth: true,
          builder: (context, params) => PgUnitShowWidget(
            unitId: params.getParam('unitId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'pgOrderParentNew',
          path: '/pgOrderParentNew',
          requireAuth: true,
          builder: (context, params) => const PgOrderParentNewWidget(),
        ),
        FFRoute(
          name: 'pgOrderProgramming',
          path: '/pgOrderProgramming',
          requireAuth: true,
          builder: (context, params) => PgOrderProgrammingWidget(
            orderId: params.getParam('orderId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'pgDashboardUserOrders',
          path: '/pgDashboardUserOrders',
          requireAuth: true,
          builder: (context, params) => const PgDashboardUserOrdersWidget(),
        ),
        FFRoute(
          name: 'pgOVServicesSearch',
          path: '/pgOrdersVisitsServicesSearch',
          requireAuth: true,
          builder: (context, params) => const PgOVServicesSearchWidget(),
        ),
        FFRoute(
          name: 'Details03TransactionsSummary',
          path: '/details03TransactionsSummary',
          builder: (context, params) => const Details03TransactionsSummaryWidget(),
        ),
        FFRoute(
          name: 'Details43WorkoutSummary',
          path: '/details43WorkoutSummary',
          builder: (context, params) => const Details43WorkoutSummaryWidget(),
        ),
        FFRoute(
          name: 'pgOVSearch',
          path: '/pgOVSearch',
          requireAuth: true,
          builder: (context, params) => const PgOVSearchWidget(),
        ),
        FFRoute(
          name: 'Details03TransactionsSummary1',
          path: '/details03TransactionsSummary1',
          builder: (context, params) => const Details03TransactionsSummary1Widget(),
        ),
        FFRoute(
          name: 'qwerty',
          path: '/qwerty',
          builder: (context, params) => const QwertyWidget(),
        ),
        FFRoute(
          name: 'pgDBUserOrders',
          path: '/pgDBUserOrders',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'pgDBUserOrders')
              : const PgDBUserOrdersWidget(),
        ),
        FFRoute(
          name: 'Details19TransactionBudget',
          path: '/details19TransactionBudget',
          builder: (context, params) => const Details19TransactionBudgetWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/pgSignin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.location.startsWith('/link') &&
        widget.state.location.contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
