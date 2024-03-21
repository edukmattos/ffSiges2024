import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders/md_user_available_menu_options/md_user_available_menu_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_d_b_user_available_model.dart';
export 'cp_d_b_user_available_model.dart';

class CpDBUserAvailableWidget extends StatefulWidget {
  const CpDBUserAvailableWidget({
    super.key,
    required this.toolTip,
  });

  final String? toolTip;

  @override
  State<CpDBUserAvailableWidget> createState() =>
      _CpDBUserAvailableWidgetState();
}

class _CpDBUserAvailableWidgetState extends State<CpDBUserAvailableWidget>
    with TickerProviderStateMixin {
  late CpDBUserAvailableModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
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
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
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
          begin: const Offset(0.0, 20.0),
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
    _model = createModel(context, () => CpDBUserAvailableModel());

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

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Container(
            height: 80.0,
            decoration: const BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('pgMyProfile');
              },
              child: wrapWithModel(
                model: _model.cpUserPicProfileModel,
                updateCallback: () => setState(() {}),
                child: CpUserPicProfileWidget(
                  size: 70,
                  imgUrl:
                      '${FFAppConstants.appServerUrlStorage}${FFAppState().asUserCurrent.imgFilePath}${FFAppState().asUserCurrent.imgFileName}',
                  toolTip: widget.toolTip!,
                  isAvailable: FFAppState().asUserCurrent.isAvailable,
                  isOrderVisitIdInProgress:
                      FFAppState().asUserCurrent.isOrderVisitIdInProgress,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 80.0,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FFAppState().asUserCurrent.nameFull,
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyLarge,
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                child: Text(
                  FFAppState().asUserCurrent.teamCode,
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelSmall,
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
              ),
              FFButtonWidget(
                onPressed: FFAppState().asUserCurrent.isOrderVisitIdInProgress
                    ? null
                    : () async {
                        if (FFAppState()
                            .asUserCurrent
                            .isOrderVisitIdInProgress) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Ops ...'),
                                content: const Text(
                                    'Sua disponibilidade não pode ser alterada pois consta um Atendimento em ABERTO.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const MdUserAvailableMenuOptionsWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        }
                      },
                text: () {
                  if (FFAppState().asUserCurrent.isAvailable) {
                    return 'Disponível';
                  } else if (!FFAppState().asUserCurrent.isAvailable &&
                      FFAppState().asUserCurrent.isOrderVisitIdInProgress) {
                    return 'Em Atendimento';
                  } else if (!FFAppState().asUserCurrent.isAvailable &&
                      !FFAppState().asUserCurrent.isOrderVisitIdInProgress) {
                    return 'Indisponível';
                  } else {
                    return 'N/D';
                  }
                }(),
                options: FFButtonOptions(
                  width: 130.0,
                  height: 20.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: () {
                    if (FFAppState().asUserCurrent.isAvailable) {
                      return FlutterFlowTheme.of(context).tertiary;
                    } else if (!FFAppState().asUserCurrent.isAvailable &&
                        FFAppState().asUserCurrent.isOrderVisitIdInProgress) {
                      return FlutterFlowTheme.of(context).success;
                    } else if (!FFAppState().asUserCurrent.isAvailable &&
                        !FFAppState().asUserCurrent.isOrderVisitIdInProgress) {
                      return FlutterFlowTheme.of(context).error;
                    } else {
                      return const Color(0x00000000);
                    }
                  }(),
                  textStyle: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
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
        ),
      ].divide(const SizedBox(width: 12.0)),
    );
  }
}
