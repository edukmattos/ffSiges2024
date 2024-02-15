import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/orders/cp_order_visit_asset_list_item_card/cp_order_visit_asset_list_item_card_widget.dart';
import '/pages/visits/cp_order_visit_card2_show/cp_order_visit_card2_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'pg_order_visit_show_model.dart';
export 'pg_order_visit_show_model.dart';

class PgOrderVisitShowWidget extends StatefulWidget {
  const PgOrderVisitShowWidget({
    super.key,
    required this.visitId,
    required this.orderId,
  });

  final int? visitId;
  final int? orderId;

  @override
  State<PgOrderVisitShowWidget> createState() => _PgOrderVisitShowWidgetState();
}

class _PgOrderVisitShowWidgetState extends State<PgOrderVisitShowWidget> {
  late PgOrderVisitShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrderVisitShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abOrderVisitSelected(
        context,
        abOrderVisitId: widget.visitId,
      );
      setState(() {});
      await action_blocks.abOrderSelected(
        context,
        abOrderId: valueOrDefault<int>(
          FFAppState().stOrderVisitSelected.first.orderId,
          1,
        ),
      );
      await actions.caSupabaseDisconnect(
        'ordersVisits',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisits',
        () async {},
      );
      setState(() => _model.requestCompleter = null);
      await _model.waitForRequestCompleted();
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
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

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
              context.pushNamed('pgDashboardUserVisits');
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Atendimento',
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
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: FutureBuilder<List<VOrdersVisitsRow>>(
                future: VOrdersVisitsTable().querySingleRow(
                  queryFn: (q) => q.eq(
                    'id',
                    widget.visitId,
                  ),
                ),
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
                  List<VOrdersVisitsRow> columnVOrdersVisitsRowList =
                      snapshot.data!;
                  final columnVOrdersVisitsRow =
                      columnVOrdersVisitsRowList.isNotEmpty
                          ? columnVOrdersVisitsRowList.first
                          : null;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.cpOrderCardShowModel,
                          updateCallback: () => setState(() {}),
                          child: CpOrderCardShowWidget(
                            orderId: valueOrDefault<int>(
                              FFAppState().stOrderVisitSelected.first.orderId,
                              1,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: wrapWithModel(
                            model: _model.cpOrderVisitCard2ShowModel,
                            updateCallback: () => setState(() {}),
                            child: CpOrderVisitCard2ShowWidget(
                              visitId: valueOrDefault<int>(
                                FFAppState().stOrderVisitSelected.first.id,
                                1,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: wrapWithModel(
                                model: _model
                                    .cpOrderVisitAssetShowBottomNavBarModel,
                                updateCallback: () => setState(() {}),
                                child:
                                    const CpOrderVisitAssetShowBottomNavBarWidget(),
                              ),
                            ),
                            if (valueOrDefault<int>(
                                  FFAppState()
                                      .stOrderVisitSelected
                                      .first
                                      .processingId,
                                  1,
                                ) !=
                                4)
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 12.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.add,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 24.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: () async {
                                  await action_blocks.abPermissionCheck(
                                    context,
                                    abAppPageId: 1,
                                    abUserProfileId: valueOrDefault<int>(
                                      FFAppState().stUserCurrent.profileId,
                                      0,
                                    ),
                                  );
                                  if (FFAppState().stIsPermission) {
                                    context.pushNamed(
                                      'pgOrderVisitAsset1Search',
                                      queryParameters: {
                                        'visitId': serializeParam(
                                          widget.visitId,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    return;
                                  }
                                },
                              ),
                          ],
                        ),
                        if (FFAppState().stOrderVisitShowNavBarOption ==
                            'assets')
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FutureBuilder<List<VOrdersVisitsAssetsRow>>(
                                  future:
                                      (_model.requestCompleter ??= Completer<
                                              List<VOrdersVisitsAssetsRow>>()
                                            ..complete(
                                                VOrdersVisitsAssetsTable()
                                                    .queryRows(
                                              queryFn: (q) => q.eq(
                                                'orderVisitId',
                                                valueOrDefault<int>(
                                                  FFAppState()
                                                      .stOrderVisitSelected
                                                      .first
                                                      .id,
                                                  1,
                                                ),
                                              ),
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VOrdersVisitsAssetsRow>
                                        listViewVOrdersVisitsAssetsRowList =
                                        snapshot.data!;
                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewVOrdersVisitsAssetsRowList
                                              .length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 12.0),
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewVOrdersVisitsAssetsRow =
                                            listViewVOrdersVisitsAssetsRowList[
                                                listViewIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await action_blocks
                                                .abOrderVisitAssetSelected(
                                              context,
                                              abOrderVisitAssetId:
                                                  valueOrDefault<int>(
                                                listViewVOrdersVisitsAssetsRow
                                                    .id,
                                                0,
                                              ),
                                            );

                                            context.pushNamed(
                                              'pgOrderVisitAsset2Before',
                                              queryParameters: {
                                                'operation': serializeParam(
                                                  'before',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child:
                                              CpOrderVisitAssetListItemCardWidget(
                                            key: Key(
                                                'Key8dc_${listViewIndex}_of_${listViewVOrdersVisitsAssetsRowList.length}'),
                                            code: listViewVOrdersVisitsAssetsRow
                                                .code!,
                                            statusDescription:
                                                listViewVOrdersVisitsAssetsRow
                                                    .beforeStatusDescription!,
                                            description:
                                                listViewVOrdersVisitsAssetsRow
                                                    .description!,
                                            tagDescription:
                                                listViewVOrdersVisitsAssetsRow
                                                    .beforeTagDescription!,
                                            tagSubDescription:
                                                listViewVOrdersVisitsAssetsRow
                                                    .beforeTagSubDescription!,
                                            processingId:
                                                listViewVOrdersVisitsAssetsRow
                                                    .processingId!,
                                            isMoved:
                                                listViewVOrdersVisitsAssetsRow
                                                    .isMoved!,
                                            unitDescription:
                                                valueOrDefault<String>(
                                              listViewVOrdersVisitsAssetsRow
                                                  .beforeUnitDescription,
                                              'unitDescription',
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
