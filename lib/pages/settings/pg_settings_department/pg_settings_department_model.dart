import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import 'pg_settings_department_widget.dart' show PgSettingsDepartmentWidget;
import 'package:flutter/material.dart';

class PgSettingsDepartmentModel
    extends FlutterFlowModel<PgSettingsDepartmentWidget> {
  ///  Local state fields for this page.

  String lpsvFilePath = '';

  String lpsvFileName = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
