import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_orders_statuses_model.dart';
export 'cp_orders_statuses_model.dart';

class CpOrdersStatusesWidget extends StatefulWidget {
  const CpOrdersStatusesWidget({
    super.key,
    int? cpStatusId,
    String? cpStatusDescription,
  })  : cpStatusId = cpStatusId ?? 1,
        cpStatusDescription = cpStatusDescription ?? 'cpStatusDescription';

  final int cpStatusId;
  final String cpStatusDescription;

  @override
  State<CpOrdersStatusesWidget> createState() => _CpOrdersStatusesWidgetState();
}

class _CpOrdersStatusesWidgetState extends State<CpOrdersStatusesWidget>
    with TickerProviderStateMixin {
  late CpOrdersStatusesModel _model;

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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOrdersStatusesModel());

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
      width: 50.0,
      height: 50.0,
      decoration: const BoxDecoration(),
      child: Builder(
        builder: (context) {
          if (widget.cpStatusId == 1) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).info,
                      width: 4.0,
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
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: FaIcon(
                        FontAwesomeIcons.whmcs,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation1']!),
              ],
            );
          } else if (widget.cpStatusId == 2) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).success,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).info,
                      width: 4.0,
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: AlignedTooltip(
                    content: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Autorizadas',
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        )),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBtnText,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: const Duration(milliseconds: 100),
                    showDuration: const Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.fire_truck,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
              ],
            );
          } else if (widget.cpStatusId == 3) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).info,
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
                        FlutterFlowTheme.of(context).primaryBtnText,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: const Duration(milliseconds: 100),
                    showDuration: const Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation3']!),
              ],
            );
          } else if (widget.cpStatusId == 4) {
            return Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).success,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                  width: 4.0,
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
                backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: const Duration(milliseconds: 100),
                showDuration: const Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: FaIcon(
                    FontAwesomeIcons.solidFlag,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            ).animateOnPageLoad(
                animationsMap['containerOnPageLoadAnimation4']!);
          } else if (widget.cpStatusId == 5) {
            return Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryText,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                  width: 4.0,
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
                backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: const Duration(milliseconds: 100),
                showDuration: const Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.pause_sharp,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            ).animateOnPageLoad(
                animationsMap['containerOnPageLoadAnimation5']!);
          } else {
            return Text(
              'Hello World',
              style: FlutterFlowTheme.of(context).bodyMedium,
            );
          }
        },
      ),
    );
  }
}
