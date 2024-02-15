import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_integer_widget.dart' show CpInputIntegerWidget;
import 'package:flutter/material.dart';

class CpInputIntegerModel extends FlutterFlowModel<CpInputIntegerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputInteger widget.
  FocusNode? inputIntegerFocusNode;
  TextEditingController? inputIntegerController;
  String? Function(BuildContext, String?)? inputIntegerControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputIntegerFocusNode?.dispose();
    inputIntegerController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
