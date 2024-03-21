import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'cp_o_statuses_model.dart';
export 'cp_o_statuses_model.dart';

class CpOStatusesWidget extends StatefulWidget {
  const CpOStatusesWidget({
    super.key,
    int? cpStatusId,
    String? cpStatusDescription,
    int? cpBadge,
  })  : cpStatusId = cpStatusId ?? 1,
        cpStatusDescription = cpStatusDescription ?? 'cpStatusDescription',
        cpBadge = cpBadge ?? 0;

  final int cpStatusId;
  final String cpStatusDescription;
  final int cpBadge;

  @override
  State<CpOStatusesWidget> createState() => _CpOStatusesWidgetState();
}

class _CpOStatusesWidgetState extends State<CpOStatusesWidget>
    with TickerProviderStateMixin {
  late CpOStatusesModel _model;

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
    'containerOnPageLoadAnimation5': AnimationInfo(
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
    'containerOnPageLoadAnimation6': AnimationInfo(
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
    'containerOnPageLoadAnimation7': AnimationInfo(
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
    'containerOnPageLoadAnimation8': AnimationInfo(
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
    'containerOnPageLoadAnimation9': AnimationInfo(
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
    _model = createModel(context, () => CpOStatusesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.0,
      height: 55.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Builder(
        builder: (context) {
          if (widget.cpStatusId == 1) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'NP',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                ),
              ],
            );
          } else if (widget.cpStatusId == 2) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'AV',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation3']!),
                ),
              ],
            );
          } else if (widget.cpStatusId == 3) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'AU',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation4']!),
                ),
              ],
            );
          } else if (widget.cpStatusId == 4) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'AG',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation5']!),
                ),
              ],
            );
          } else if (widget.cpStatusId == 5) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).success,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'EX',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation6']!),
                ),
              ],
            );
          } else if (widget.cpStatusId == 6) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent3,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'SU',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation7']!),
                ),
              ],
            );
          } else if (widget.cpStatusId == 7) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'CO',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation8']!),
                ),
              ],
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).error,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 6.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.cpStatusDescription,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: badges.Badge(
                        badgeContent: Text(
                          widget.cpBadge.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: widget.cpBadge > 0,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Text(
                          'CA',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation9']!),
                ),
              ],
            );
          }
        },
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!);
  }
}
