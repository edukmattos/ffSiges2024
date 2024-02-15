import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_text_widget.dart' show CpInputTextWidget;
import 'package:flutter/material.dart';

class CpInputTextModel extends FlutterFlowModel<CpInputTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputText widget.
  FocusNode? inputTextFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTextFocusNode?.dispose();
    inputTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
