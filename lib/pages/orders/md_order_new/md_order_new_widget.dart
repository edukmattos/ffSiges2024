import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_orders_contracts/cp_dropdown_orders_contracts_widget.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_dropdown_orders_types_subs/cp_dropdown_orders_types_subs_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'md_order_new_model.dart';
export 'md_order_new_model.dart';

class MdOrderNewWidget extends StatefulWidget {
  const MdOrderNewWidget({
    super.key,
    required this.orderParentId,
  });

  final int? orderParentId;

  @override
  State<MdOrderNewWidget> createState() => _MdOrderNewWidgetState();
}

class _MdOrderNewWidgetState extends State<MdOrderNewWidget>
    with TickerProviderStateMixin {
  late MdOrderNewModel _model;

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
    'textOnPageLoadAnimation5': AnimationInfo(
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
    'textOnPageLoadAnimation6': AnimationInfo(
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
    _model = createModel(context, () => MdOrderNewModel());

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
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
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
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                'Ordem Serviço',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                      const Divider(
                                        height: 4.0,
                                        thickness: 1.0,
                                        color: Color(0xFFE0E3E7),
                                      ),
                                      Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.always,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    'Serviços a serem realizados',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation1']!),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpInputTexMultilineModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      const CpInputTexMultilineWidget(
                                                    readOnly: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    'Setor',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation2']!),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownAssetsTagsModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      CpDropdownAssetsTagsWidget(
                                                    initialValue: FFAppState()
                                                        .stOPSelected
                                                        .first
                                                        .assetTagId,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    'Tipo Serviço',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation3']!),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownOrdersTypesModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      const CpDropdownOrdersTypesWidget(),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    'Sub Tipo Serviço',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation4']!),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownOrdersTypesSubsModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      const CpDropdownOrdersTypesSubsWidget(),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2.0,
                                                                  0.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Text(
                                                        'Prioridade',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation5']!),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: FutureBuilder<
                                                        List<
                                                            OrdersPrioritiesRow>>(
                                                      future:
                                                          OrdersPrioritiesTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.order('id'),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                          options: choiceChipsOrdersPrioritiesRowList
                                                              .map((e) =>
                                                                  e.description)
                                                              .withoutNulls
                                                              .toList()
                                                              .map((label) =>
                                                                  ChipData(
                                                                      label))
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
                                                                BorderRadius
                                                                    .circular(
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
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          chipSpacing: 8.0,
                                                          rowSpacing: 8.0,
                                                          multiselect: false,
                                                          initialized: _model
                                                                  .choiceChipsValue !=
                                                              null,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          controller: _model
                                                                  .choiceChipsValueController ??=
                                                              FormFieldController<
                                                                  List<String>>(
                                                            ['1'],
                                                          ),
                                                          wrapped: false,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'choiceChipsOnPageLoadAnimation']!);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    'Contrato',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation6']!),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 24.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .cpDropdownOrdersContractsModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const CpDropdownOrdersContractsWidget(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var shouldSetState = false;
                                                  if (_model.formKey
                                                              .currentState ==
                                                          null ||
                                                      !_model
                                                          .formKey.currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  if (_model
                                                          .cpDropdownAssetsTagsModel
                                                          .dropdownAssetsTagsValue ==
                                                      null) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              const Text('Ops ...'),
                                                          content: const Text(
                                                              'Informe o Setor.'),
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
                                                              'Informe o tipo de serviço'),
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
                                                  if (_model
                                                          .cpDropdownOrdersTypesSubsModel
                                                          .dropdownOrdersTypesSubsValue ==
                                                      null) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              const Text('Ops ...'),
                                                          content: const Text(
                                                              'Informe o sub tipo de serviço'),
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
                                                  shouldSetState = true;
                                                  if (_model
                                                          .resAbOrderPriorityId !=
                                                      0) {
                                                    setState(() {
                                                      _model.lcsvOrderChildCounter =
                                                          FFAppState()
                                                                  .stOPSelected
                                                                  .first
                                                                  .counterChild +
                                                              1;
                                                    });
                                                    await OrdersTable().update(
                                                      data: {
                                                        'counterChild': _model
                                                            .lcsvOrderChildCounter,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'id',
                                                        FFAppState()
                                                            .stOPSelected
                                                            .first
                                                            .id,
                                                      ),
                                                    );
                                                    _model.resContractSelected =
                                                        await ApiContractsGroup
                                                            .contractByIdCall
                                                            .call(
                                                      contractId: _model
                                                          .cpDropdownOrdersContractsModel
                                                          .dropdownOrdersContractsValue,
                                                    );
                                                    shouldSetState = true;
                                                    if ((_model
                                                            .resContractSelected
                                                            ?.succeeded ??
                                                        true)) {
                                                      setState(() {
                                                        FFAppState()
                                                            .stContractSelected = ((_model
                                                                        .resContractSelected
                                                                        ?.jsonBody ??
                                                                    '')
                                                                .toList()
                                                                .map<DtVContractStruct?>(
                                                                    DtVContractStruct
                                                                        .maybeFromMap)
                                                                .toList() as Iterable<DtVContractStruct?>)
                                                            .withoutNulls
                                                            .toList()
                                                            .cast<DtVContractStruct>();
                                                      });
                                                      _model.resOrderAdded =
                                                          await OrdersTable()
                                                              .insert({
                                                        'companyId': FFAppState()
                                                            .stContractSelected
                                                            .first
                                                            .providerCompanyId,
                                                        'departmentId': FFAppState()
                                                            .stContractSelected
                                                            .first
                                                            .providerDepartmentId,
                                                        'parentId': widget
                                                            .orderParentId,
                                                        'typeId': _model
                                                            .cpDropdownOrdersTypesModel
                                                            .dropdownOrdersTypesValue,
                                                        'typeSubId': _model
                                                            .cpDropdownOrdersTypesSubsModel
                                                            .dropdownOrdersTypesSubsValue,
                                                        'unitId': FFAppState()
                                                            .stOPSelected
                                                            .first
                                                            .unitId,
                                                        'systemParentId':
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .systemParentId,
                                                        'systemId': FFAppState()
                                                            .stOPSelected
                                                            .first
                                                            .systemId,
                                                        'unitTypeParentId':
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .unitTypeParentId,
                                                        'unitTypeId':
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .unitTypeId,
                                                        'requesterName':
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .nameShort,
                                                        'requesterTeamId':
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .teamId,
                                                        'createdUserId':
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .id,
                                                        'createdDate':
                                                            supaSerialize<
                                                                    DateTime>(
                                                                getCurrentTimestamp),
                                                        'requestedServices': _model
                                                            .cpInputTexMultilineModel
                                                            .inputTextMultineController
                                                            .text,
                                                        'year': FFAppState()
                                                            .stOPSelected
                                                            .first
                                                            .year,
                                                        'orderMask':
                                                            '${FFAppState().stOPSelected.first.counterParent.toString()}.${_model.lcsvOrderChildCounter?.toString()}.${FFAppState().stOPSelected.first.year.toString()}',
                                                        'requesterDate':
                                                            supaSerialize<
                                                                    DateTime>(
                                                                getCurrentTimestamp),
                                                        'statusId': 2,
                                                        'statusDate': supaSerialize<
                                                                DateTime>(
                                                            getCurrentTimestamp),
                                                        'priorityId': _model
                                                            .resAbOrderPriorityId,
                                                        'unitLatitude':
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .unitLatitude,
                                                        'unitLongitude':
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .unitLongitude,
                                                        'counterParent':
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .counterParent,
                                                        'counterChild': _model
                                                            .lcsvOrderChildCounter,
                                                        'assetTagId': _model
                                                            .cpDropdownAssetsTagsModel
                                                            .dropdownAssetsTagsValue,
                                                      });
                                                      shouldSetState = true;
                                                      if (FFAppState()
                                                              .stOPSelected
                                                              .first
                                                              .statusId ==
                                                          1) {
                                                        await OrdersTable()
                                                            .update(
                                                          data: {
                                                            'statusId': 2,
                                                            'statusDate':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'id',
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .id,
                                                          ),
                                                        );
                                                        unawaited(
                                                          () async {
                                                            await OrdersStatusesLogsTable()
                                                                .insert({
                                                              'orderParentId':
                                                                  FFAppState()
                                                                      .stOPSelected
                                                                      .first
                                                                      .id,
                                                              'orderStatusId':
                                                                  2,
                                                              'orderStatusDate':
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      _model
                                                                          .resOrderAdded
                                                                          ?.createdDate),
                                                              'createdUserId':
                                                                  FFAppState()
                                                                      .asUserCurrent
                                                                      .id,
                                                              'createdDate':
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      getCurrentTimestamp),
                                                              'companyId':
                                                                  FFAppState()
                                                                      .asUserCurrent
                                                                      .id,
                                                              'departmentId': 1,
                                                            });
                                                          }(),
                                                        );
                                                      }
                                                      unawaited(
                                                        () async {
                                                          await OrdersStatusesLogsTable()
                                                              .insert({
                                                            'orderParentId':
                                                                FFAppState()
                                                                    .stOPSelected
                                                                    .first
                                                                    .id,
                                                            'orderStatusId': 3,
                                                            'orderStatusDate':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model
                                                                        .resOrderAdded
                                                                        ?.createdDate),
                                                            'createdUserId':
                                                                FFAppState()
                                                                    .asUserCurrent
                                                                    .id,
                                                            'createdDate':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                            'companyId':
                                                                FFAppState()
                                                                    .asUserCurrent
                                                                    .id,
                                                            'departmentId': 1,
                                                            'orderId': _model
                                                                .resOrderAdded
                                                                ?.id,
                                                          });
                                                        }(),
                                                      );
                                                      await action_blocks
                                                          .abOrderParentEvents(
                                                        context,
                                                        abOrderParentId:
                                                            FFAppState()
                                                                .stOPSelected
                                                                .first
                                                                .id,
                                                        abTitle:
                                                            'OS ${_model.resOrderAdded?.orderMask}: Em Avaliação',
                                                        abBody:
                                                            '${FFAppState().stOPSelected.first.unitDescription}\\n${_model.resOrderAdded?.requestedServices}',
                                                      );
                                                      Navigator.pop(context);

                                                      context.pushNamed(
                                                        'pgOrderShow',
                                                        queryParameters: {
                                                          'orderId':
                                                              serializeParam(
                                                            _model.resOrderAdded
                                                                ?.id,
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      await action_blocks
                                                          .abOSelected(
                                                        context,
                                                        abOrderId: _model
                                                            .resOrderAdded?.id,
                                                      );
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Ops ... Não foi possivel identificar o contrato.',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                      if (shouldSetState) {
                                                        setState(() {});
                                                      }
                                                      return;
                                                    }
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

                                                  if (shouldSetState) {
                                                    setState(() {});
                                                  }
                                                },
                                                text: 'Criar OS',
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
                                          ]
                                              .divide(const SizedBox(height: 12.0))
                                              .addToStart(
                                                  const SizedBox(height: 12.0))
                                              .addToEnd(const SizedBox(height: 24.0)),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
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
