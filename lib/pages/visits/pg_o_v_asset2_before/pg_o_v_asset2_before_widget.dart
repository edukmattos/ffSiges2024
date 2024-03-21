import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_asset2_before_model.dart';
export 'pg_o_v_asset2_before_model.dart';

class PgOVAsset2BeforeWidget extends StatefulWidget {
  const PgOVAsset2BeforeWidget({
    super.key,
    String? ppOperation,
  }) : ppOperation = ppOperation ?? 'before';

  final String ppOperation;

  @override
  State<PgOVAsset2BeforeWidget> createState() => _PgOVAsset2BeforeWidgetState();
}

class _PgOVAsset2BeforeWidgetState extends State<PgOVAsset2BeforeWidget>
    with TickerProviderStateMixin {
  late PgOVAsset2BeforeModel _model;

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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVAsset2BeforeModel());

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
              visible: false,
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
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamed(
                    'pgOVShowOrig',
                    queryParameters: {
                      'ppOVId': serializeParam(
                        FFAppState().stOVSelected.first.id,
                        ParamType.int,
                      ),
                      'ppOId': serializeParam(
                        FFAppState().stOVSelected.first.orderId,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                  );
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
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.cpOVAssetListCardModel,
                                    updateCallback: () => setState(() {}),
                                    child: CpOVAssetListCardWidget(
                                      oVAssetId: FFAppState()
                                          .stOVAssetSelected
                                          .first
                                          .id,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    widget.ppOperation == 'before'
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
                                                                if ((widget.ppOperation ==
                                                                        'before') &&
                                                                    (containerVOrdersVisitsAssetsRow?.beforeImgFileName !=
                                                                            null &&
                                                                        containerVOrdersVisitsAssetsRow?.beforeImgFileName !=
                                                                            '')) {
                                                                  return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                                } else if ((widget
                                                                            .ppOperation ==
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
                                                              if ((widget.ppOperation ==
                                                                      'before') &&
                                                                  (containerVOrdersVisitsAssetsRow
                                                                              ?.beforeImgFileName !=
                                                                          null &&
                                                                      containerVOrdersVisitsAssetsRow
                                                                              ?.beforeImgFileName !=
                                                                          '')) {
                                                                return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                              } else if ((widget
                                                                          .ppOperation ==
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
                                                        if ((widget.ppOperation ==
                                                                'before') &&
                                                            (containerVOrdersVisitsAssetsRow
                                                                        ?.beforeImgFileName !=
                                                                    null &&
                                                                containerVOrdersVisitsAssetsRow
                                                                        ?.beforeImgFileName !=
                                                                    '')) {
                                                          return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                        } else if ((widget
                                                                    .ppOperation ==
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
                                                            if ((widget.ppOperation ==
                                                                    'before') &&
                                                                (containerVOrdersVisitsAssetsRow
                                                                            ?.beforeImgFileName !=
                                                                        null &&
                                                                    containerVOrdersVisitsAssetsRow
                                                                            ?.beforeImgFileName !=
                                                                        '')) {
                                                              return '${FFAppConstants.appServerUrlStorage}${containerVOrdersVisitsAssetsRow?.beforeImgFilePath}${containerVOrdersVisitsAssetsRow?.beforeImgFileName}';
                                                            } else if ((widget
                                                                        .ppOperation ==
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
                                                    if (FFAppState()
                                                            .stOVAssetSelected
                                                            .first
                                                            .processingId !=
                                                        4) {
                                                      return true;
                                                    } else if ((widget
                                                                .ppOperation ==
                                                            'before') &&
                                                        (containerVOrdersVisitsAssetsRow
                                                                    ?.beforeImgFileName !=
                                                                null &&
                                                            containerVOrdersVisitsAssetsRow
                                                                    ?.beforeImgFileName !=
                                                                '')) {
                                                      return true;
                                                    } else if ((widget
                                                                .ppOperation ==
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
                                                            if (widget
                                                                    .ppOperation ==
                                                                'before') {
                                                              if (FFAppState()
                                                                          .stOVAssetSelected
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
                                                                        '${FFAppState().stOVAssetSelected.first.beforeImgFilePath}${FFAppState().stOVAssetSelected.first.beforeImgFileName}',
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
                                                                          .stOVAssetSelected
                                                                          .first
                                                                          .id,
                                                                    ),
                                                                  );
                                                                }
                                                              } else {
                                                                return;
                                                              }
                                                            } else {
                                                              if (FFAppState()
                                                                          .stOVAssetSelected
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
                                                                        '${FFAppState().stOVAssetSelected.first.afterImgFilePath}${FFAppState().stOVAssetSelected.first.afterImgFileName}',
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
                                                                          .stOVAssetSelected
                                                                          .first
                                                                          .id,
                                                                    ),
                                                                  );
                                                                }
                                                              } else {
                                                                return;
                                                              }
                                                            }

                                                            setState(() => _model
                                                                    .requestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForRequestCompleted();
                                                            await action_blocks
                                                                .abOVAssetSelected(
                                                              context,
                                                              abOVAssetId:
                                                                  FFAppState()
                                                                      .stOVAssetSelected
                                                                      .first
                                                                      .id,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .stOVAssetSelected
                                                          .first
                                                          .processingId !=
                                                      4)
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
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
                                                                  'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOVAssetSelected.first.assetId.toString()}';
                                                            });
                                                            if (widget
                                                                    .ppOperation ==
                                                                'before') {
                                                              if (FFAppState()
                                                                          .stOVAssetSelected
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
                                                                          .stOVAssetSelected
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
                                                                  'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOVAssetSelected.first.assetId.toString()}',
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
                                                              setState(() =>
                                                                  _model.isDataUploading =
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
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
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
                                                                ScaffoldMessenger.of(
                                                                        context)
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
                                                                    .ppOperation ==
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
                                                                          '${FFAppConstants.appServerUrlStorage}${'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOVAssetSelected.first.assetId.toString()}'}/'),
                                                                },
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows.eq(
                                                                  'id',
                                                                  FFAppState()
                                                                      .stOVAssetSelected
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
                                                                          '${FFAppConstants.appServerUrlStorage}${'companies/${FFAppState().asUserCurrent.companyId.toString()}/assets/${FFAppState().stOVAssetSelected.first.assetId.toString()}'}/'),
                                                                },
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows.eq(
                                                                  'id',
                                                                  FFAppState()
                                                                      .stOVAssetSelected
                                                                      .first
                                                                      .id,
                                                                ),
                                                              );
                                                            }

                                                            await action_blocks
                                                                .abOVAssetSelected(
                                                              context,
                                                              abOVAssetId:
                                                                  FFAppState()
                                                                      .stOVAssetSelected
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
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model:
                                                _model.cpInputTexMultilineModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: CpInputTexMultilineWidget(
                                              initialValue: widget
                                                          .ppOperation ==
                                                      'before'
                                                  ? containerVOrdersVisitsAssetsRow
                                                      ?.beforeComments
                                                  : containerVOrdersVisitsAssetsRow
                                                      ?.afterComments,
                                              labelText: 'Condição do Ativo',
                                              readOnly: FFAppState()
                                                      .stOVAssetSelected
                                                      .first
                                                      .processingId ==
                                                  4,
                                              hintText: widget.ppOperation ==
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
                                if (widget.ppOperation == 'before')
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            if (FFAppState()
                                                    .stOVAssetSelected
                                                    .first
                                                    .processingId ==
                                                4) {
                                              if (widget.ppOperation ==
                                                  'before') {
                                                if (Navigator.of(context)
                                                    .canPop()) {
                                                  context.pop();
                                                }
                                                context.pushNamed(
                                                    'pgOVAsset3ActivitiesSearch');
                                              }
                                            } else {
                                              if (widget.ppOperation ==
                                                  'before') {
                                                if (_model
                                                            .cpInputTexMultilineModel
                                                            .inputTextMultineController
                                                            .text !=
                                                        '') {
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
                                                          .stOVAssetSelected
                                                          .first
                                                          .id,
                                                    ),
                                                  );
                                                  await action_blocks
                                                      .abOVAssetSelected(
                                                    context,
                                                    abOVAssetId: FFAppState()
                                                        .stOVAssetSelected
                                                        .first
                                                        .id,
                                                  );
                                                  setState(() {});
                                                  if (Navigator.of(context)
                                                      .canPop()) {
                                                    context.pop();
                                                  }
                                                  context.pushNamed(
                                                      'pgOVAsset3ActivitiesSearch');
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Informar a condição ANTES do ativo.'),
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
                                                }
                                              } else {
                                                if (_model
                                                            .cpInputTexMultilineModel
                                                            .inputTextMultineController
                                                            .text !=
                                                        '') {
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
                                                          .stOVAssetSelected
                                                          .first
                                                          .id,
                                                    ),
                                                  );
                                                  await action_blocks
                                                      .abOVAssetSelected(
                                                    context,
                                                    abOVAssetId: FFAppState()
                                                        .stOVAssetSelected
                                                        .first
                                                        .id,
                                                  );
                                                  setState(() {});
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Informar a condição DEPOIS do ativo.'),
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
                                                }
                                              }
                                            }
                                          },
                                          text: 'Salvar',
                                          icon: const FaIcon(
                                            FontAwesomeIcons.arrowRight,
                                          ),
                                          options: FFButtonOptions(
                                            height: 50.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
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
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (widget.ppOperation == 'after')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      if (FFAppState()
                                              .stOVAssetSelected
                                              .first
                                              .processingId ==
                                          1)
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                if (_model
                                                            .cpInputTexMultilineModel
                                                            .inputTextMultineController
                                                            .text ==
                                                        '') {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Ops ...'),
                                                        content: const Text(
                                                            'Informar a condição FINAL do ativo.'),
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
                                                } else {
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
                                                            supaSerialize<
                                                                    DateTime>(
                                                                getCurrentTimestamp),
                                                        'afterComments': _model
                                                            .cpInputTexMultilineModel
                                                            .inputTextMultineController
                                                            .text,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'id',
                                                        FFAppState()
                                                            .stOVAssetSelected
                                                            .first
                                                            .id,
                                                      ),
                                                    );
                                                    await action_blocks
                                                        .abOVAssetSelected(
                                                      context,
                                                      abOVAssetId: FFAppState()
                                                          .stOVAssetSelected
                                                          .first
                                                          .id,
                                                    );
                                                    setState(() {
                                                      FFAppState()
                                                              .stOVAssetMenuOption =
                                                          'Ativos';
                                                    });
                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamed(
                                                      'pgOVShow',
                                                      queryParameters: {
                                                        'ppOVId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .orderVisitId,
                                                          ParamType.int,
                                                        ),
                                                        'ppOId': serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .orderId,
                                                          ParamType.int,
                                                        ),
                                                        'ppOPId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .orderParentId,
                                                          ParamType.int,
                                                        ),
                                                        'ppProcessingId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .processingId,
                                                          ParamType.int,
                                                        ),
                                                        'ppUnitId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .beforeUnitId,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                }
                                              },
                                              text: 'REPORTAR',
                                              options: FFButtonOptions(
                                                height: 50.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                if (widget.ppOperation ==
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
                                                          .stOVAssetSelected
                                                          .first
                                                          .id,
                                                    ),
                                                  );
                                                } else {
                                                  if (_model
                                                              .cpInputTexMultilineModel
                                                              .inputTextMultineController
                                                              .text !=
                                                          '') {
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
                                                            .stOVAssetSelected
                                                            .first
                                                            .id,
                                                      ),
                                                    );
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              const Text('Ops ...'),
                                                          content: const Text(
                                                              'Informar a condição FINAL do ativo.'),
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
                                                }

                                                setState(() {
                                                  FFAppState()
                                                          .stOVAssetMenuOption =
                                                      'Ativos';
                                                });
                                                if (Navigator.of(context)
                                                    .canPop()) {
                                                  context.pop();
                                                }
                                                context.pushNamed(
                                                  'pgOVShow',
                                                  queryParameters: {
                                                    'ppOVId': serializeParam(
                                                      FFAppState()
                                                          .stOVAssetSelected
                                                          .first
                                                          .orderVisitId,
                                                      ParamType.int,
                                                    ),
                                                    'ppOId': serializeParam(
                                                      FFAppState()
                                                          .stOVAssetSelected
                                                          .first
                                                          .orderId,
                                                      ParamType.int,
                                                    ),
                                                    'ppOPId': serializeParam(
                                                      FFAppState()
                                                          .stOVAssetSelected
                                                          .first
                                                          .orderParentId,
                                                      ParamType.int,
                                                    ),
                                                    'ppProcessingId':
                                                        serializeParam(
                                                      FFAppState()
                                                          .stOVAssetSelected
                                                          .first
                                                          .processingId,
                                                      ParamType.int,
                                                    ),
                                                    'ppUnitId': serializeParam(
                                                      FFAppState()
                                                          .stOVAssetSelected
                                                          .first
                                                          .beforeUnitId,
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
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
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
                                      if (FFAppState()
                                              .stOVAssetSelected
                                              .first
                                              .processingId ==
                                          2)
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                _model.isAllowedDisapprove =
                                                    await action_blocks
                                                        .abGuardian(
                                                  context,
                                                  abPgRequestedId: 11,
                                                );
                                                if (_model
                                                    .isAllowedDisapprove!) {
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
                                                            supaSerialize<
                                                                    DateTime>(
                                                                getCurrentTimestamp),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'id',
                                                        FFAppState()
                                                            .stOVAssetSelected
                                                            .first
                                                            .id,
                                                      ),
                                                    );
                                                    await action_blocks
                                                        .abOVProcessingCheck(
                                                      context,
                                                      abOVId:
                                                          valueOrDefault<int>(
                                                        FFAppState()
                                                            .stOVSelected
                                                            .first
                                                            .id,
                                                        1,
                                                      ),
                                                    );
                                                    setState(() {});
                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamed(
                                                      'pgOVShow',
                                                      queryParameters: {
                                                        'ppOVId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .orderVisitId,
                                                          ParamType.int,
                                                        ),
                                                        'ppOId': serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .orderId,
                                                          ParamType.int,
                                                        ),
                                                        'ppOPId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .orderParentId,
                                                          ParamType.int,
                                                        ),
                                                        'ppProcessingId':
                                                            serializeParam(
                                                          2,
                                                          ParamType.int,
                                                        ),
                                                        'ppUnitId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .stOVAssetSelected
                                                              .first
                                                              .beforeUnitId,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        FFAppConstants
                                                            .msgNotAllowed,
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                  );
                                                }

                                                setState(() {});
                                              },
                                              text: 'RECUSAR',
                                              options: FFButtonOptions(
                                                height: 50.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
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
                                                _model.isAllowedApprove =
                                                    await action_blocks
                                                        .abGuardian(
                                                  context,
                                                  abPgRequestedId: 11,
                                                );
                                                if (_model.isAllowedApprove!) {
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'Atividade'),
                                                                content: const Text(
                                                                    'Deseja realmente APROVAR ?'),
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
                                                        'approvedUserId':
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .id,
                                                        'approvedDate':
                                                            supaSerialize<
                                                                    DateTime>(
                                                                getCurrentTimestamp),
                                                        'processingId': 4,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'id',
                                                        FFAppState()
                                                            .stOVAssetSelected
                                                            .first
                                                            .id,
                                                      ),
                                                    );

                                                    context.pushNamed(
                                                      'pgOVShow',
                                                      queryParameters: {
                                                        'ppOVId':
                                                            serializeParam(
                                                          containerVOrdersVisitsAssetsRow
                                                              ?.id,
                                                          ParamType.int,
                                                        ),
                                                        'ppOId': serializeParam(
                                                          containerVOrdersVisitsAssetsRow
                                                              ?.orderId,
                                                          ParamType.int,
                                                        ),
                                                        'ppOPId':
                                                            serializeParam(
                                                          containerVOrdersVisitsAssetsRow
                                                              ?.orderParentId,
                                                          ParamType.int,
                                                        ),
                                                        'ppProcessingId':
                                                            serializeParam(
                                                          4,
                                                          ParamType.int,
                                                        ),
                                                        'ppUnitId':
                                                            serializeParam(
                                                          containerVOrdersVisitsAssetsRow
                                                              ?.beforeUnitId,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        FFAppConstants
                                                            .msgNotAllowed,
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                  );
                                                }

                                                setState(() {});
                                              },
                                              text: 'APROVAR',
                                              options: FFButtonOptions(
                                                height: 50.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
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
                                      if (containerVOrdersVisitsAssetsRow
                                              ?.processingId ==
                                          4)
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'APROVADO POR ${FFAppState().stOVAssetSelected.first.approvedUserNameShort}em ${dateTimeFormat('d/M/y H:mm', FFAppState().stOVAssetSelected.first.approvedDateDateTime)} h',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
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
