import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cp_o_v_processing_card_model.dart';
export 'cp_o_v_processing_card_model.dart';

class CpOVProcessingCardWidget extends StatefulWidget {
  const CpOVProcessingCardWidget({
    super.key,
    String? processingDescription,
    int? processingId,
  })  : processingDescription = processingDescription ?? 'Rascunho',
        processingId = processingId ?? 1;

  final String processingDescription;
  final int processingId;

  @override
  State<CpOVProcessingCardWidget> createState() =>
      _CpOVProcessingCardWidgetState();
}

class _CpOVProcessingCardWidgetState extends State<CpOVProcessingCardWidget>
    with TickerProviderStateMixin {
  late CpOVProcessingCardModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
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
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
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
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
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
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
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
    _model = createModel(context, () => CpOVProcessingCardModel());

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
    return Builder(
      builder: (context) {
        if (widget.processingId == 1) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  shape: BoxShape.circle,
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AlignedTooltip(
                  content: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        widget.processingDescription,
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      )),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: const Duration(milliseconds: 100),
                  showDuration: const Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: badges.Badge(
                    badgeContent: Text(
                      '1',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                    ),
                    showBadge: false,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).primary,
                    elevation: 4.0,
                    padding: const EdgeInsets.all(8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.draw,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation1']!),
            ],
          );
        } else if (widget.processingId == 2) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  shape: BoxShape.circle,
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AlignedTooltip(
                  content: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        widget.processingDescription,
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      )),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: const Duration(milliseconds: 100),
                  showDuration: const Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: badges.Badge(
                    badgeContent: Text(
                      '1',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                    ),
                    showBadge: false,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).primary,
                    elevation: 4.0,
                    padding: const EdgeInsets.all(8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).tertiary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.report_problem,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation2']!),
            ],
          );
        } else if (widget.processingId == 3) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  shape: BoxShape.circle,
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AlignedTooltip(
                  content: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        widget.processingDescription,
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      )),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: const Duration(milliseconds: 100),
                  showDuration: const Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: badges.Badge(
                    badgeContent: Text(
                      '1',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                    ),
                    showBadge: false,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).primary,
                    elevation: 4.0,
                    padding: const EdgeInsets.all(8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).error,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: FaIcon(
                          FontAwesomeIcons.solidThumbsDown,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation3']!),
            ],
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  shape: BoxShape.circle,
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AlignedTooltip(
                  content: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        widget.processingDescription,
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      )),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: const Duration(milliseconds: 100),
                  showDuration: const Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: badges.Badge(
                    badgeContent: Text(
                      '1',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                    ),
                    showBadge: false,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).primary,
                    elevation: 4.0,
                    padding: const EdgeInsets.all(8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).success,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: FaIcon(
                          FontAwesomeIcons.solidThumbsUp,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation4']!),
            ],
          );
        }
      },
    );
  }
}
