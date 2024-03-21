import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_vehicles/cp_dropdown_vehicles_widget.dart';
import '/pages/components/cp_input_integer/cp_input_integer_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'md_o_v_vehicle_new_model.dart';
export 'md_o_v_vehicle_new_model.dart';

class MdOVVehicleNewWidget extends StatefulWidget {
  const MdOVVehicleNewWidget({
    super.key,
    int? ppOVid,
    int? ppOId,
    int? ppOPId,
  })  : ppOVid = ppOVid ?? 1,
        ppOId = ppOId ?? 1,
        ppOPId = ppOPId ?? 1;

  final int ppOVid;
  final int ppOId;
  final int ppOPId;

  @override
  State<MdOVVehicleNewWidget> createState() => _MdOVVehicleNewWidgetState();
}

class _MdOVVehicleNewWidgetState extends State<MdOVVehicleNewWidget> {
  late MdOVVehicleNewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOVVehicleNewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().asCwOVServiceAmountDouble = 0.0;
        FFAppState().asCwOVServiceDiscountDouble = 0.0;
      });
    });

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
      width: 400.0,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xB20B191E),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 1.0),
        child: Container(
          width: 400.0,
          decoration: const BoxDecoration(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 44.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
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
                              18.0, 0.0, 18.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              'Transporte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      height: 4.0,
                                      thickness: 1.0,
                                      color: Color(0xFFE0E3E7),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Form(
                                            key: _model.formKey,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownVehiclesModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CpDropdownVehiclesWidget(
                                                    hintText: 'Veículo',
                                                    initialValue: FFAppState()
                                                        .asUserCurrent
                                                        .vehicleId,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpInputRecorderStartModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const CpInputIntegerWidget(
                                                    initialValue: 0,
                                                    labelText:
                                                        'Registrador Inicial',
                                                    isReadOnly: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpInputRecorderEndModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const CpInputIntegerWidget(
                                                    initialValue: 0,
                                                    labelText:
                                                        'Registrador final',
                                                    isReadOnly: false,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (_model.formKey
                                                                    .currentState ==
                                                                null ||
                                                            !_model.formKey
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }
                                                        _model.resVehicleSelected =
                                                            await ApiVehiclesGroup
                                                                .vehicleByIdCall
                                                                .call(
                                                          vehicleId: _model
                                                              .cpDropdownVehiclesModel
                                                              .dropdownVehiclesValue,
                                                        );
                                                        if ((_model
                                                                .resVehicleSelected
                                                                ?.succeeded ??
                                                            true)) {
                                                          _model.resOVVehicleAdded =
                                                              await OrdersVisitsVehiclesTable()
                                                                  .insert({
                                                            'orderVisitId':
                                                                widget.ppOVid,
                                                            'vehicleId': _model
                                                                .cpDropdownVehiclesModel
                                                                .dropdownVehiclesValue,
                                                            'recorderStart': int
                                                                .tryParse(_model
                                                                    .cpInputRecorderStartModel
                                                                    .inputIntegerController
                                                                    .text),
                                                            'recorderEnd': int
                                                                .tryParse(_model
                                                                    .cpInputRecorderEndModel
                                                                    .inputIntegerController
                                                                    .text),
                                                            'discount':
                                                                getJsonField(
                                                              (_model.resVehicleSelected
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$[0].discount''',
                                                            ),
                                                            'createdUserId':
                                                                FFAppState()
                                                                    .asUserCurrent
                                                                    .id,
                                                            'createdDate':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                            'priceUnit':
                                                                getJsonField(
                                                              (_model.resVehicleSelected
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$[0].priceUnit''',
                                                            ),
                                                            'amountUnit': int
                                                                    .parse(_model
                                                                        .cpInputRecorderEndModel
                                                                        .inputIntegerController
                                                                        .text) -
                                                                int.parse(_model
                                                                    .cpInputRecorderStartModel
                                                                    .inputIntegerController
                                                                    .text),
                                                            'priceTotal': 0.0,
                                                            'orderId':
                                                                widget.ppOId,
                                                            'orderParentId':
                                                                widget.ppOPId,
                                                          });
                                                          Navigator.pop(
                                                              context);
                                                          await action_blocks
                                                              .abOVPricesUpdate(
                                                            context,
                                                            abPrice: 'vehicles',
                                                            abOVId:
                                                                widget.ppOVid,
                                                          );
                                                        } else {
                                                          Navigator.pop(
                                                              context);
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'Ops ...'),
                                                                content: const Text(
                                                                    'Não possível incluir o veículo informado.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        }

                                                        setState(() {});
                                                      },
                                                      text: 'Confirmar',
                                                      options: FFButtonOptions(
                                                        width: 130.0,
                                                        height: 50.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ].divide(const SizedBox(height: 12.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
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
