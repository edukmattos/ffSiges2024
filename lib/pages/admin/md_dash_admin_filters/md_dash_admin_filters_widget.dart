import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/filters/cp_dropdown_filters_contracts/cp_dropdown_filters_contracts_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_types/cp_dropdown_filters_orders_types_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_types_subs/cp_dropdown_filters_orders_types_subs_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems/cp_dropdown_filters_systems_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems_parents/cp_dropdown_filters_systems_parents_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_dash_admin_filters_model.dart';
export 'md_dash_admin_filters_model.dart';

class MdDashAdminFiltersWidget extends StatefulWidget {
  const MdDashAdminFiltersWidget({super.key});

  @override
  State<MdDashAdminFiltersWidget> createState() =>
      _MdDashAdminFiltersWidgetState();
}

class _MdDashAdminFiltersWidgetState extends State<MdDashAdminFiltersWidget> {
  late MdDashAdminFiltersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdDashAdminFiltersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xB20B191E),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Container(
                    width: 600.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 8.0),
                                        child: Text(
                                          'Filtros',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 25.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          icon: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersSystemsParentsModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const CpDropdownFiltersSystemsParentsWidget(
                                              hintText: 'Sistemas',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersSystemsModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const CpDropdownFiltersSystemsWidget(
                                              hintText: 'Sub Sistemas',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsTypesParentModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const CpDropdownFiltersUnitsTypesParentWidget(
                                              hintText: 'Tipos Unidades',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const CpDropdownFiltersUnitsWidget(
                                              hintText: 'Unidades',
                                              initialValue: 1,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersOrdersTypesModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const CpDropdownFiltersOrdersTypesWidget(
                                              hintText: 'Tipos SS/OS',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersOrdersTypesSubsModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const CpDropdownFiltersOrdersTypesSubsWidget(
                                              hintText: 'Sub Tipos OS',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersContractsModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const CpDropdownFiltersContractsWidget(
                                              hintText: 'Contratos',
                                            ),
                                          ),
                                        ]
                                            .divide(const SizedBox(height: 8.0))
                                            .addToStart(const SizedBox(height: 24.0))
                                            .addToEnd(const SizedBox(height: 24.0)),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            FFAppState().update(() {
                                              FFAppState().asFiltersServices =
                                                  DtFiltersServicesStruct(
                                                systemsParents: _model
                                                    .cpDropdownFiltersSystemsParentsModel
                                                    .dropdownSystemsParentValue,
                                                systems: _model
                                                    .cpDropdownFiltersSystemsModel
                                                    .dropdownFiltersSystemsValue,
                                                unitsTypesParent: _model
                                                    .cpDropdownFiltersUnitsTypesParentModel
                                                    .dropdownFiltersUnitsTypesParentValue,
                                                ordersTypesSubs: _model
                                                    .cpDropdownFiltersOrdersTypesSubsModel
                                                    .dropdownFiltersOrdersTypesSubsValue,
                                                ordersTypes: _model
                                                    .cpDropdownFiltersOrdersTypesModel
                                                    .dropdownFiltersOrdersTypesValue,
                                                contracts: _model
                                                    .cpDropdownFiltersContractsModel
                                                    .dropdownOrdersContractsValue,
                                                units: _model
                                                    .cpDropdownFiltersUnitsModel
                                                    .dropdownFiltersUnitsValue,
                                              );
                                            });
                                            await action_blocks
                                                .abDashAdminOrdersFilters(
                                              context,
                                              abOrdersTypes: _model
                                                  .cpDropdownFiltersOrdersTypesModel
                                                  .dropdownFiltersOrdersTypesValue,
                                              abSystemsParent: _model
                                                  .cpDropdownFiltersSystemsParentsModel
                                                  .dropdownSystemsParentValue,
                                              abSystems: _model
                                                  .cpDropdownFiltersSystemsModel
                                                  .dropdownFiltersSystemsValue,
                                              abUnits: _model
                                                  .cpDropdownFiltersUnitsModel
                                                  .dropdownFiltersUnitsValue,
                                              abOrdersTypesSubs: _model
                                                  .cpDropdownFiltersOrdersTypesSubsModel
                                                  .dropdownFiltersOrdersTypesSubsValue,
                                              abUnitsTypesParent: _model
                                                  .cpDropdownFiltersUnitsTypesParentModel
                                                  .dropdownFiltersUnitsTypesParentValue,
                                              abContracts: _model
                                                  .cpDropdownFiltersContractsModel
                                                  .dropdownOrdersContractsValue,
                                            );
                                            await action_blocks
                                                .abOrdersVisitsSearchFilters(
                                              context,
                                              abSystemsParent: _model
                                                  .cpDropdownFiltersSystemsParentsModel
                                                  .dropdownSystemsParentValue,
                                              abSystems: _model
                                                  .cpDropdownFiltersSystemsModel
                                                  .dropdownFiltersSystemsValue,
                                              abUnitsTypesParent: _model
                                                  .cpDropdownFiltersUnitsTypesParentModel
                                                  .dropdownFiltersUnitsTypesParentValue,
                                              abUnits: _model
                                                  .cpDropdownFiltersUnitsModel
                                                  .dropdownFiltersUnitsValue,
                                              abOrdersTypes: _model
                                                  .cpDropdownFiltersOrdersTypesModel
                                                  .dropdownFiltersOrdersTypesValue,
                                              abOrdersTypesSubs: _model
                                                  .cpDropdownFiltersOrdersTypesSubsModel
                                                  .dropdownFiltersOrdersTypesSubsValue,
                                              abOrdersVisitsProcessing: [],
                                              abContracts: _model
                                                  .cpDropdownFiltersContractsModel
                                                  .dropdownOrdersContractsValue,
                                            );
                                            Navigator.pop(context);
                                          },
                                          text: 'Aplicar',
                                          options: FFButtonOptions(
                                            height: 50.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].addToEnd(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
