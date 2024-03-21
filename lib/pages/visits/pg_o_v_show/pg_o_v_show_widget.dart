import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import '/pages/visits/cp_o_v_services_list/cp_o_v_services_list_widget.dart';
import '/pages/visits/cp_o_v_vehicles_list_item/cp_o_v_vehicles_list_item_widget.dart';
import '/pages/visits/md_o_v_vehicle_new/md_o_v_vehicle_new_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_show_model.dart';
export 'pg_o_v_show_model.dart';

class PgOVShowWidget extends StatefulWidget {
  const PgOVShowWidget({
    super.key,
    int? ppOVId,
    int? ppOId,
    int? ppOPId,
    int? ppProcessingId,
    int? ppUnitId,
  })  : ppOVId = ppOVId ?? 1,
        ppOId = ppOId ?? 1,
        ppOPId = ppOPId ?? 1,
        ppProcessingId = ppProcessingId ?? 1,
        ppUnitId = ppUnitId ?? 1;

  final int ppOVId;
  final int ppOId;
  final int ppOPId;
  final int ppProcessingId;
  final int ppUnitId;

  @override
  State<PgOVShowWidget> createState() => _PgOVShowWidgetState();
}

class _PgOVShowWidgetState extends State<PgOVShowWidget>
    with TickerProviderStateMixin {
  late PgOVShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'choiceChipsOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 110.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'ordersVisits',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisits',
        () async {},
      );
      await actions.caSupabaseDisconnect(
        'ordersVisitsServices',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisitsServices',
        () async {
          setState(() => _model.requestCompleter2 = null);
          await _model.waitForRequestCompleted2();
        },
      );
      await actions.caSupabaseDisconnect(
        'ordersVisitsVehicles',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisitsVehicles',
        () async {
          setState(() => _model.requestCompleter1 = null);
          await _model.waitForRequestCompleted1();
        },
      );
      if (widget.ppProcessingId != 4) {
        await action_blocks.abOVProcessingCheck(
          context,
          abOVId: widget.ppOVId,
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
            'Atendimento',
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
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.cpOCardShowModel,
                      updateCallback: () => setState(() {}),
                      child: CpOCardShowWidget(
                        ppOId: widget.ppOId,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cpOVShowModel,
                      updateCallback: () => setState(() {}),
                      child: CpOVShowWidget(
                        ppOVId: widget.ppOVId,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: FlutterFlowChoiceChips(
                        options: const [
                          ChipData('Transporte', FontAwesomeIcons.truck),
                          ChipData('Ativos', FontAwesomeIcons.hotel),
                          ChipData('Serviços', FontAwesomeIcons.tools)
                        ],
                        onChanged: (val) async {
                          setState(
                              () => _model.choiceChipsValue = val?.firstOrNull);
                          setState(() {
                            FFAppState().stOVAssetMenuOption =
                                _model.choiceChipsValue!;
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                          iconColor: FlutterFlowTheme.of(context).primary,
                          iconSize: 18.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderWidth: 2.0,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        chipSpacing: 8.0,
                        rowSpacing: 8.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: false,
                      ).animateOnPageLoad(
                          animationsMap['choiceChipsOnPageLoadAnimation']!),
                    ),
                    Builder(
                      builder: (context) {
                        if (FFAppState().stOVAssetMenuOption == 'Transporte') {
                          return Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Transporte',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                      if (widget.ppProcessingId != 4)
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 25.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          icon: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 24.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: SizedBox(
                                                      height: double.infinity,
                                                      child:
                                                          MdOVVehicleNewWidget(
                                                        ppOVid: widget.ppOVId,
                                                        ppOId: widget.ppOId,
                                                        ppOPId: widget.ppOPId,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                        ),
                                    ],
                                  ),
                                  FutureBuilder<List<VOrdersVisitsVehiclesRow>>(
                                    future:
                                        VOrdersVisitsVehiclesTable().queryRows(
                                      queryFn: (q) => q
                                          .eq(
                                            'orderVisitId',
                                            widget.ppOVId,
                                          )
                                          .order('vehicleDescription',
                                              ascending: true),
                                    ),
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
                                      List<VOrdersVisitsVehiclesRow>
                                          listViewVOrdersVisitsVehiclesRowList =
                                          snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVOrdersVisitsVehiclesRowList
                                                .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVOrdersVisitsVehiclesRow =
                                              listViewVOrdersVisitsVehiclesRowList[
                                                  listViewIndex];
                                          return CpOVVehiclesListItemWidget(
                                            key: Key(
                                                'Key5xg_${listViewIndex}_of_${listViewVOrdersVisitsVehiclesRowList.length}'),
                                            ppOVVehicleId:
                                                listViewVOrdersVisitsVehiclesRow
                                                    .id!,
                                            ppProcessingId:
                                                widget.ppProcessingId,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          );
                        } else if (FFAppState().stOVAssetMenuOption ==
                            'Ativos') {
                          return Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Ativos',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                    ),
                                    if (widget.ppProcessingId != 4)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 25.0,
                                        buttonSize: 50.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          var shouldSetState = false;
                                          _model.isAllowed =
                                              await action_blocks.abGuardian(
                                            context,
                                            abPgRequestedId: 1,
                                          );
                                          shouldSetState = true;
                                          if (_model.isAllowed!) {
                                            context.pushNamed(
                                              'pgOVAsset1Search',
                                              queryParameters: {
                                                'oVId': serializeParam(
                                                  widget.ppOVId,
                                                  ParamType.int,
                                                ),
                                                'unitId': serializeParam(
                                                  widget.ppUnitId,
                                                  ParamType.int,
                                                ),
                                                'orderId': serializeParam(
                                                  widget.ppOId,
                                                  ParamType.int,
                                                ),
                                                'oPId': serializeParam(
                                                  widget.ppOPId,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Ops ..'),
                                                  content: const Text(FFAppConstants
                                                      .msgNotAllowed),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: const Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          }

                                          if (shouldSetState) setState(() {});
                                        },
                                      ),
                                  ],
                                ),
                                FutureBuilder<List<VOrdersVisitsAssetsRow>>(
                                  future: VOrdersVisitsAssetsTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'orderVisitId',
                                      widget.ppOVId,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
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
                                        listViewAssetsVOrdersVisitsAssetsRowList =
                                        snapshot.data!;
                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewAssetsVOrdersVisitsAssetsRowList
                                              .length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 12.0),
                                      itemBuilder:
                                          (context, listViewAssetsIndex) {
                                        final listViewAssetsVOrdersVisitsAssetsRow =
                                            listViewAssetsVOrdersVisitsAssetsRowList[
                                                listViewAssetsIndex];
                                        return Container(
                                          decoration: const BoxDecoration(),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (widget.ppProcessingId != 4) {
                                                await action_blocks
                                                    .abOVAssetSelected(
                                                  context,
                                                  abOVAssetId:
                                                      listViewAssetsVOrdersVisitsAssetsRow
                                                          .id,
                                                );
                                                await action_blocks
                                                    .abOVAssetActivitiesUpdate(
                                                  context,
                                                  abOVAssetId: FFAppState()
                                                      .stOVAssetSelected
                                                      .first
                                                      .id,
                                                );

                                                context.pushNamed(
                                                  'pgOVAsset2Before',
                                                  queryParameters: {
                                                    'ppOperation':
                                                        serializeParam(
                                                      'before',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                context.pushNamed(
                                                  'pgOVAssetApproved',
                                                  queryParameters: {
                                                    'ppOVAssetId':
                                                        serializeParam(
                                                      listViewAssetsVOrdersVisitsAssetsRow
                                                          .id,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              }
                                            },
                                            child: CpOVAssetListCardWidget(
                                              key: Key(
                                                  'Keye3p_${listViewAssetsIndex}_of_${listViewAssetsVOrdersVisitsAssetsRowList.length}'),
                                              oVAssetId:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .id!,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          );
                        } else {
                          return Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Serviços',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                    ),
                                    if (widget.ppProcessingId != 4)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onLongPress: () async {},
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 255.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          icon: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 24.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {
                                            context.pushNamed(
                                              'pgOVServicesSearch',
                                              queryParameters: {
                                                'ppOVId': serializeParam(
                                                  widget.ppOVId,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                                wrapWithModel(
                                  model: _model.cpOVServicesListModel,
                                  updateCallback: () => setState(() {}),
                                  child: CpOVServicesListWidget(
                                    ppOVId: widget.ppOVId,
                                    ppProcessingId: widget.ppProcessingId,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          );
                        }
                      },
                    ),
                  ]
                      .divide(const SizedBox(height: 12.0))
                      .addToEnd(const SizedBox(height: 32.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
