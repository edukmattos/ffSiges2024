import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/assets/cp_asset_show_bottom_nav_bar/cp_asset_show_bottom_nav_bar_widget.dart';
import '/pages/assets/cp_asset_show_card/cp_asset_show_card_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import 'pg_asset_show_widget.dart' show PgAssetShowWidget;
import 'package:flutter/material.dart';

class PgAssetShowModel extends FlutterFlowModel<PgAssetShowWidget> {
  ///  Local state fields for this page.

  String? lpsvAssetView;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpAssetShowCard component.
  late CpAssetShowCardModel cpAssetShowCardModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for cpAssetShowBottomNavBar component.
  late CpAssetShowBottomNavBarModel cpAssetShowBottomNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpAssetShowCardModel = createModel(context, () => CpAssetShowCardModel());
    cpAssetShowBottomNavBarModel =
        createModel(context, () => CpAssetShowBottomNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpAssetShowCardModel.dispose();
    cpAssetShowBottomNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
