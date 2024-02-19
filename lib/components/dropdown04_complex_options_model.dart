import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown04_complex_options_widget.dart'
    show Dropdown04ComplexOptionsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Dropdown04ComplexOptionsModel
    extends FlutterFlowModel<Dropdown04ComplexOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
