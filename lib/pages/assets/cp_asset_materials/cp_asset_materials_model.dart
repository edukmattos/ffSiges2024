import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_asset_materials_widget.dart' show CpAssetMaterialsWidget;
import 'package:flutter/material.dart';

class CpAssetMaterialsModel extends FlutterFlowModel<CpAssetMaterialsWidget> {
  ///  Local state fields for this component.

  List<DtVAssetMaterialsStruct> lcsvAssetMaterials = [];
  void addToLcsvAssetMaterials(DtVAssetMaterialsStruct item) =>
      lcsvAssetMaterials.add(item);
  void removeFromLcsvAssetMaterials(DtVAssetMaterialsStruct item) =>
      lcsvAssetMaterials.remove(item);
  void removeAtIndexFromLcsvAssetMaterials(int index) =>
      lcsvAssetMaterials.removeAt(index);
  void insertAtIndexInLcsvAssetMaterials(
          int index, DtVAssetMaterialsStruct item) =>
      lcsvAssetMaterials.insert(index, item);
  void updateLcsvAssetMaterialsAtIndex(
          int index, Function(DtVAssetMaterialsStruct) updateFn) =>
      lcsvAssetMaterials[index] = updateFn(lcsvAssetMaterials[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
