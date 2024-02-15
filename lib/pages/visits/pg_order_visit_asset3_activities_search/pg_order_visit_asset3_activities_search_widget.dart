import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_orders_types_activities/cp_dropdown_orders_types_activities_widget.dart';
import '/pages/orders/cp_order_visit_asset_list_item_card/cp_order_visit_asset_list_item_card_widget.dart';
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_order_visit_asset3_activities_search_model.dart';
export 'pg_order_visit_asset3_activities_search_model.dart';

class PgOrderVisitAsset3ActivitiesSearchWidget extends StatefulWidget {
  const PgOrderVisitAsset3ActivitiesSearchWidget({super.key});

  @override
  State<PgOrderVisitAsset3ActivitiesSearchWidget> createState() =>
      _PgOrderVisitAsset3ActivitiesSearchWidgetState();
}

class _PgOrderVisitAsset3ActivitiesSearchWidgetState
    extends State<PgOrderVisitAsset3ActivitiesSearchWidget> {
  late PgOrderVisitAsset3ActivitiesSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => PgOrderVisitAsset3ActivitiesSearchModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: Visibility(
              visible: valueOrDefault<int>(
                    FFAppState().stOrderVisitSelected.first.processingId,
                    1,
                  ) ==
                  4,
              child: FlutterFlowIconButton(
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
                child: Stack(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              wrapWithModel(
                                model:
                                    _model.cpOrderVisitAssetListItemCardModel,
                                updateCallback: () => setState(() {}),
                                child: CpOrderVisitAssetListItemCardWidget(
                                  code: FFAppState()
                                      .stOrderVisitAssetSelected
                                      .code,
                                  statusDescription: FFAppState()
                                      .stOrderVisitAssetSelected
                                      .beforeStatusDescription,
                                  description: FFAppState()
                                      .stOrderVisitAssetSelected
                                      .description,
                                  tagDescription: FFAppState()
                                      .stOrderVisitAssetSelected
                                      .beforeTagDescription,
                                  tagSubDescription: FFAppState()
                                      .stOrderVisitAssetSelected
                                      .beforeTagSubDescription,
                                  processingId: FFAppState()
                                      .stOrderVisitAssetSelected
                                      .processingId,
                                  isMoved: FFAppState()
                                      .stOrderVisitAssetSelected
                                      .isMoved,
                                  unitDescription: valueOrDefault<String>(
                                    FFAppState()
                                        .stOrderVisitAssetSelected
                                        .beforeUnitDescription,
                                    'unitDescription',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Atividades',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ),
                                ],
                              ),
                              FutureBuilder<
                                  List<VOrdersVisitsAssetsActivitiesRow>>(
                                future: (_model.requestCompleter ??= Completer<
                                        List<
                                            VOrdersVisitsAssetsActivitiesRow>>()
                                      ..complete(
                                          VOrdersVisitsAssetsActivitiesTable()
                                              .queryRows(
                                        queryFn: (q) => q
                                            .eq(
                                              'orderVisitId',
                                              valueOrDefault<int>(
                                                FFAppState()
                                                    .stOrderVisitAssetSelected
                                                    .orderVisitId,
                                                0,
                                              ),
                                            )
                                            .eq(
                                              'assetId',
                                              valueOrDefault<int>(
                                                FFAppState()
                                                    .stOrderVisitAssetSelected
                                                    .assetId,
                                                0,
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
                                  List<VOrdersVisitsAssetsActivitiesRow>
                                      containerVOrdersVisitsAssetsActivitiesRowList =
                                      snapshot.data!;
                                  return Container(
                                    decoration: const BoxDecoration(),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (containerVOrdersVisitsAssetsActivitiesRowList.isNotEmpty)
                                            Builder(
                                              builder: (context) {
                                                final activitiesSeletected =
                                                    containerVOrdersVisitsAssetsActivitiesRowList
                                                        .map((e) => e)
                                                        .toList();
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      activitiesSeletected
                                                          .length,
                                                  itemBuilder: (context,
                                                      activitiesSeletectedIndex) {
                                                    final activitiesSeletectedItem =
                                                        activitiesSeletected[
                                                            activitiesSeletectedIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 70.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x32000000),
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                activitiesSeletectedItem.activityDescription,
                                                                                'activity',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    AlignedTooltip(
                                                                      content: Padding(
                                                                          padding: const EdgeInsets.all(4.0),
                                                                          child: Text(
                                                                            'Adicionar',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyLarge,
                                                                          )),
                                                                      offset:
                                                                          4.0,
                                                                      preferredDirection:
                                                                          AxisDirection
                                                                              .down,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          4.0,
                                                                      tailBaseWidth:
                                                                          24.0,
                                                                      tailLength:
                                                                          12.0,
                                                                      waitDuration:
                                                                          const Duration(
                                                                              milliseconds: 100),
                                                                      showDuration:
                                                                          const Duration(
                                                                              milliseconds: 1500),
                                                                      triggerMode:
                                                                          TooltipTriggerMode
                                                                              .tap,
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            12.0,
                                                                        buttonSize:
                                                                            50.0,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                        icon:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .trashAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        showLoadingIndicator:
                                                                            true,
                                                                        onPressed:
                                                                            () async {
                                                                          await OrdersVisitsAssetsActivitiesTable()
                                                                              .delete(
                                                                            matchingRows: (rows) =>
                                                                                rows.eq(
                                                                              'id',
                                                                              activitiesSeletectedItem.id,
                                                                            ),
                                                                          );
                                                                          await Future.delayed(
                                                                              const Duration(milliseconds: 1000));
                                                                          setState(() =>
                                                                              _model.requestCompleter = null);
                                                                          await _model
                                                                              .waitForRequestCompleted();
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
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
                                  );
                                },
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model:
                                    _model.cpDropdownOrdersTypesActivitiesModel,
                                updateCallback: () => setState(() {}),
                                child: const CpDropdownOrdersTypesActivitiesWidget(
                                  hintText: 'Selecione uma atividade',
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await OrdersVisitsAssetsActivitiesTable()
                                              .insert({
                                            'orderVisitId': valueOrDefault<int>(
                                              FFAppState()
                                                  .stOrderVisitSelected
                                                  .first
                                                  .id,
                                              1,
                                            ),
                                            'orderTypeId': valueOrDefault<int>(
                                              FFAppState()
                                                  .stOrderSelected
                                                  .first
                                                  .typeId,
                                              1,
                                            ),
                                            'assetId': FFAppState()
                                                .stOrderVisitAssetSelected
                                                .assetId,
                                            'activityId': _model
                                                .cpDropdownOrdersTypesActivitiesModel
                                                .dropdownOrdersTypesActivitiesValue,
                                            'amount': 1,
                                          });
                                          await Future.delayed(const Duration(
                                              milliseconds: 1000));
                                          setState(() =>
                                              _model.requestCompleter = null);
                                          await _model
                                              .waitForRequestCompleted();
                                        },
                                        text: 'INCLUIR\n',
                                        icon: const Icon(
                                          Icons.add_circle,
                                          size: 30.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 25.0,
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {
                                      context
                                          .pushNamed('pgOrderVisitAssetMoving');
                                    },
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              ),
                            ].divide(const SizedBox(height: 12.0)),
                          ),
                        ),
                      ],
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