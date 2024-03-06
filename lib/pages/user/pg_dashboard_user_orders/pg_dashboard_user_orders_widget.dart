import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_v_in_progress_show/cp_o_v_in_progress_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_dashboard_user_orders_model.dart';
export 'pg_dashboard_user_orders_model.dart';

class PgDashboardUserOrdersWidget extends StatefulWidget {
  const PgDashboardUserOrdersWidget({super.key});

  @override
  State<PgDashboardUserOrdersWidget> createState() =>
      _PgDashboardUserOrdersWidgetState();
}

class _PgDashboardUserOrdersWidgetState
    extends State<PgDashboardUserOrdersWidget> {
  late PgDashboardUserOrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDashboardUserOrdersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abUserUpdate(
        context,
        abEmail: FFAppState().asUserCurrent.email,
        abAccessToken: FFAppState().asUserCurrent.accessToken,
      );
      await action_blocks.abFcmToken(context);
      await actions.caSupabaseDisconnect(
        'orders',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'orders',
        () async {},
      );
      if (FFAppState().asUserCurrent.statusId != 2) {
        if (FFAppState().asUserCurrent.statusId == 1) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Ops ...'),
                content:
                    const Text('A sua conta encontra-se em Análise. Favor aguardar.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Ops ...'),
                content: const Text('A sua conta encontra-se Inativa.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
        }

        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        _model.apiResultqrx = await ApiAuthGroup.authLogoutCall.call(
          accessToken: FFAppState().asUserCurrent.accessToken,
        );

        context.pushNamedAuth('pgSignin', context.mounted);

        return;
      }
      if (FFAppState().asUserCurrent.orderVisitIdInProgress > 0) {
        await action_blocks.abOrderVisitSelected(
          context,
          abOrderVisitId: FFAppState().asUserCurrent.orderVisitIdInProgress,
        );
        setState(() {});
        await action_blocks.abOrderSelected(
          context,
          abOrderId: valueOrDefault<int>(
            FFAppState().stOVSelected.first.id,
            1,
          ),
        );
        setState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('FloatingActionButton pressed ...');
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {
                  _model.lpsvOrdersView = 'ordersAnalysis';
                });

                context.pushNamed('pgOrderParentNew');
              },
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            ),
          ),
          endDrawer: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.cpMenuModel,
              updateCallback: () => setState(() {}),
              child: const CpMenuWidget(),
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Minhas Ordens',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                wrapWithModel(
                  model: _model.cpNotificationsIconModel,
                  updateCallback: () => setState(() {}),
                  child: const CpNotificationsIconWidget(),
                ),
              ],
            ),
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cpOVInProgressShowModel,
                        updateCallback: () => setState(() {}),
                        child: CpOVInProgressShowWidget(
                          orderId: FFAppState().asUserCurrent.orderIdInProgress,
                          orderVisitId:
                              FFAppState().asUserCurrent.orderVisitIdInProgress,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
