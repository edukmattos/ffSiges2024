import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import 'cp_d_b_user_available_widget.dart' show CpDBUserAvailableWidget;
import 'package:flutter/material.dart';

class CpDBUserAvailableModel extends FlutterFlowModel<CpDBUserAvailableWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
  }

  @override
  void dispose() {
    cpUserPicProfileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
