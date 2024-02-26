import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_types/cp_dropdown_filters_orders_types_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_visits_processing/cp_dropdown_filters_orders_visits_processing_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems/cp_dropdown_filters_systems_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems_parents/cp_dropdown_filters_systems_parents_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/components/filters/md_orders_visits_services_detalis/md_orders_visits_services_detalis_widget.dart';
import '/pages/orders/cp_order_visit_processing/cp_order_visit_processing_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_orders_visits_search_model.dart';
export 'pg_orders_visits_search_model.dart';

class PgOrdersVisitsSearchWidget extends StatefulWidget {
  const PgOrdersVisitsSearchWidget({super.key});

  @override
  State<PgOrdersVisitsSearchWidget> createState() =>
      _PgOrdersVisitsSearchWidgetState();
}

class _PgOrdersVisitsSearchWidgetState
    extends State<PgOrdersVisitsSearchWidget> {
  late PgOrdersVisitsSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrdersVisitsSearchModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'ordersVisits',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisits',
        () async {},
      );
    });

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
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 28.0,
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
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.cpDropdownFiltersSystemsParentsModel,
                    updateCallback: () => setState(() {}),
                    child: const CpDropdownFiltersSystemsParentsWidget(
                      hintText: 'Sistema',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.cpDropdownFiltersSystemsModel,
                    updateCallback: () => setState(() {}),
                    child: const CpDropdownFiltersSystemsWidget(
                      hintText: 'Sub Sistemas',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.cpDropdownFiltersOrdersTypesModel,
                    updateCallback: () => setState(() {}),
                    child: const CpDropdownFiltersOrdersTypesWidget(
                      hintText: 'Tipos OS',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.cpDropdownFiltersOrdersVisitsProcessingModel,
                    updateCallback: () => setState(() {}),
                    child: const CpDropdownFiltersOrdersVisitsProcessingWidget(
                      hintText: 'Processamento',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.cpDropdownFiltersUnitsModel,
                    updateCallback: () => setState(() {}),
                    child: const CpDropdownFiltersUnitsWidget(
                      hintText: 'Unidades',
                      initialValue: 1,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        FFAppState().stFiltersServices =
                            DtFiltersServicesStruct(
                          ordersTypes: _model.cpDropdownFiltersOrdersTypesModel
                              .dropdownFiltersOrdersTypesValue,
                          systemsParents: _model
                              .cpDropdownFiltersSystemsParentsModel
                              .dropdownSystemsParentValue,
                          ordersVisitsProcessing: _model
                              .cpDropdownFiltersOrdersVisitsProcessingModel
                              .dropdownOrdersVisitsProcessingValue,
                          systems: _model.cpDropdownFiltersSystemsModel
                              .dropdownFiltersSystemsValue,
                          units: _model.cpDropdownFiltersUnitsModel
                              .dropdownFiltersUnitsValue,
                        );
                      });
                      _model.resOrdersVisits =
                          await ApiOrdersVisitsGroup.searchFiltersCall.call(
                        ordersTypesIdsList: _model
                            .cpDropdownFiltersOrdersTypesModel
                            .dropdownFiltersOrdersTypesValue,
                        processingIdsList: _model
                            .cpDropdownFiltersOrdersVisitsProcessingModel
                            .dropdownOrdersVisitsProcessingValue,
                        unitsIdsList: _model.cpDropdownFiltersUnitsModel
                            .dropdownFiltersUnitsValue,
                      );
                      if ((_model.resOrdersVisits?.succeeded ?? true)) {
                        setState(() {
                          _model.lpsvOrdersVisits =
                              ((_model.resOrdersVisits?.jsonBody ?? '')
                                          .toList()
                                          .map<DtVOrderVisitStruct?>(
                                              DtVOrderVisitStruct.maybeFromMap)
                                          .toList()
                                      as Iterable<DtVOrderVisitStruct?>)
                                  .withoutNulls
                                  .toList()
                                  .cast<DtVOrderVisitStruct>();
                        });
                        setState(() {
                          FFAppState().stCounterLoop = 0;
                          FFAppState().stCounterLoopFinal =
                              _model.lpsvOrdersVisits.length;
                        });
                        setState(() {
                          _model.lpsvPriceServicesSum = 0.0;
                          _model.lpsvPriceMaterialsSum = 0.0;
                          _model.lpsvPriceVehiculesSum = 0.0;
                          _model.lpsvPriceTotalSum = 0.0;
                        });
                        while (FFAppState().stCounterLoop <
                            FFAppState().stCounterLoopFinal) {
                          setState(() {
                            _model.lpsvPriceServicesSum =
                                _model.lpsvPriceServicesSum +
                                    _model
                                        .lpsvOrdersVisits[
                                            FFAppState().stCounterLoop]
                                        .priceServices;
                            _model.lpsvPriceMaterialsSum =
                                _model.lpsvPriceMaterialsSum +
                                    _model
                                        .lpsvOrdersVisits[
                                            FFAppState().stCounterLoop]
                                        .priceMaterials;
                            _model.lpsvPriceVehiculesSum =
                                _model.lpsvPriceVehiculesSum +
                                    _model
                                        .lpsvOrdersVisits[
                                            FFAppState().stCounterLoop]
                                        .priceVehicles;
                            _model.lpsvPriceTotalSum =
                                _model.lpsvPriceTotalSum +
                                    _model
                                        .lpsvOrdersVisits[
                                            FFAppState().stCounterLoop]
                                        .priceTotal;
                          });
                          setState(() {
                            FFAppState().stCounterLoop =
                                FFAppState().stCounterLoop + 1;
                          });
                        }
                      }

                      setState(() {});
                    },
                    text: 'Atualizar',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              _model.lpsvPriceServicesSum.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            height: 200.0,
                            decoration: const BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final gcOrdersVisits =
                                    _model.lpsvOrdersVisits.toList();
                                return FlutterFlowDataTable<
                                    DtVOrderVisitStruct>(
                                  controller:
                                      _model.paginatedDataTableController,
                                  data: gcOrdersVisits,
                                  columnsBuilder: (onSortChanged) => [
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Atendimento',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                        ),
                                      ),
                                      fixedWidth: 150.0,
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Unidade',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Responsável',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Text(
                                            'Serviços',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          ),
                                        ),
                                      ),
                                      fixedWidth: 120.0,
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Text(
                                            'Materiais',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          ),
                                        ),
                                      ),
                                      fixedWidth: 120.0,
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Text(
                                            'Transporte',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          ),
                                        ),
                                      ),
                                      fixedWidth: 120.0,
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Text(
                                            'Total',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          ),
                                        ),
                                      ),
                                      fixedWidth: 150.0,
                                    ),
                                  ],
                                  dataRowBuilder: (gcOrdersVisitsItem,
                                          gcOrdersVisitsIndex,
                                          selected,
                                          onSelectChanged) =>
                                      DataRow(
                                    color: MaterialStateProperty.all(
                                      gcOrdersVisitsIndex % 2 == 0
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                    ),
                                    cells: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 6.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              gcOrdersVisitsItem.id.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Text(
                                              gcOrdersVisitsItem.orderMask,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Text(
                                              '${gcOrdersVisitsItem.orderTypeCode}/${gcOrdersVisitsItem.orderTypeSubCode}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Text(
                                              '${dateTimeFormat('d/M H:mm', gcOrdersVisitsItem.dateStartDatetime)}h',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            if (gcOrdersVisitsItem.statusId ==
                                                2)
                                              Text(
                                                '${gcOrdersVisitsItem.dateEndDatetime?.toString()}h',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            Flexible(
                                              child:
                                                  CpOrderVisitProcessingWidget(
                                                key: Key(
                                                    'Key3ga_${gcOrdersVisitsIndex}_of_${gcOrdersVisits.length}'),
                                                processingId: gcOrdersVisitsItem
                                                    .processingId,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 6.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${gcOrdersVisitsItem.systemParentCode}/${gcOrdersVisitsItem.systemCode}/${gcOrdersVisitsItem.unitTypeParentCode}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                gcOrdersVisitsItem
                                                    .unitDescription,
                                                'unitDescription',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                gcOrdersVisitsItem
                                                    .assetTagDescription,
                                                'unitDescription',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Expanded(
                                              child: Text(
                                                gcOrdersVisitsItem
                                                    .requestedServices,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 6.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                gcOrdersVisitsItem
                                                    .contractDescription,
                                                'contractDescription',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                gcOrdersVisitsItem
                                                    .teamLeaderNameShort,
                                                'teamCode',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                gcOrdersVisitsItem
                                                    .teamLeaderNameShort,
                                                'teamLeaderNameShort',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 6.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    useSafeArea: true,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: SizedBox(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.3,
                                                            child:
                                                                MdOrdersVisitsServicesDetalisWidget(
                                                              orderVisitId:
                                                                  valueOrDefault<
                                                                      int>(
                                                                gcOrdersVisitsItem
                                                                    .id,
                                                                1,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Text(
                                                  formatNumber(
                                                    gcOrdersVisitsItem
                                                        .priceServices,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: 'R\$ ',
                                                    format: '#,##0.00',
                                                    locale: 'pt_BR',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 6.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                formatNumber(
                                                  gcOrdersVisitsItem
                                                      .priceMaterials,
                                                  formatType: FormatType.custom,
                                                  currency: 'R\$ ',
                                                  format: '#,##0.00',
                                                  locale: 'pt_BR',
                                                ),
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 6.0, 0.0, 6.0),
                                              child: Text(
                                                formatNumber(
                                                  gcOrdersVisitsItem
                                                      .priceVehicles,
                                                  formatType: FormatType.custom,
                                                  currency: 'R\$ ',
                                                  format: '#,##0.00',
                                                  locale: 'pt_BR',
                                                ),
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 6.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                formatNumber(
                                                  gcOrdersVisitsItem.priceTotal,
                                                  formatType: FormatType.custom,
                                                  currency: 'R\$ ',
                                                  format: '#,##0.00',
                                                  locale: 'pt_BR',
                                                ),
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].map((c) => DataCell(c)).toList(),
                                  ),
                                  paginated: true,
                                  selectable: false,
                                  hidePaginator: true,
                                  showFirstLastButtons: false,
                                  width: double.infinity,
                                  height: double.infinity,
                                  headingRowHeight: 56.0,
                                  dataRowHeight: 150.0,
                                  columnSpacing: 20.0,
                                  headingRowColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(8.0),
                                  addHorizontalDivider: true,
                                  addTopAndBottomDivider: false,
                                  hideDefaultHorizontalDivider: true,
                                  horizontalDividerColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  horizontalDividerThickness: 1.0,
                                  addVerticalDivider: false,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
