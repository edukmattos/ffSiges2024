import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'md_order_parent_new_model.dart';
export 'md_order_parent_new_model.dart';

class MdOrderParentNewWidget extends StatefulWidget {
  const MdOrderParentNewWidget({
    super.key,
    required this.unitId,
  });

  final int? unitId;

  @override
  State<MdOrderParentNewWidget> createState() => _MdOrderParentNewWidgetState();
}

class _MdOrderParentNewWidgetState extends State<MdOrderParentNewWidget>
    with TickerProviderStateMixin {
  late MdOrderParentNewModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'choiceChipsOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 110.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOrderParentNewModel());

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
                              18.0, 0.0, 18.0, 0.0),
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
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                'Solicitação de Serviço',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 50.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: Icon(
                                                Icons.close_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 36.0,
                                              ),
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
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
                                    Form(
                                      key: _model.formKey,
                                      autovalidateMode: AutovalidateMode.always,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 24.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Qual o problema ?',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation1']!),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 12.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .cpInputTexMultilineModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    const CpInputTexMultilineWidget(
                                                  readOnly: false,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Qual tipo de serviço ?',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation2']!),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 12.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .cpDropdownOrdersTypesModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    const CpDropdownOrdersTypesWidget(),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Qual a prioridade ?',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation3']!),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 12.0),
                                              child: FutureBuilder<
                                                  List<OrdersPrioritiesRow>>(
                                                future: OrdersPrioritiesTable()
                                                    .queryRows(
                                                  queryFn: (q) => q.order('id'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<OrdersPrioritiesRow>
                                                      choiceChipsOrdersPrioritiesRowList =
                                                      snapshot.data!;
                                                  return FlutterFlowChoiceChips(
                                                    options:
                                                        choiceChipsOrdersPrioritiesRowList
                                                            .map((e) =>
                                                                e.description)
                                                            .withoutNulls
                                                            .toList()
                                                            .map((label) =>
                                                                ChipData(label))
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .choiceChipsValue =
                                                            val?.firstOrNull),
                                                    selectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                      iconColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      iconSize: 18.0,
                                                      labelPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  4.0,
                                                                  12.0,
                                                                  4.0),
                                                      elevation: 0.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderWidth: 2.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    unselectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                      iconColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      iconSize: 18.0,
                                                      labelPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  4.0,
                                                                  12.0,
                                                                  4.0),
                                                      elevation: 0.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      borderWidth: 2.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    chipSpacing: 8.0,
                                                    rowSpacing: 8.0,
                                                    multiselect: false,
                                                    initialized: _model
                                                            .choiceChipsValue !=
                                                        null,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    controller: _model
                                                            .choiceChipsValueController ??=
                                                        FormFieldController<
                                                            List<String>>(
                                                      ['1'],
                                                    ),
                                                    wrapped: false,
                                                  ).animateOnPageLoad(animationsMap[
                                                      'choiceChipsOnPageLoadAnimation']!);
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Ramal/Celular ',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation4']!),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: wrapWithModel(
                                                model: _model.cpInputTextModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const CpInputTextWidget(),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.formKey
                                                              .currentState ==
                                                          null ||
                                                      !_model
                                                          .formKey.currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  if (_model
                                                          .cpDropdownOrdersTypesModel
                                                          .dropdownOrdersTypesValue ==
                                                      null) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: const Text('Ops ..'),
                                                          content: const Text(
                                                              'Informe a área.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: const Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    return;
                                                  }
                                                  _model.resAbOrderPriorityId =
                                                      await action_blocks
                                                          .abChoicesOrdersPrioritiesId(
                                                    context,
                                                    abPriorityDescription:
                                                        _model.choiceChipsValue,
                                                  );
                                                  if (_model
                                                          .resAbOrderPriorityId !=
                                                      0) {
                                                    _model.resOrderCounterCurrent =
                                                        await ApiOrdersCounterGroup
                                                            .currentCounterCall
                                                            .call(
                                                      companyId: FFAppState()
                                                          .stUserCurrent
                                                          .companyId,
                                                      year: functions
                                                          .cfDateGetYear(
                                                              getCurrentTimestamp),
                                                    );
                                                    if (ApiOrdersCounterGroup
                                                            .currentCounterCall
                                                            .counter(
                                                          (_model.resOrderCounterCurrent
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) !=
                                                        null) {
                                                      setState(() {
                                                        _model.lcsvOrderCounter =
                                                            ApiOrdersCounterGroup
                                                                    .currentCounterCall
                                                                    .counter(
                                                                  (_model.resOrderCounterCurrent
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) +
                                                                1;
                                                      });
                                                    } else {
                                                      _model.resOrderCounterAdded =
                                                          await OrdersCounterTable()
                                                              .insert({
                                                        'companyId':
                                                            FFAppState()
                                                                .stUserCurrent
                                                                .companyId,
                                                        'year': functions
                                                            .cfDateGetYear(
                                                                getCurrentTimestamp)
                                                            .toDouble(),
                                                        'counter': 0,
                                                      });
                                                      setState(() {
                                                        _model.lcsvOrderCounter =
                                                            (_model.resOrderCounterAdded!
                                                                    .counter!) +
                                                                1;
                                                      });
                                                    }

                                                    await OrdersCounterTable()
                                                        .update(
                                                      data: {
                                                        'counter': _model
                                                            .lcsvOrderCounter,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows
                                                              .eq(
                                                                'companyId',
                                                                FFAppState()
                                                                    .stUserCurrent
                                                                    .companyId,
                                                              )
                                                              .eq(
                                                                'year',
                                                                functions
                                                                    .cfDateGetYear(
                                                                        getCurrentTimestamp)
                                                                    .toDouble(),
                                                              ),
                                                    );
                                                    _model.resOrderParentUnit =
                                                        await ApiUnitsGroup
                                                            .unitByIdCall
                                                            .call(
                                                      unitId: widget.unitId,
                                                    );
                                                    // orderParent Add
                                                    _model.resOrderParentAdded =
                                                        await OrdersTable()
                                                            .insert({
                                                      'companyId': FFAppState()
                                                          .stUserCurrent
                                                          .companyId,
                                                      'departmentId':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .departmentId,
                                                      'typeId': _model
                                                          .cpDropdownOrdersTypesModel
                                                          .dropdownOrdersTypesValue,
                                                      'unitId': widget.unitId,
                                                      'systemParentId':
                                                          ApiUnitsGroup
                                                              .unitByIdCall
                                                              .systemParentId(
                                                        (_model.resOrderParentUnit
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'systemId': ApiUnitsGroup
                                                          .unitByIdCall
                                                          .systemId(
                                                        (_model.resOrderParentUnit
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'unitTypeParentId':
                                                          ApiUnitsGroup
                                                              .unitByIdCall
                                                              .unitTypeParentId(
                                                        (_model.resOrderParentUnit
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'unitTypeId':
                                                          ApiUnitsGroup
                                                              .unitByIdCall
                                                              .unitTypeId(
                                                        (_model.resOrderParentUnit
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'requesterName':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .nameShort,
                                                      'requesterTeamId':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .teamId,
                                                      'requesterPhone': _model
                                                          .cpInputTextModel
                                                          .inputTextController
                                                          .text,
                                                      'createdUserId':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .id,
                                                      'createdDate': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'requestedServices': _model
                                                          .cpInputTexMultilineModel
                                                          .inputTextMultineController
                                                          .text,
                                                      'counterParent': _model
                                                          .lcsvOrderCounter,
                                                      'counterChild': 0,
                                                      'year': functions
                                                          .cfDateGetYear(
                                                              getCurrentTimestamp),
                                                      'orderMask':
                                                          '${_model.lcsvOrderCounter?.toString()}.0.${functions.cfDateGetYear(getCurrentTimestamp).toString()}',
                                                      'requesterDate':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              getCurrentTimestamp),
                                                      'priorityId': _model
                                                          .resAbOrderPriorityId,
                                                      'statusId': 1,
                                                      'statusDate': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'unitLatitude':
                                                          ApiUnitsGroup
                                                              .unitByIdCall
                                                              .latitude(
                                                        (_model.resOrderParentUnit
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'unitLongitude':
                                                          ApiUnitsGroup
                                                              .unitByIdCall
                                                              .longitude(
                                                        (_model.resOrderParentUnit
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                    });
                                                    // orderStatusLog Add
                                                    unawaited(
                                                      () async {
                                                        _model.resOrderStatusLogAdded =
                                                            await OrdersStatusesLogsTable()
                                                                .insert({
                                                          'orderParentId': _model
                                                              .resOrderParentAdded
                                                              ?.id,
                                                          'orderStatusId': 1,
                                                          'orderStatusDate':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                          'createdUserId':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .id,
                                                          'createdDate':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                          'companyId':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .id,
                                                          'departmentId': 1,
                                                        });
                                                      }(),
                                                    );
                                                    Navigator.pop(context);

                                                    context.pushNamed(
                                                      'pgOrderParentShow',
                                                      queryParameters: {
                                                        'orderId':
                                                            serializeParam(
                                                          _model
                                                              .resOrderParentAdded
                                                              ?.id,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              const Text('Ops ...'),
                                                          content: const Text(
                                                              'Nao foi possível identificar a Prioridade.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: const Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }

                                                  setState(() {});
                                                },
                                                text: 'Criar SS',
                                                options: FFButtonOptions(
                                                  height: 46.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ].addToEnd(const SizedBox(height: 24.0)),
                                        ),
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
