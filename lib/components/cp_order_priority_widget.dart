import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_order_priority_model.dart';
export 'cp_order_priority_model.dart';

class CpOrderPriorityWidget extends StatefulWidget {
  const CpOrderPriorityWidget({
    super.key,
    int? priorityId,
    String? priorityDescription,
  })  : priorityId = priorityId ?? 3,
        priorityDescription = priorityDescription ?? 'priorityDescription';

  final int priorityId;
  final String priorityDescription;

  @override
  State<CpOrderPriorityWidget> createState() => _CpOrderPriorityWidgetState();
}

class _CpOrderPriorityWidgetState extends State<CpOrderPriorityWidget>
    with TickerProviderStateMixin {
  late CpOrderPriorityModel _model;

  final animationsMap = {
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
    _model = createModel(context, () => CpOrderPriorityModel());

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
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: AlignedTooltip(
        content: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              widget.priorityDescription,
              style: FlutterFlowTheme.of(context).bodyLarge,
            )),
        offset: 4.0,
        preferredDirection: AxisDirection.down,
        borderRadius: BorderRadius.circular(8.0),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 4.0,
        tailBaseWidth: 24.0,
        tailLength: 12.0,
        waitDuration: const Duration(milliseconds: 100),
        showDuration: const Duration(milliseconds: 1500),
        triggerMode: TooltipTriggerMode.tap,
        child: Builder(
          builder: (context) {
            if (widget.priorityId == 1) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: FaIcon(
                  FontAwesomeIcons.thermometerQuarter,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 30.0,
                ),
              );
            } else if (widget.priorityId == 2) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: FaIcon(
                  FontAwesomeIcons.thermometerHalf,
                  color: FlutterFlowTheme.of(context).warning,
                  size: 30.0,
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: FaIcon(
                  FontAwesomeIcons.thermometerFull,
                  color: FlutterFlowTheme.of(context).error,
                  size: 30.0,
                ),
              );
            }
          },
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
