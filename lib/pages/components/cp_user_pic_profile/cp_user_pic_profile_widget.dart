import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
    return Container(
      width: widget.size?.toDouble(),
      height: widget.size?.toDouble(),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent2,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
            widget.imgUrl!,
          ).image,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBtnText,
          width: 4.0,
        ),
      ),
    );
  }
}
