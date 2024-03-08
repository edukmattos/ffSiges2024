import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/settings/cp_users_list_item/cp_users_list_item_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_setting_users_model.dart';
export 'pg_setting_users_model.dart';

class PgSettingUsersWidget extends StatefulWidget {
  const PgSettingUsersWidget({super.key});

  @override
  State<PgSettingUsersWidget> createState() => _PgSettingUsersWidgetState();
}

class _PgSettingUsersWidgetState extends State<PgSettingUsersWidget>
    with TickerProviderStateMixin {
  late PgSettingUsersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgSettingUsersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'users',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'users',
        () async {
          setState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        },
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Usuários',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: FutureBuilder<List<VUsersRow>>(
                      future: (_model.requestCompleter ??=
                              Completer<List<VUsersRow>>()
                                ..complete(VUsersTable().queryRows(
                                  queryFn: (q) => q.order('nameFull'),
                                )))
                          .future,
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<VUsersRow> tabBarVUsersRowList = snapshot.data!;
                        return Column(
                          children: [
                            Align(
                              alignment: const Alignment(0.0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: true,
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                unselectedLabelStyle: const TextStyle(),
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                unselectedBackgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 12.0,
                                elevation: 0.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                tabs: const [
                                  Tab(
                                    text: 'Análise',
                                  ),
                                  Tab(
                                    text: 'Inativos',
                                  ),
                                  Tab(
                                    text: 'Ativos',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}, () async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final usersWaiting = tabBarVUsersRowList
                                          .where((e) => e.statusId == 1)
                                          .toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount: usersWaiting.length,
                                        itemBuilder:
                                            (context, usersWaitingIndex) {
                                          final usersWaitingItem =
                                              usersWaiting[usersWaitingIndex];
                                          return CpUsersListItemWidget(
                                            key: Key(
                                                'Key9py_${usersWaitingIndex}_of_${usersWaiting.length}'),
                                            userId: usersWaitingItem.id!,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final usersDesactived =
                                          tabBarVUsersRowList
                                              .where((e) => e.statusId == 3)
                                              .toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount: usersDesactived.length,
                                        itemBuilder:
                                            (context, usersDesactivedIndex) {
                                          final usersDesactivedItem =
                                              usersDesactived[
                                                  usersDesactivedIndex];
                                          return CpUsersListItemWidget(
                                            key: Key(
                                                'Key34e_${usersDesactivedIndex}_of_${usersDesactived.length}'),
                                            userId: usersDesactivedItem.id!,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final usersActived = tabBarVUsersRowList
                                          .where((e) => e.statusId == 2)
                                          .toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount: usersActived.length,
                                        itemBuilder:
                                            (context, usersActivedIndex) {
                                          final usersActivedItem =
                                              usersActived[usersActivedIndex];
                                          return CpUsersListItemWidget(
                                            key: Key(
                                                'Key0mz_${usersActivedIndex}_of_${usersActived.length}'),
                                            userId: usersActivedItem.id!,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
