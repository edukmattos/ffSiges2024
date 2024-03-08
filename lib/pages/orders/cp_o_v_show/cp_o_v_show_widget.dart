import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders/md_o_visit_close/md_o_visit_close_widget.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import '/pages/visits/md_o_v_cancel/md_o_v_cancel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_show_model.dart';
export 'cp_o_v_show_model.dart';

class CpOVShowWidget extends StatefulWidget {
  const CpOVShowWidget({
    super.key,
    required this.visitId,
  });

  final int? visitId;

  @override
  State<CpOVShowWidget> createState() => _CpOVShowWidgetState();
}

class _CpOVShowWidgetState extends State<CpOVShowWidget>
    with TickerProviderStateMixin {
  late CpOVShowModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVShowModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFAppState().stOVSelected.first.id.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                              Text(
                                '${dateTimeFormat('d/M/y H:mm', FFAppState().stOVSelected.first.dateStartDatetime)}h',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation2']!),
                              Text(
                                '${dateTimeFormat('d/M/y H:mm', FFAppState().stOVSelected.first.dateEndDatetime)}h',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation3']!),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [],
                              ),
                              wrapWithModel(
                                model: _model.cpOVProcessingCardModel1,
                                updateCallback: () => setState(() {}),
                                child: CpOVProcessingCardWidget(
                                  processingDescription: FFAppState()
                                      .stOVSelected
                                      .first
                                      .processingDescription,
                                  processingId: FFAppState()
                                      .stOVSelected
                                      .first
                                      .processingId,
                                ),
                              ),
                            ].divide(const SizedBox(width: 8.0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equipe',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65.0,
                                    height: 65.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: FutureBuilder<
                                        List<VOrdersVisitsTeamsRow>>(
                                      future:
                                          VOrdersVisitsTeamsTable().queryRows(
                                        queryFn: (q) => q.eq(
                                          'visitId',
                                          FFAppState().stOVSelected.first.id,
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<VOrdersVisitsTeamsRow>
                                            listViewVOrdersVisitsTeamsRowList =
                                            snapshot.data!;
                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              listViewVOrdersVisitsTeamsRowList
                                                  .length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(width: 8.0),
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewVOrdersVisitsTeamsRow =
                                                listViewVOrdersVisitsTeamsRowList[
                                                    listViewIndex];
                                            return CpUserPicProfileWidget(
                                              key: Key(
                                                  'Key5pt_${listViewIndex}_of_${listViewVOrdersVisitsTeamsRowList.length}'),
                                              size: 60,
                                              imgUrl:
                                                  '${FFAppConstants.appServerUrlStorage}${listViewVOrdersVisitsTeamsRow.imgFilePath}${listViewVOrdersVisitsTeamsRow.imgFileName}',
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Transporte',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if ((FFAppState().asUserCurrent.id ==
                              FFAppState().stOVSelected.first.teamLeaderId) &&
                          (FFAppState().stOVSelected.first.statusId == 1))
                        FFButtonWidget(
                          onPressed: () async {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Ops ...'),
                                      content: const Text(
                                          'Deseja CANCELAR este Atendimento ?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: const Text('Cancelar'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: const Text('Confirmar'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MdOVCancelWidget(
                                      visitId:
                                          FFAppState().stOVSelected.first.id,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          text: 'CANCELAR',
                          icon: const FaIcon(
                            FontAwesomeIcons.solidThumbsDown,
                          ),
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).error,
                            textStyle: FlutterFlowTheme.of(context)
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
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      if ((FFAppState().asUserCurrent.id ==
                              FFAppState().stOVSelected.first.teamLeaderId) &&
                          (FFAppState().stOVSelected.first.statusId == 1))
                        FFButtonWidget(
                          onPressed: () async {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Ops ...'),
                                      content: const Text(
                                          'Deseja ENCERRAR o Atendimento ?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: const Text('Cancelar'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: const Text('Confirmar'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MdOVisitCloseWidget(
                                      visitId:
                                          FFAppState().stOVSelected.first.id,
                                      orderId: 0,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          text: 'ENCERRAR',
                          icon: const FaIcon(
                            FontAwesomeIcons.solidThumbsUp,
                          ),
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).success,
                            textStyle: FlutterFlowTheme.of(context)
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
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                    ],
                  ),
                  if (FFAppState().stOVSelected.first.isCanceled)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFAppState()
                                      .stOVSelected
                                      .first
                                      .orderCancelReasonDescription,
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    FFAppState().stOVSelected.first.comments,
                                    style:
                                        FlutterFlowTheme.of(context).labelSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpOVProcessingCardModel2,
                            updateCallback: () => setState(() {}),
                            child: const CpOVProcessingCardWidget(
                              processingDescription: 'Cancelada',
                              processingId: 3,
                            ),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
