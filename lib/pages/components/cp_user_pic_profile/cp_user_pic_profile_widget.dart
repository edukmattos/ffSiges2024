import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'cp_user_pic_profile_model.dart';
export 'cp_user_pic_profile_model.dart';

class CpUserPicProfileWidget extends StatefulWidget {
  const CpUserPicProfileWidget({
    super.key,
    required this.size,
    this.imgUrl,
    required this.toolTip,
    bool? isAvailable,
    required this.isOrderVisitIdInProgress,
  }) : isAvailable = isAvailable ?? true;

  final int? size;
  final String? imgUrl;
  final String? toolTip;
  final bool isAvailable;
  final bool? isOrderVisitIdInProgress;

  @override
  State<CpUserPicProfileWidget> createState() => _CpUserPicProfileWidgetState();
}

class _CpUserPicProfileWidgetState extends State<CpUserPicProfileWidget> {
  late CpUserPicProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpUserPicProfileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        AlignedTooltip(
          content: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                widget.toolTip!,
                style: FlutterFlowTheme.of(context).bodyLarge,
              )),
          offset: 4.0,
          preferredDirection: AxisDirection.down,
          borderRadius: BorderRadius.circular(8.0),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          elevation: 4.0,
          tailBaseWidth: 24.0,
          tailLength: 12.0,
          waitDuration: const Duration(milliseconds: 100),
          showDuration: const Duration(milliseconds: 1000),
          triggerMode: TooltipTriggerMode.tap,
          child: Container(
            width: widget.size?.toDouble(),
            height: widget.size?.toDouble(),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(
                  widget.imgUrl!,
                ).image,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: () {
                  if (widget.isAvailable) {
                    return FlutterFlowTheme.of(context).tertiary;
                  } else if (!widget.isAvailable &&
                      widget.isOrderVisitIdInProgress!) {
                    return FlutterFlowTheme.of(context).success;
                  } else if (!widget.isAvailable &&
                      !widget.isOrderVisitIdInProgress!) {
                    return FlutterFlowTheme.of(context).error;
                  } else {
                    return const Color(0x00000000);
                  }
                }(),
                width: 6.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
