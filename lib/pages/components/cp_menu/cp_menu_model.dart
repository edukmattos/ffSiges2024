import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dark_light_switch_small/cp_dark_light_switch_small_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import 'cp_menu_widget.dart' show CpMenuWidget;
import 'package:flutter/material.dart';

class CpMenuModel extends FlutterFlowModel<CpMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;
  // Stores action output result for [Action Block - abGuardian] action in Row widget.
  bool? isAllowed;
  // Stores action output result for [Action Block - abGuardian] action in Row widget.
  bool? isAllowedOrdersVisitsSearch;
  // Stores action output result for [Action Block - abGuardian] action in Row widget.
  bool? isAllowedUnitSearch;
  // Stores action output result for [Action Block - abGuardian] action in Row widget.
  bool? isAllowedAssetsSearch;
  // Model for cpDarkLightSwitchSmall component.
  late CpDarkLightSwitchSmallModel cpDarkLightSwitchSmallModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
    cpDarkLightSwitchSmallModel =
        createModel(context, () => CpDarkLightSwitchSmallModel());
  }

  @override
  void dispose() {
    cpUserPicProfileModel.dispose();
    cpDarkLightSwitchSmallModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
