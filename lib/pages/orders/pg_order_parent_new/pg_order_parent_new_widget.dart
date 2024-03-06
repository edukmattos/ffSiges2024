import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_order_parent_new_model.dart';
export 'pg_order_parent_new_model.dart';

class PgOrderParentNewWidget extends StatefulWidget {
  const PgOrderParentNewWidget({super.key});

  @override
  State<PgOrderParentNewWidget> createState() => _PgOrderParentNewWidgetState();
}

class _PgOrderParentNewWidgetState extends State<PgOrderParentNewWidget>
    with TickerProviderStateMixin {
  late PgOrderParentNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 800.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
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
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrderParentNewModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Nova Solicitação',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: const BoxDecoration(),
              child: Builder(
                builder: (context) {
                  if (_model.lpsvStepForm == 1) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        FFAppState().updateStOPNewStruct(
                                          (e) => e
                                            ..stepForm = 2
                                            ..unitId = getJsonField(
                                              (_model.resUnits?.jsonBody ?? ''),
                                              r'''$.id''',
                                            ),
                                        );
                                      });
                                    },
                                    child: wrapWithModel(
                                      model: _model.cpInputTextSearchModel,
                                      updateCallback: () => setState(() {}),
                                      child: const CpInputTextWidget(
                                        labelText: 'Unidade',
                                        isReadOnly: false,
                                      ),
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 23.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.search_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    _model.resUnits = await ApiUnitsGroup
                                        .unitsSearchCall
                                        .call(
                                      searchTerms: _model.cpInputTextSearchModel
                                          .inputTextController.text,
                                    );
                                    if ((_model.resUnits?.succeeded ?? true)) {
                                      setState(() =>
                                          _model.apiRequestCompleter = null);
                                      await _model.waitForApiRequestCompleted();
                                    }

                                    setState(() {});
                                  },
                                ),
                              ].divide(const SizedBox(width: 8.0)),
                            ),
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: (_model.apiRequestCompleter ??= Completer<
                                    ApiCallResponse>()
                                  ..complete(ApiUnitsGroup.unitsSearchCall.call(
                                    searchTerms: _model.cpInputTextSearchModel
                                        .inputTextController.text,
                                  )))
                                .future,
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final columnUnitsSearchResponse = snapshot.data!;
                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final unitsResult = getJsonField(
                                          columnUnitsSearchResponse.jsonBody,
                                          r'''$''',
                                        ).toList();
                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: unitsResult.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 12.0),
                                          itemBuilder:
                                              (context, unitsResultIndex) {
                                            final unitsResultItem =
                                                unitsResult[unitsResultIndex];
                                            return Container(
                                              width: double.infinity,
                                              height: 70.0,
                                              constraints: const BoxConstraints(
                                                minHeight: 0.0,
                                                maxHeight: 150.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x1F000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    12.0,
                                                                    12.0,
                                                                    12.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              getJsonField(
                                                                unitsResultItem,
                                                                r'''$.descriptionFull''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'textOnPageLoadAnimation1']!),
                                                          ].divide(const SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius: 25.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      icon: FaIcon(
                                                        FontAwesomeIcons
                                                            .angleRight,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        setState(() {
                                                          _model.lpsvStepForm =
                                                              _model.lpsvStepForm +
                                                                  1;
                                                          _model.lpsvUnitId =
                                                              getJsonField(
                                                            unitsResultItem,
                                                            r'''$.id''',
                                                          );
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation']!);
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ].divide(const SizedBox(height: 8.0)),
                      ),
                    );
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.cpUnitCardShowModel,
                                  updateCallback: () => setState(() {}),
                                  child: CpUnitCardShowWidget(
                                    unitId: _model.lpsvUnitId,
                                  ),
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
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Qual o Setor ?',
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
                                            wrapWithModel(
                                              model: _model
                                                  .cpDropdownAssetsTagsModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child:
                                                  const CpDropdownAssetsTagsWidget(),
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
                                                  'textOnPageLoadAnimation3']!),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .cpInputTexMultilineModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const CpInputTexMultilineWidget(
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
                                                  'textOnPageLoadAnimation4']!),
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
                                                  'textOnPageLoadAnimation5']!),
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
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
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
                                                  'textOnPageLoadAnimation6']!),
                                            ),
                                            wrapWithModel(
                                              model: _model.cpInputTextModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const CpInputTextWidget(
                                                isReadOnly: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.cpDropdownOrdersTypesModel
                                          .dropdownOrdersTypesValue ==
                                      null) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Ops ..'),
                                          content: const Text('Informe a área.'),
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
                                  _model.resAbOrderPriorityId =
                                      await action_blocks
                                          .abChoicesOrdersPrioritiesId(
                                    context,
                                    abPriorityDescription:
                                        _model.choiceChipsValue,
                                  );
                                  if (_model.resAbOrderPriorityId != 0) {
                                    _model.resOrderCounterCurrent =
                                        await ApiOrdersCounterGroup
                                            .currentCounterCall
                                            .call(
                                      companyId:
                                          FFAppState().asUserCurrent.companyId,
                                      year: functions
                                          .cfDateGetYear(getCurrentTimestamp),
                                    );
                                    if (ApiOrdersCounterGroup.currentCounterCall
                                            .counter(
                                          (_model.resOrderCounterCurrent
                                                  ?.jsonBody ??
                                              ''),
                                        ) !=
                                        null) {
                                      setState(() {
                                        _model.lpsvOrderCounter =
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
                                          await OrdersCounterTable().insert({
                                        'companyId': FFAppState()
                                            .asUserCurrent
                                            .companyId,
                                        'year': functions
                                            .cfDateGetYear(getCurrentTimestamp)
                                            .toDouble(),
                                        'counter': 0,
                                      });
                                      setState(() {
                                        _model.lpsvOrderCounter =
                                            ApiOrdersCounterGroup
                                                    .currentCounterCall
                                                    .counter(
                                                  (_model.resOrderCounterCurrent
                                                          ?.jsonBody ??
                                                      ''),
                                                ) +
                                                1;
                                      });
                                    }

                                    await OrdersCounterTable().update(
                                      data: {
                                        'counter': _model.lpsvOrderCounter,
                                      },
                                      matchingRows: (rows) => rows
                                          .eq(
                                            'companyId',
                                            FFAppState()
                                                .asUserCurrent
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
                                        await ApiUnitsGroup.unitByIdCall.call(
                                      unitId: _model.lpsvUnitId,
                                    );
                                    // orderParent Add
                                    _model.resOrderParentAdded =
                                        await OrdersTable().insert({
                                      'companyId':
                                          FFAppState().asUserCurrent.companyId,
                                      'departmentId': FFAppState()
                                          .asUserCurrent
                                          .departmentId,
                                      'typeId': _model
                                          .cpDropdownOrdersTypesModel
                                          .dropdownOrdersTypesValue,
                                      'unitId': _model.lpsvUnitId,
                                      'systemParentId': ApiUnitsGroup
                                          .unitByIdCall
                                          .systemParentId(
                                        (_model.resOrderParentUnit?.jsonBody ??
                                            ''),
                                      ),
                                      'systemId':
                                          ApiUnitsGroup.unitByIdCall.systemId(
                                        (_model.resOrderParentUnit?.jsonBody ??
                                            ''),
                                      ),
                                      'unitTypeParentId': ApiUnitsGroup
                                          .unitByIdCall
                                          .unitTypeParentId(
                                        (_model.resOrderParentUnit?.jsonBody ??
                                            ''),
                                      ),
                                      'unitTypeId':
                                          ApiUnitsGroup.unitByIdCall.unitTypeId(
                                        (_model.resOrderParentUnit?.jsonBody ??
                                            ''),
                                      ),
                                      'requesterName':
                                          FFAppState().asUserCurrent.nameShort,
                                      'requesterTeamId':
                                          FFAppState().asUserCurrent.teamId,
                                      'requesterPhone': _model.cpInputTextModel
                                          .inputTextController.text,
                                      'createdUserId':
                                          FFAppState().asUserCurrent.id,
                                      'createdDate': supaSerialize<DateTime>(
                                          getCurrentTimestamp),
                                      'requestedServices': _model
                                          .cpInputTexMultilineModel
                                          .inputTextMultineController
                                          .text,
                                      'counterParent': _model.lpsvOrderCounter,
                                      'counterChild': 0,
                                      'year': functions
                                          .cfDateGetYear(getCurrentTimestamp),
                                      'orderMask':
                                          '${_model.lpsvOrderCounter.toString()}.0.${functions.cfDateGetYear(getCurrentTimestamp).toString()}',
                                      'requesterDate': supaSerialize<DateTime>(
                                          getCurrentTimestamp),
                                      'priorityId': _model.resAbOrderPriorityId,
                                      'statusId': 1,
                                      'statusDate': supaSerialize<DateTime>(
                                          getCurrentTimestamp),
                                      'unitLatitude':
                                          ApiUnitsGroup.unitByIdCall.latitude(
                                        (_model.resOrderParentUnit?.jsonBody ??
                                            ''),
                                      ),
                                      'unitLongitude':
                                          ApiUnitsGroup.unitByIdCall.longitude(
                                        (_model.resOrderParentUnit?.jsonBody ??
                                            ''),
                                      ),
                                      'assetTagId': _model
                                          .cpDropdownAssetsTagsModel
                                          .dropdownAssetsTagsValue,
                                    });
                                    // orderStatusLog Add
                                    unawaited(
                                      () async {
                                        _model.resOrderStatusLogAdded =
                                            await OrdersStatusesLogsTable()
                                                .insert({
                                          'orderParentId':
                                              _model.resOrderParentAdded?.id,
                                          'orderStatusId': 1,
                                          'orderStatusDate':
                                              supaSerialize<DateTime>(
                                                  getCurrentTimestamp),
                                          'createdUserId':
                                              FFAppState().asUserCurrent.id,
                                          'createdDate':
                                              supaSerialize<DateTime>(
                                                  getCurrentTimestamp),
                                          'companyId':
                                              FFAppState().asUserCurrent.id,
                                          'departmentId': 1,
                                        });
                                      }(),
                                    );
                                    Navigator.pop(context);

                                    context.pushNamed(
                                      'pgOrderParentShow',
                                      queryParameters: {
                                        'orderId': serializeParam(
                                          _model.resOrderParentAdded?.id,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Ops ...'),
                                          content: const Text(
                                              'Nao foi possível identificar a Prioridade.'),
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
                                  }

                                  setState(() {});
                                },
                                text: 'Criar SS',
                                options: FFButtonOptions(
                                  height: 46.0,
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
                          ],
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
