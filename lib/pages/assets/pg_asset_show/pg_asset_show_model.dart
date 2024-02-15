import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_datasheet1/cp_asset_datasheet1_widget.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/assets/cp_asset_materials/cp_asset_materials_widget.dart';
import '/pages/assets/cp_asset_show_bottom_nav_bar/cp_asset_show_bottom_nav_bar_widget.dart';
import 'pg_asset_show_widget.dart' show PgAssetShowWidget;
import 'package:flutter/material.dart';

class PgAssetShowModel extends FlutterFlowModel<PgAssetShowWidget> {
  ///  Local state fields for this page.

  String lpsvNavBarOption = 'components';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpAssetListItemCard component.
  late CpAssetListItemCardModel cpAssetListItemCardModel;
  // Model for cpAssetMaterials component.
  late CpAssetMaterialsModel cpAssetMaterialsModel;
  // Model for cpAssetDatasheet1 component.
  late CpAssetDatasheet1Model cpAssetDatasheet1Model;
  // Model for cpAssetShowBottomNavBar component.
  late CpAssetShowBottomNavBarModel cpAssetShowBottomNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpAssetListItemCardModel =
        createModel(context, () => CpAssetListItemCardModel());
    cpAssetMaterialsModel = createModel(context, () => CpAssetMaterialsModel());
    cpAssetDatasheet1Model =
        createModel(context, () => CpAssetDatasheet1Model());
    cpAssetShowBottomNavBarModel =
        createModel(context, () => CpAssetShowBottomNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpAssetListItemCardModel.dispose();
    cpAssetMaterialsModel.dispose();
    cpAssetDatasheet1Model.dispose();
    cpAssetShowBottomNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
