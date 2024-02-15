import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_user_pic_profile_model.dart';
export 'cp_user_pic_profile_model.dart';

class CpUserPicProfileWidget extends StatefulWidget {
  const CpUserPicProfileWidget({
    super.key,
    required this.size,
    this.imgUrl,
  });

  final int? size;
  final String? imgUrl;

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
    context.watch<FFAppState>();

    return Container(
      width: widget.size?.toDouble(),
      height: widget.size?.toDouble(),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent2,
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            widget.imgUrl!,
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
