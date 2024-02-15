import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_date_disabled_widget.dart' show CpInputDateDisabledWidget;
import 'package:flutter/material.dart';

class CpInputDateDisabledModel
    extends FlutterFlowModel<CpInputDateDisabledWidget> {
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
