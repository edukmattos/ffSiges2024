import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/units/cp_dropdown_systems/cp_dropdown_systems_widget.dart';
import '/pages/units/cp_dropdown_systems_parent/cp_dropdown_systems_parent_widget.dart';
import '/pages/units/cp_dropdown_units_types/cp_dropdown_units_types_widget.dart';
import '/pages/units/cp_dropdown_units_types_parent/cp_dropdown_units_types_parent_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'pg_units_new_model.dart';
export 'pg_units_new_model.dart';

class PgUnitsNewWidget extends StatefulWidget {
  const PgUnitsNewWidget({super.key});

  @override
  State<PgUnitsNewWidget> createState() => _PgUnitsNewWidgetState();
}

class _PgUnitsNewWidgetState extends State<PgUnitsNewWidget> {
  late PgUnitsNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgUnitsNewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuModel,
            updateCallback: () => setState(() {}),
            child: const CpMenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Unidade',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              wrapWithModel(
                model: _model.cpNotificationsIconModel,
                updateCallback: () => setState(() {}),
                child: const CpNotificationsIconWidget(),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.cpDropdownSystemsParentModel,
                            updateCallback: () => setState(() {}),
                            updateOnChange: true,
                            child: const CpDropdownSystemsParentWidget(
                              hintText: 'Sistema',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpDropdownSystemsModel,
                            updateCallback: () => setState(() {}),
                            child: CpDropdownSystemsWidget(
                              hintText: 'Sub Sistema',
                              initValue: _model.cpDropdownSystemsParentModel
                                  .dropdownSystemsParentValue,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpDropdownUnitsTypesParentModel,
                            updateCallback: () => setState(() {}),
                            updateOnChange: true,
                            child: const CpDropdownUnitsTypesParentWidget(
                              hintText: 'Tipo',
                            ),
                          ),
                          if (_model.cpDropdownUnitsTypesParentModel
                                  .dropdownUnitsTypesParentValue !=
                              null)
                            wrapWithModel(
                              model: _model.cpDropdownUnitsTypesModel,
                              updateCallback: () => setState(() {}),
                              child: CpDropdownUnitsTypesWidget(
                                hintText: 'Sub Tipo',
                                initValue: _model
                                    .cpDropdownUnitsTypesParentModel
                                    .dropdownUnitsTypesParentValue!,
                              ),
                            ),
                          wrapWithModel(
                            model: _model.cpInputTextCodeModel,
                            updateCallback: () => setState(() {}),
                            child: const CpInputTextWidget(
                              labelText: 'Código',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpInputTextDescriptionModel,
                            updateCallback: () => setState(() {}),
                            child: const CpInputTextWidget(
                              labelText: 'Descrição',
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: FlutterFlowPlacePicker(
                                  iOSGoogleMapsApiKey:
                                      'AIzaSyCZrBD_WSetbFmAv2tfcZkipnq-MCYJmrk',
                                  androidGoogleMapsApiKey:
                                      'AIzaSyCbsZ2PcNw5kjYVDCiIm_qV5ExRdVKdZ0M',
                                  webGoogleMapsApiKey:
                                      'AIzaSyBzR7-sVE8N-9oL3sdRQa9v0i-Z1XbR1gk',
                                  onSelect: (place) async {
                                    setState(
                                        () => _model.placePickerValue = place);
                                    (await _model.googleMapsController.future)
                                        .animateCamera(CameraUpdate.newLatLng(
                                            place.latLng.toGoogleMaps()));
                                  },
                                  defaultText: 'Informe um endereço',
                                  icon: Icon(
                                    Icons.place,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 16.0,
                                  ),
                                  buttonOptions: FFButtonOptions(
                                    width: 200.0,
                                    height: 45.0,
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                    elevation: 2.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 8.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.placePickerValue.address,
                                      '.',
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.cpInputTextAddressCompModel,
                            updateCallback: () => setState(() {}),
                            child: const CpInputTextWidget(
                              labelText: 'Complemento',
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 362.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      FlutterFlowGoogleMap(
                                        controller: _model.googleMapsController,
                                        onCameraIdle: (latLng) =>
                                            _model.googleMapsCenter = latLng,
                                        initialLocation:
                                            _model.googleMapsCenter ??=
                                                _model.placePickerValue.latLng,
                                        markerColor: GoogleMarkerColor.violet,
                                        mapType: MapType.satellite,
                                        style: GoogleMapStyle.standard,
                                        initialZoom: 18.0,
                                        allowInteraction: true,
                                        allowZoom: true,
                                        showZoomControls: true,
                                        showLocation: true,
                                        showCompass: true,
                                        showMapToolbar: true,
                                        showTraffic: true,
                                        centerMapOnMarkerTap: true,
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: PointerInterceptor(
                                          intercepting: isWeb,
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.placePickerValue == const FFPlace()) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Ops ...'),
                                        content: const Text('Informe um enereço.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                _model.resUnitType = await ApiUnitsTypesGroup
                                    .unitTypeByIdCall
                                    .call(
                                  unitTypeId: _model.cpDropdownUnitsTypesModel
                                      .dropdownUnitsTypesValue,
                                );
                                _model.resUnitAdded =
                                    await UnitsTable().insert({
                                  'companyId':
                                      FFAppState().asUserCurrent.companyId,
                                  'unitTypeId': _model
                                      .cpDropdownUnitsTypesParentModel
                                      .dropdownUnitsTypesParentValue,
                                  'code': _model.cpInputTextCodeModel
                                      .inputTextController.text,
                                  'description': _model
                                      .cpInputTextDescriptionModel
                                      .inputTextController
                                      .text,
                                  'address': _model.placePickerValue.address,
                                  'addressComplement': _model
                                      .cpInputTextAddressCompModel
                                      .inputTextController
                                      .text,
                                  'latitude': functions.cfGetLatFromLatLng(
                                      _model.placePickerValue.latLng),
                                  'longitude': functions.cfGetLngFromLatLng(
                                      _model.placePickerValue.latLng),
                                  'createdUserId':
                                      FFAppState().asUserCurrent.id,
                                  'createdDate': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                  'isDeleted': false,
                                  'isAvailable': true,
                                  'descriptionFull':
                                      '${_model.cpInputTextCodeModel.inputTextController.text} - ${ApiUnitsTypesGroup.unitTypeByIdCall.code(
                                            (_model.resUnitType?.jsonBody ??
                                                ''),
                                          ).toString()} ${_model.cpInputTextDescriptionModel.inputTextController.text}',
                                  'unitTypeParentId': _model
                                      .cpDropdownUnitsTypesParentModel
                                      .dropdownUnitsTypesParentValue,
                                  'systemParentId': _model
                                      .cpDropdownSystemsParentModel
                                      .dropdownSystemsParentValue,
                                  'systemId': _model.cpDropdownSystemsModel
                                      .dropdownSystemsValue,
                                  'addressFull':
                                      '${_model.placePickerValue.address} ${_model.cpInputTextAddressCompModel.inputTextController.text}',
                                });

                                context.pushNamed(
                                  'pgUnitShow',
                                  queryParameters: {
                                    'unitId': serializeParam(
                                      _model.resUnitAdded?.id,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );

                                setState(() {});
                              },
                              text: 'Cadastrar',
                              options: FFButtonOptions(
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
