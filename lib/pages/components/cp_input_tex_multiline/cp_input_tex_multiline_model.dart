import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_tex_multiline_widget.dart' show CpInputTexMultilineWidget;
import 'package:flutter/material.dart';

class CpInputTexMultilineModel
    extends FlutterFlowModel<CpInputTexMultilineWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputTextMultine widget.
  FocusNode? inputTextMultineFocusNode;
  TextEditingController? inputTextMultineController;
  String? Function(BuildContext, String?)? inputTextMultineControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTextMultineFocusNode?.dispose();
    inputTextMultineController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
