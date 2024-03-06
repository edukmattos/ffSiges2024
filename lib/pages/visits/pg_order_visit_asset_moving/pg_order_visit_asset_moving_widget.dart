import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/cp_dropdown_assets_tags_subs/cp_dropdown_assets_tags_subs_widget.dart';
import '/pages/components/cp_dropdown_assets_statuses/cp_dropdown_assets_statuses_widget.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pg_order_visit_asset_moving_model.dart';
export 'pg_order_visit_asset_moving_model.dart';

class PgOrderVisitAssetMovingWidget extends StatefulWidget {
  const PgOrderVisitAssetMovingWidget({super.key});

  @override
  State<PgOrderVisitAssetMovingWidget> createState() =>
      _PgOrderVisitAssetMovingWidgetState();
}

class _PgOrderVisitAssetMovingWidgetState
    extends State<PgOrderVisitAssetMovingWidget> with TickerProviderStateMixin {
  late PgOrderVisitAssetMovingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrderVisitAssetMovingModel());

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
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: Visibility(
              visible: valueOrDefault<int>(
                    FFAppState().stOVSelected.first.processingId,
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
                  context.pushNamed(
                    'pgOrderVisitShow',
                    queryParameters: {
                      'visitId': serializeParam(
                        FFAppState().stOVSelected.first.id,
                        ParamType.int,
                      ),
                      'orderId': serializeParam(
                        FFAppState().stOVSelected.first.orderId,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                  );
                },
              ),
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
              padding: const EdgeInsets.all(16.0),
              child: FutureBuilder<List<OrdersVisitsAssetsRow>>(
                future: (_model.requestCompleter ??=
                        Completer<List<OrdersVisitsAssetsRow>>()
                          ..complete(OrdersVisitsAssetsTable().querySingleRow(
                            queryFn: (q) => q.eq(
                              'id',
                              FFAppState().stOVAssetSelected.first.id,
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
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<OrdersVisitsAssetsRow>
                      containerOrdersVisitsAssetsRowList = snapshot.data!;
                  final containerOrdersVisitsAssetsRow =
                      containerOrdersVisitsAssetsRowList.isNotEmpty
                          ? containerOrdersVisitsAssetsRowList.first
                          : null;
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.cpOVAssetListCardModel,
                                  updateCallback: () => setState(() {}),
                                  child: CpOVAssetListCardWidget(
                                    assetDescription: FFAppState()
                                        .stOVAssetSelected
                                        .first
                                        .description,
                                    unitDescription: FFAppState()
                                        .stOVAssetSelected
                                        .first
                                        .beforeUnitDescription,
                                    assetCode: FFAppState()
                                        .stOVAssetSelected
                                        .first
                                        .code,
                                    assetStatusDescription: FFAppState()
                                        .stOVAssetSelected
                                        .first
                                        .beforeStatusDescription,
                                    assetTagDescription: FFAppState()
                                        .stOVAssetSelected
                                        .first
                                        .beforeTagDescription,
                                    assetTagSubDescription: FFAppState()
                                        .stOVAssetSelected
                                        .first
                                        .beforeTagSubDescription,
                                    processingId: FFAppState()
                                        .stOVAssetSelected
                                        .first
                                        .processingId,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Houve movimentação ou alteração da situação?',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: MouseRegion(
                                      opaque: true,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered1 = true);
                                      }),
                                      onExit: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered1 = false);
                                      }),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.3,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          color: containerOrdersVisitsAssetsRow
                                                      ?.isMoved ==
                                                  false
                                              ? FlutterFlowTheme.of(context)
                                                  .tertiary
                                              : const Color(0x00000000),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 3.0,
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await OrdersVisitsAssetsTable()
                                                .update(
                                              data: {
                                                'afterUnitId':
                                                    containerOrdersVisitsAssetsRow
                                                        ?.beforeUnitId,
                                                'afterTagId':
                                                    containerOrdersVisitsAssetsRow
                                                        ?.beforeTagId,
                                                'afterTagSubId':
                                                    containerOrdersVisitsAssetsRow
                                                        ?.beforeTagSubId,
                                                'afterStatusId':
                                                    containerOrdersVisitsAssetsRow
                                                        ?.beforeStatusId,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'id',
                                                FFAppState()
                                                    .stOVAssetSelected
                                                    .first
                                                    .id,
                                              ),
                                            );
                                            await action_blocks
                                                .abOrderVisitAssetSelected(
                                              context,
                                              abOrderVisitAssetId: FFAppState()
                                                  .stOVAssetSelected
                                                  .first
                                                  .id,
                                            );

                                            context.pushNamed(
                                              'pgOrderVisitAsset2Before',
                                              queryParameters: {
                                                'operation': serializeParam(
                                                  'after',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'NÃO',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(height: 12.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: MouseRegion(
                                      opaque: true,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered2 = true);
                                      }),
                                      onExit: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered2 = false);
                                      }),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.3,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          color: containerOrdersVisitsAssetsRow
                                                      ?.isMoved ==
                                                  true
                                              ? FlutterFlowTheme.of(context)
                                                  .success
                                              : const Color(0x00000000),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 3.0,
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await OrdersVisitsAssetsTable()
                                                .update(
                                              data: {
                                                'afterUnitId': null,
                                                'afterTagId': null,
                                                'afterTagSubId': null,
                                                'afterStatusId': null,
                                                'isMoved': true,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'id',
                                                FFAppState()
                                                    .stOVAssetSelected
                                                    .first
                                                    .id,
                                              ),
                                            );
                                            setState(() =>
                                                _model.requestCompleter = null);
                                            await _model
                                                .waitForRequestCompleted(
                                                    minWait: 1000,
                                                    maxWait: 10000);
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'SIM',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .headlineMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: containerOrdersVisitsAssetsRow
                                                                  ?.isMoved ==
                                                              true
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .backgroundComponents,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Visibility(
                                    visible: valueOrDefault<bool>(
                                      containerOrdersVisitsAssetsRow?.isMoved,
                                      false,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Container(
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Informe o destino',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownUnitsModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: CpDropdownUnitsWidget(
                                                    hintText: 'Unidade',
                                                    initialValue:
                                                        containerOrdersVisitsAssetsRow
                                                            ?.afterUnitId,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownAssetsTagsModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CpDropdownAssetsTagsWidget(
                                                    hintText: 'Setor',
                                                    initialValue:
                                                        containerOrdersVisitsAssetsRow
                                                            ?.afterTagId,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownAssetsTagsSubsModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CpDropdownAssetsTagsSubsWidget(
                                                    hintText: 'Posição',
                                                    initialValue:
                                                        containerOrdersVisitsAssetsRow
                                                            ?.afterTagSubId,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .cpDropdownAssetsStatusesModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        CpDropdownAssetsStatusesWidget(
                                                      hintText: 'Situação',
                                                      initalValue:
                                                          containerOrdersVisitsAssetsRow
                                                              ?.afterStatusId,
                                                    ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpInputTexMultilineModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CpInputTexMultilineWidget(
                                                    initialValue:
                                                        containerOrdersVisitsAssetsRow
                                                            ?.movedComments,
                                                    labelText: 'Observações',
                                                    readOnly: false,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 12.0)),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Container(
                                            decoration: const BoxDecoration(),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius: 25.0,
                                              borderWidth: 1.0,
                                              buttonSize: 50.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              icon: Icon(
                                                Icons.arrow_forward,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                size: 30.0,
                                              ),
                                              onPressed: () async {
                                                if (_model.formKey
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.cpDropdownUnitsModel
                                                        .dropdownUnitsValue ==
                                                    null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Informe a Unidade destino.'),
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
                                                  return;
                                                }
                                                if (_model
                                                        .cpDropdownAssetsTagsModel
                                                        .dropdownAssetsTagsValue ==
                                                    null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Informe o Setor destino.'),
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
                                                  return;
                                                }
                                                if (_model
                                                        .cpDropdownAssetsTagsSubsModel
                                                        .dropdownAssetsTagsSubsValue ==
                                                    null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Informe a Posição destino.'),
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
                                                  return;
                                                }
                                                if (_model
                                                        .cpDropdownAssetsStatusesModel
                                                        .dropdownAssetsStatusesValue ==
                                                    null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Informe a Situação destino.'),
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
                                                  return;
                                                }
                                                if (containerOrdersVisitsAssetsRow
                                                        ?.beforeUnitId ==
                                                    _model.cpDropdownUnitsModel
                                                        .dropdownUnitsValue) {
                                                  setState(() {
                                                    _model.lpsvSubmitAvailable =
                                                        false;
                                                  });
                                                  if (containerOrdersVisitsAssetsRow
                                                          ?.beforeTagId ==
                                                      _model
                                                          .cpDropdownAssetsTagsModel
                                                          .dropdownAssetsTagsValue) {
                                                    if (containerOrdersVisitsAssetsRow
                                                            ?.beforeTagSubId ==
                                                        _model
                                                            .cpDropdownAssetsTagsSubsModel
                                                            .dropdownAssetsTagsSubsValue) {
                                                      if (containerOrdersVisitsAssetsRow
                                                              ?.beforeStatusId !=
                                                          _model
                                                              .cpDropdownAssetsStatusesModel
                                                              .dropdownAssetsStatusesValue) {
                                                        setState(() {
                                                          _model.lpsvSubmitAvailable =
                                                              true;
                                                        });
                                                      }
                                                    } else {
                                                      setState(() {
                                                        _model.lpsvSubmitAvailable =
                                                            true;
                                                      });
                                                    }
                                                  } else {
                                                    setState(() {
                                                      _model.lpsvSubmitAvailable =
                                                          true;
                                                    });
                                                  }
                                                } else {
                                                  setState(() {
                                                    _model.lpsvSubmitAvailable =
                                                        true;
                                                  });
                                                }

                                                if (_model
                                                        .lpsvSubmitAvailable ==
                                                    true) {
                                                  await OrdersVisitsAssetsTable()
                                                      .update(
                                                    data: {
                                                      'afterUnitId': _model
                                                          .cpDropdownUnitsModel
                                                          .dropdownUnitsValue,
                                                      'afterTagId': _model
                                                          .cpDropdownAssetsTagsModel
                                                          .dropdownAssetsTagsValue,
                                                      'afterTagSubId': _model
                                                          .cpDropdownAssetsTagsSubsModel
                                                          .dropdownAssetsTagsSubsValue,
                                                      'afterStatusId': _model
                                                          .cpDropdownAssetsStatusesModel
                                                          .dropdownAssetsStatusesValue,
                                                      'movedComments': _model
                                                          .cpInputTexMultilineModel
                                                          .inputTextMultineController
                                                          .text,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eq(
                                                      'id',
                                                      containerOrdersVisitsAssetsRow
                                                          ?.id,
                                                    ),
                                                  );

                                                  context.pushNamed(
                                                    'pgOrderVisitAsset2Before',
                                                    queryParameters: {
                                                      'operation':
                                                          serializeParam(
                                                        'after',
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );

                                                  return;
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Verifique as inforações de destino.'),
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
                                                  return;
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 12.0)),
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
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
