import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_currency_widget.dart' show CpInputCurrencyWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpInputCurrencyModel extends FlutterFlowModel<CpInputCurrencyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputCurrency widget.
  FocusNode? inputCurrencyFocusNode;
  TextEditingController? inputCurrencyController;
  final inputCurrencyMask = MaskTextInputFormatter(mask: '######,##');
  String? Function(BuildContext, String?)? inputCurrencyControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputCurrencyFocusNode?.dispose();
    inputCurrencyController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
