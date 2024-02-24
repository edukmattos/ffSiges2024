import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/cp_input_integer/cp_input_integer_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/orders/cp_order_visit_asset_list_item_card/cp_order_visit_asset_list_item_card_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'pg_order_visit_asset2_before_model.dart';
export 'pg_order_visit_asset2_before_model.dart';

class PgOrderVisitAsset2BeforeWidget extends StatefulWidget {
  const PgOrderVisitAsset2BeforeWidget({
    super.key,
    String? operation,
  }) : operation = operation ?? 'before';

  final String operation;

  @override
  State<PgOrderVisitAsset2BeforeWidget> createState() =>
      _PgOrderVisitAsset2BeforeWidgetState();
}

class _PgOrderVisitAsset2BeforeWidgetState
    extends State<PgOrderVisitAsset2BeforeWidget>
    with TickerProviderStateMixin {
  late PgOrderVisitAsset2BeforeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 110.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrderVisitAsset2BeforeModel());

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
              padding: const EdgeInsets.all(12.0),
              child: FutureBuilder<List<VOrdersVisitsAssetsRow>>(
                future: (_model.requestCompleter ??=
                        Completer<List<VOrdersVisitsAssetsRow>>()
                          ..complete(VOrdersVisitsAssetsTable().querySingleRow(
                            queryFn: (q) => q.eq(
                              'id',
                              FFAppState().stOrderVisitAssetSelected.first.id,
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
                  List<VOrdersVisitsAssetsRow>
                      containerVOrdersVisitsAssetsRowList = snapshot.data!;
                  final containerVOrdersVisitsAssetsRow =
                      containerVOrdersVisitsAssetsRowList.isNotEmpty
                          ? containerVOrdersVisitsAssetsRowList.first
                          : null;
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: wrapWithModel(
                                    model: _model
                                        .cpOrderVisitAssetListItemCardModel,
                                    updateCallback: () => setState(() {}),
                                    child: CpOrderVisitAssetListItemCardWidget(
                                      code: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .code,
                                      statusDescription: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .beforeStatusDescription,
                                      description: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .description,
                                      tagDescription: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .beforeTagDescription,
                                      tagSubDescription: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .beforeTagSubDescription,
                                      processingId: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .processingId,
                                      isMoved: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .isMoved,
                                      unitDescription: FFAppState()
                                          .stOrderVisitAssetSelected
                                          .first
                                          .beforeUnitDescription,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    widget.operation == 'before'
                                        ? 'Condição ANTES'
                                        : 'Condição FINAL',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Container(
                                            height: 300.0,
                                            constraints: const BoxConstraints(
                                              maxWidth: 360.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: SizedBox(
                                              width: 360.0,
                                              height: 300.0,
                                              child: Stack(
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          child:
                                                              FlutterFlowExpandedImageView(
                                                            image:
                                                                Image.network(
                                                              () {
                                                                if ((widget.operation ==
                                                                        'before') &&
                                                                    (containerVOrdersVisitsAssetsRow?.beforeImgFileName !=
                                                                            null &&
                                                                        containerVOrdersVisitsAssetsRow?.beforeImgFileName !=
                                                                            '')) {
                                                                  return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                                } else if ((widget
                                                                            .operation ==
                                                                        'after') &&
                                                                    (containerVOrdersVisitsAssetsRow?.afterImgFileName !=
                                                                            null &&
                                                                        containerVOrdersVisitsAssetsRow?.afterImgFileName !=
                                                                            '')) {
                                                                  return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.afterImgFilePath}${containerVOrdersVisitsAssetsRow?.afterImgFileName}';
                                                                } else {
                                                                  return '${FFAppConstants.appServerUrlStorage}${FFAppConstants.appImagesFilePath}${FFAppConstants.appImageNoFileName}';
                                                                }
                                                              }(),
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  const Alignment(
                                                                      0.0, 0.0),
                                                              errorBuilder: (context,
                                                                      error,
                                                                      stackTrace) =>
                                                                  Image.asset(
                                                                'assets/images/error_image.jpeg',
                                                                fit: BoxFit
                                                                    .contain,
                                                                alignment:
                                                                    const Alignment(
                                                                        0.0,
                                                                        0.0),
                                                              ),
                                                            ),
                                                            allowRotation:
                                                                false,
                                                            tag: () {
                                                              if ((widget.operation ==
                                                                      'before') &&
                                                                  (containerVOrdersVisitsAssetsRow
                                                                              ?.beforeImgFileName !=
                                                                          null &&
                                                                      containerVOrdersVisitsAssetsRow
                                                                              ?.beforeImgFileName !=
                                                                          '')) {
                                                                return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                              } else if ((widget
                                                                          .operation ==
                                                                      'after') &&
                                                                  (containerVOrdersVisitsAssetsRow
                                                                              ?.afterImgFileName !=
                                                                          null &&
                                                                      containerVOrdersVisitsAssetsRow
                                                                              ?.afterImgFileName !=
                                                                          '')) {
                                                                return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.afterImgFilePath}${containerVOrdersVisitsAssetsRow?.afterImgFileName}';
                                                              } else {
                                                                return '${FFAppConstants.appServerUrlStorage}${FFAppConstants.appImagesFilePath}${FFAppConstants.appImageNoFileName}';
                                                              }
                                                            }(),
                                                            useHeroAnimation:
                                                                true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: () {
                                                        if ((widget.operation ==
                                                                'before') &&
                                                            (containerVOrdersVisitsAssetsRow
                                                                        ?.beforeImgFileName !=
                                                                    null &&
                                                                containerVOrdersVisitsAssetsRow
                                                                        ?.beforeImgFileName !=
                                                                    '')) {
                                                          return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                        } else if ((widget
                                                                    .operation ==
                                                                'after') &&
                                                            (containerVOrdersVisitsAssetsRow
                                                                        ?.afterImgFileName !=
                                                                    null &&
                                                                containerVOrdersVisitsAssetsRow
                                                                        ?.afterImgFileName !=
                                                                    '')) {
                                                          return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.afterImgFilePath}${containerVOrdersVisitsAssetsRow?.afterImgFileName}';
                                                        } else {
                                                          return '${FFAppConstants.appServerUrlStorage}${FFAppConstants.appImagesFilePath}${FFAppConstants.appImageNoFileName}';
                                                        }
                                                      }(),
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        child: Image.network(
                                                          () {
                                                            if ((widget.operation ==
                                                                    'before') &&
                                                                (containerVOrdersVisitsAssetsRow
                                                                            ?.beforeImgFileName !=
                                                                        null &&
                                                                    containerVOrdersVisitsAssetsRow
                                                                            ?.beforeImgFileName !=
                                                                        '')) {
                                                              return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                            } else if ((widget
                                                                        .operation ==
                                                                    'after') &&
                                                                (containerVOrdersVisitsAssetsRow
                                                                            ?.afterImgFileName !=
                                                                        null &&
                                                                    containerVOrdersVisitsAssetsRow
                                                                            ?.afterImgFileName !=
                                                                        '')) {
                                                              return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.afterImgFilePath}${containerVOrdersVisitsAssetsRow?.afterImgFileName}';
                                                            } else {
                                                              return '${FFAppConstants.appServerUrlStorage}${FFAppConstants.appImagesFilePath}${FFAppConstants.appImageNoFileName}';
                                                            }
                                                          }(),
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  3.0,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  3.0,
                                                          fit: BoxFit.cover,
                                                          alignment: const Alignment(
                                                              0.0, 0.0),
                                                          errorBuilder: (context,
                                                                  error,
                                                                  stackTrace) =>
                                                              Image.asset(
                                                            'assets/images/error_image.jpeg',
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                3.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                3.0,
                                                            fit: BoxFit.cover,
                                                            alignment:
                                                                const Alignment(
                                                                    0.0, 0.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (() {
                                                    if ((widget.operation ==
                                                            'before') &&
                                                        (containerVOrdersVisitsAssetsRow
                                                                    ?.beforeImgFileName !=
                                                                null &&
                                                            containerVOrdersVisitsAssetsRow
                                                                    ?.beforeImgFileName !=
                                                                '')) {
                                                      return true;
                                                    } else if ((widget
                                                                .operation ==
                                                            'after') &&
                                                        (containerVOrdersVisitsAssetsRow
                                                                    ?.afterImgFileName !=
                                                                null &&
                                                            containerVOrdersVisitsAssetsRow
                                                                    ?.afterImgFileName !=
                                                                '')) {
                                                      return true;
                                                    } else {
                                                      return false;
                                                    }
                                                  }())
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderRadius: 25.0,
                                                          buttonSize: 50.0,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .error,
                                                          icon: Icon(
                                                            Icons.close,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            size: 32.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () async {
                                                            var shouldSetState =
                                                                false;
                                                            _model.resOrderVisitAssetSelected3 =
                                                                await ApiOrdersVisitsAssetsGroup
                                                                    .orderVisitAssetByIdCall
                                                                    .call(
                                                              orderVisitAssetId:
                                                                  containerVOrdersVisitsAssetsRow
                                                                      ?.id,
                                                            );
                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .resOrderVisitAssetSelected3
                                                                    ?.succeeded ??
                                                                true)) {
                                                              if (widget
                                                                      .operation ==
                                                                  'before') {
                                                                if (FFAppState()
                                                                            .stOrderVisitAssetSelected
                                                                            .first
                                                                            .beforeImgFileName !=
                                                                        '') {
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: const Text('Ops ...'),
                                                                                content: const Text('Não será possivel recuperar a imagem após a exclusão.'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: const Text('Cancelar'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: const Text('Confirmar'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    await ApiStorageGroup
                                                                        .deleteFileCall
                                                                        .call(
                                                                      fileUrl:
                                                                          '${ApiOrdersVisitsAssetsGroup.orderVisitAssetByIdCall.beforeImgFilePath(
                                                                        (_model.resOrderVisitAssetSelected3?.jsonBody ??
                                                                            ''),
                                                                      )}${ApiOrdersVisitsAssetsGroup.orderVisitAssetByIdCall.beforeImgFileName(
                                                                        (_model.resOrderVisitAssetSelected3?.jsonBody ??
                                                                            ''),
                                                                      )}',
                                                                    );
                                                                    await OrdersVisitsAssetsTable()
                                                                        .update(
                                                                      data: {
                                                                        'beforeImgFilePath':
                                                                            null,
                                                                        'beforeImgFileName':
                                                                            null,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eq(
                                                                        'id',
                                                                        FFAppState()
                                                                            .stOrderVisitAssetSelected
                                                                            .first
                                                                            .id,
                                                                      ),
                                                                    );
                                                                  }
                                                                } else {
                                                                  if (shouldSetState) {
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                  return;
                                                                }
                                                              } else {
                                                                if (FFAppState()
                                                                            .stOrderVisitAssetSelected
                                                                            .first
                                                                            .afterImgFileName !=
                                                                        '') {
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: const Text('Ops ...'),
                                                                                content: const Text('Não será possivel recuperar a imagem após a excleusão.'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: const Text('Cancelar'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: const Text('Confirmar'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    await ApiStorageGroup
                                                                        .deleteFileCall
                                                                        .call(
                                                                      fileUrl:
                                                                          '${ApiOrdersVisitsAssetsGroup.orderVisitAssetByIdCall.afterImgFilePath(
                                                                        (_model.resOrderVisitAssetSelected3?.jsonBody ??
                                                                            ''),
                                                                      )}${ApiOrdersVisitsAssetsGroup.orderVisitAssetByIdCall.afterImgFileName(
                                                                        (_model.resOrderVisitAssetSelected3?.jsonBody ??
                                                                            ''),
                                                                      )}',
                                                                    );
                                                                    await OrdersVisitsAssetsTable()
                                                                        .update(
                                                                      data: {
                                                                        'afterImgFilePath':
                                                                            null,
                                                                        'afterImgFileName':
                                                                            null,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eq(
                                                                        'id',
                                                                        FFAppState()
                                                                            .stOrderVisitAssetSelected
                                                                            .first
                                                                            .id,
                                                                      ),
                                                                    );
                                                                  }
                                                                } else {
                                                                  if (shouldSetState) {
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                  return;
                                                                }
                                                              }

                                                              setState(() =>
                                                                  _model.requestCompleter =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted();
                                                              await action_blocks
                                                                  .abOrderVisitAssetSelected(
                                                                context,
                                                                abOrderVisitAssetId:
                                                                    FFAppState()
                                                                        .stOrderVisitAssetSelected
                                                                        .first
                                                                        .id,
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        '222'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: const Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Ops .. Erro ao identificar a imagem a ser excluida.',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                                  ),
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                ),
                                                              );
                                                              if (shouldSetState) {
                                                                setState(() {});
                                                              }
                                                              return;
                                                            }

                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(12.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 25.0,
                                                        buttonSize: 50.0,
                                                        fillColor:
                                                            const Color(0xFF9E9E9E),
                                                        icon: Icon(
                                                          Icons
                                                              .linked_camera_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 32.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
                                                          setState(() {
                                                            _model.lpsvFilePath =
                                                                'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOrderVisitAssetSelected.first.assetId.toString()}';
                                                          });
                                                          if (widget
                                                                  .operation ==
                                                              'before') {
                                                            if (FFAppState()
                                                                        .stOrderVisitAssetSelected
                                                                        .first
                                                                        .beforeImgFileName ==
                                                                    '') {
                                                              // Dont Exist
                                                              setState(() {
                                                                _model.lpsvIsThereFileName =
                                                                    false;
                                                              });
                                                            } else {
                                                              // Exist
                                                              setState(() {
                                                                _model.lpsvIsThereFileName =
                                                                    true;
                                                                _model.lpsvFileNameToDelete =
                                                                    containerVOrdersVisitsAssetsRow!
                                                                        .beforeImgFileName!;
                                                              });
                                                            }
                                                          } else {
                                                            if (FFAppState()
                                                                        .stOrderVisitAssetSelected
                                                                        .first
                                                                        .afterImgFileName ==
                                                                    '') {
                                                              // Dont Exist
                                                              setState(() {
                                                                _model.lpsvIsThereFileName =
                                                                    false;
                                                              });
                                                            } else {
                                                              // Exist
                                                              setState(() {
                                                                _model.lpsvIsThereFileName =
                                                                    true;
                                                                _model.lpsvFileNameToDelete =
                                                                    containerVOrdersVisitsAssetsRow!
                                                                        .afterImgFileName!;
                                                              });
                                                            }
                                                          }

                                                          if (_model
                                                              .lpsvIsThereFileName) {
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              const Text('Ops ...'),
                                                                          content:
                                                                              const Text('Deseja alterar imagem ? Caso confirme, não será possivel recuperar imagem.'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                              child: const Text('Cancelar'),
                                                                            ),
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                              child: const Text('Confirmar'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ) ??
                                                                    false;
                                                            if (confirmDialogResponse) {
                                                              await ApiStorageGroup
                                                                  .deleteFileCall
                                                                  .call(
                                                                fileUrl:
                                                                    'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stAssetSeleted.first.id.toString()}/${_model.lpsvFileNameToDelete}',
                                                              );
                                                            } else {
                                                              return;
                                                            }
                                                          }
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            storageFolderPath:
                                                                'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOrderVisitAssetSelected.first.assetId.toString()}',
                                                            maxWidth: 500.00,
                                                            maxHeight: 500.00,
                                                            imageQuality: 100,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            setState(() => _model
                                                                    .isDataUploading =
                                                                true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              showUploadMessage(
                                                                context,
                                                                'Uploading file...',
                                                                showLoading:
                                                                    true,
                                                              );
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  await uploadSupabaseStorageFiles(
                                                                bucketName:
                                                                    FFAppConstants
                                                                        .appStorageBucket,
                                                                selectedFiles:
                                                                    selectedMedia,
                                                              );
                                                            } finally {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              _model.isDataUploading =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              setState(() {
                                                                _model.uploadedLocalFile =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                              showUploadMessage(
                                                                  context,
                                                                  'Success!');
                                                            } else {
                                                              setState(() {});
                                                              showUploadMessage(
                                                                  context,
                                                                  'Failed to upload data');
                                                              return;
                                                            }
                                                          }

                                                          if (widget
                                                                  .operation ==
                                                              'before') {
                                                            await OrdersVisitsAssetsTable()
                                                                .update(
                                                              data: {
                                                                'beforeImgFilePath':
                                                                    '${_model.lpsvFilePath}/',
                                                                'beforeImgFileName':
                                                                    functions.cfGetFileNameFromFileUrlUploaded(
                                                                        _model
                                                                            .uploadedFileUrl,
                                                                        '${FFAppConstants.appServerUrlStorage}${'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOrderVisitAssetSelected.first.assetId.toString()}'}/'),
                                                              },
                                                              matchingRows:
                                                                  (rows) =>
                                                                      rows.eq(
                                                                'id',
                                                                FFAppState()
                                                                    .stOrderVisitAssetSelected
                                                                    .first
                                                                    .id,
                                                              ),
                                                            );
                                                          } else {
                                                            await OrdersVisitsAssetsTable()
                                                                .update(
                                                              data: {
                                                                'afterImgFilePath':
                                                                    '${_model.lpsvFilePath}/',
                                                                'afterImgFileName':
                                                                    functions.cfGetFileNameFromFileUrlUploaded(
                                                                        _model
                                                                            .uploadedFileUrl,
                                                                        '${FFAppConstants.appServerUrlStorage}${'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOrderVisitAssetSelected.first.assetId.toString()}'}/'),
                                                              },
                                                              matchingRows:
                                                                  (rows) =>
                                                                      rows.eq(
                                                                'id',
                                                                FFAppState()
                                                                    .stOrderVisitAssetSelected
                                                                    .first
                                                                    .id,
                                                              ),
                                                            );
                                                          }

                                                          await action_blocks
                                                              .abOrderVisitAssetSelected(
                                                            context,
                                                            abOrderVisitAssetId:
                                                                FFAppState()
                                                                    .stOrderVisitAssetSelected
                                                                    .first
                                                                    .id,
                                                          );
                                                          setState(() => _model
                                                                  .requestCompleter =
                                                              null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'stackOnPageLoadAnimation']!),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.timer_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  child:
                                                      SwitchListTile.adaptive(
                                                    value: _model
                                                            .switchListTileValue ??=
                                                        _model.lpsvIsRecorder,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .switchListTileValue =
                                                          newValue);
                                                      if (newValue) {
                                                        setState(() {
                                                          _model.lpsvIsRecorder =
                                                              true;
                                                        });
                                                      } else {
                                                        setState(() {
                                                          _model.lpsvIsRecorder =
                                                              false;
                                                        });
                                                        setState(() {
                                                          _model.lpsvBeforeRecorder =
                                                              0;
                                                        });
                                                      }
                                                    },
                                                    title: Text(
                                                      'Registrador',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    ),
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    activeTrackColor:
                                                        const Color(0x3439D2C0),
                                                    dense: false,
                                                    controlAffinity:
                                                        ListTileControlAffinity
                                                            .trailing,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                4.0, 0.0),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .cpInputIntegerModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: CpInputIntegerWidget(
                                                      initialValue: _model
                                                          .lpsvBeforeRecorder,
                                                      isReadOnly: _model
                                                              .lpsvIsRecorder ==
                                                          false,
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation']!),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model:
                                                _model.cpInputTexMultilineModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: CpInputTexMultilineWidget(
                                              initialValue: widget.operation ==
                                                      'before'
                                                  ? containerVOrdersVisitsAssetsRow
                                                      ?.beforeComments
                                                  : containerVOrdersVisitsAssetsRow
                                                      ?.afterComments,
                                              labelText: 'Condição do Ativo',
                                              readOnly: false,
                                              hintText: widget.operation ==
                                                      'before'
                                                  ? 'Informe as condições encontradas '
                                                  : 'Informe a condição final.',
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(const SizedBox(height: 12.0))
                                          .addToEnd(const SizedBox(height: 60.0)),
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 12.0))
                                  .addToEnd(const SizedBox(height: 60.0)),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: const BoxDecoration(),
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (widget.operation == 'before')
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Flexible(
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
                                              if (widget.operation ==
                                                  'before') {
                                                await OrdersVisitsAssetsTable()
                                                    .update(
                                                  data: {
                                                    'beforeComments': _model
                                                        .cpInputTexMultilineModel
                                                        .inputTextMultineController
                                                        .text,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitAssetSelected
                                                        .first
                                                        .id,
                                                  ),
                                                );
                                                await action_blocks
                                                    .abOrderVisitAssetSelected(
                                                  context,
                                                  abOrderVisitAssetId: FFAppState()
                                                      .stOrderVisitAssetSelected
                                                      .first
                                                      .id,
                                                );
                                                setState(() {});

                                                context.goNamed(
                                                    'pgOrderVisitAsset3ActivitiesSearch');
                                              } else {
                                                await OrdersVisitsAssetsTable()
                                                    .update(
                                                  data: {
                                                    'afterComments': _model
                                                        .cpInputTexMultilineModel
                                                        .inputTextMultineController
                                                        .text,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitAssetSelected
                                                        .first
                                                        .id,
                                                  ),
                                                );
                                                await action_blocks
                                                    .abOrderVisitAssetSelected(
                                                  context,
                                                  abOrderVisitAssetId: FFAppState()
                                                      .stOrderVisitAssetSelected
                                                      .first
                                                      .id,
                                                );
                                                setState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (widget.operation == 'after')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Atividade'),
                                                            content: const Text(
                                                                'Deseja Reportar ?'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        false),
                                                                child: const Text(
                                                                    'Cancelar'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        true),
                                                                child: const Text(
                                                                    'Confirmar'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                await OrdersVisitsAssetsTable()
                                                    .update(
                                                  data: {
                                                    'processingId': 2,
                                                    'reportedUserId':
                                                        FFAppState()
                                                            .asUserCurrent
                                                            .id,
                                                    'reportedDate':
                                                        supaSerialize<DateTime>(
                                                            getCurrentTimestamp),
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitAssetSelected
                                                        .first
                                                        .id,
                                                  ),
                                                );
                                                await action_blocks
                                                    .abOrderVisitProcessingCheck(
                                                  context,
                                                  abOrderVisitId:
                                                      valueOrDefault<int>(
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .id,
                                                    1,
                                                  ),
                                                );
                                                setState(() {});
                                                await action_blocks
                                                    .abOrderVisitSelected(
                                                  context,
                                                  abOrderVisitId:
                                                      valueOrDefault<int>(
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .id,
                                                    1,
                                                  ),
                                                );

                                                context.pushNamed(
                                                  'pgOrderVisitShow',
                                                  queryParameters: {
                                                    'visitId': serializeParam(
                                                      valueOrDefault<int>(
                                                        FFAppState()
                                                            .stOrderVisitSelected
                                                            .first
                                                            .id,
                                                        1,
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                    'orderId': serializeParam(
                                                      valueOrDefault<int>(
                                                        FFAppState()
                                                            .stOrderVisitSelected
                                                            .first
                                                            .orderId,
                                                        1,
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              }
                                            },
                                            text: 'REPORTAR',
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .backgroundComponents,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              if (widget.operation ==
                                                  'before') {
                                                await OrdersVisitsAssetsTable()
                                                    .update(
                                                  data: {
                                                    'beforeComments': _model
                                                        .cpInputTexMultilineModel
                                                        .inputTextMultineController
                                                        .text,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitAssetSelected
                                                        .first
                                                        .id,
                                                  ),
                                                );
                                              } else {
                                                await OrdersVisitsAssetsTable()
                                                    .update(
                                                  data: {
                                                    'afterComments': _model
                                                        .cpInputTexMultilineModel
                                                        .inputTextMultineController
                                                        .text,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitAssetSelected
                                                        .first
                                                        .id,
                                                  ),
                                                );
                                              }

                                              context.pushNamed(
                                                'pgOrderVisitShow',
                                                queryParameters: {
                                                  'visitId': serializeParam(
                                                    valueOrDefault<int>(
                                                      FFAppState()
                                                          .stOrderVisitSelected
                                                          .first
                                                          .id,
                                                      1,
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                  'orderId': serializeParam(
                                                    valueOrDefault<int>(
                                                      FFAppState()
                                                          .stOrderVisitSelected
                                                          .first
                                                          .orderId,
                                                      1,
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            text: 'Manter RASCUNHO',
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
                              ],
                            ),
                          ),
                        ],
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
