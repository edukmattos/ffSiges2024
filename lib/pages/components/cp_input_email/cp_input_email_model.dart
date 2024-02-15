import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_email_widget.dart' show CpInputEmailWidget;
import 'package:flutter/material.dart';

class CpInputEmailModel extends FlutterFlowModel<CpInputEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailController;
  String? Function(BuildContext, String?)? inputEmailControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputEmailFocusNode?.dispose();
    inputEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
