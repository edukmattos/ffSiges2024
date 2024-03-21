import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_p_d_b_admin_card_show/cp_o_p_d_b_admin_card_show_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_o_p_search_model.dart';
export 'pg_o_p_search_model.dart';

class PgOPSearchWidget extends StatefulWidget {
  const PgOPSearchWidget({
    super.key,
    int? orderParentId,
  }) : orderParentId = orderParentId ?? 1;

  final int orderParentId;

  @override
  State<PgOPSearchWidget> createState() => _PgOPSearchWidgetState();
}

class _PgOPSearchWidgetState extends State<PgOPSearchWidget> {
  late PgOPSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOPSearchModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.resOs = await VOrdersTable().queryRows(
        queryFn: (q) => q.eq(
          'parentId',
          widget.orderParentId,
        ),
      );
      setState(() {
        _model.lpsvORows = _model.resOs!.toList().cast<VOrdersRow>();
      });
      _model.resOVs = await VOrdersVisitsTable().queryRows(
        queryFn: (q) => q.eq(
          'parentId',
          widget.orderParentId,
        ),
      );
      setState(() {
        _model.lpsvOVRows = _model.resOVs!.toList().cast<VOrdersVisitsRow>();
      });
      _model.resOVAssets = await VOrdersVisitsAssetsTable().queryRows(
        queryFn: (q) => q.eq(
          'orderParentId',
          widget.orderParentId,
        ),
      );
      setState(() {
        _model.lpsvOVAssetRows =
            _model.resOVAssets!.toList().cast<VOrdersVisitsAssetsRow>();
      });
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
            'Solicitação',
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
            child: FutureBuilder<List<VOrdersRow>>(
              future: VOrdersTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'id',
                  widget.orderParentId,
                ),
              ),
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
                List<VOrdersRow> containerVOrdersRowList = snapshot.data!;
                final containerVOrdersRow = containerVOrdersRowList.isNotEmpty
                    ? containerVOrdersRowList.first
                    : null;
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.33,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.cpOPDBAdminCardShowModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: CpOPDBAdminCardShowWidget(
                                              orderParentId:
                                                  containerVOrdersRow!.id!,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  _model.isAllowed =
                                                      await action_blocks
                                                          .abGuardian(
                                                    context,
                                                    abPgRequestedId: 7,
                                                  );
                                                  if (_model.isAllowed!) {
                                                    context.pushNamed(
                                                      'pgOProgramming',
                                                      queryParameters: {
                                                        'orderParentId':
                                                            serializeParam(
                                                          widget.orderParentId,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          FFAppConstants
                                                              .msgNotAllowed,
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                          ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                  }

                                                  setState(() {});
                                                },
                                                text: 'Criar ORDEM SERVIÇO',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 50.0,
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
                                                          12.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 4.0)),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Builder(
                                              builder: (context) {
                                                final gcOs =
                                                    _model.lpsvORows.toList();
                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: gcOs.length,
                                                  separatorBuilder: (_, __) =>
                                                      const SizedBox(height: 12.0),
                                                  itemBuilder:
                                                      (context, gcOsIndex) {
                                                    final gcOsItem =
                                                        gcOs[gcOsIndex];
                                                    return Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: CpOCardShowWidget(
                                                        key: Key(
                                                            'Keyqj0_${gcOsIndex}_of_${gcOs.length}'),
                                                        ppOId: gcOsItem.id!,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            Container(
                                              width: double.infinity,
                                              decoration: const BoxDecoration(),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Atendimentos',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        final gcOVs = _model
                                                            .lpsvOVRows
                                                            .where((e) =>
                                                                e.orderId ==
                                                                _model
                                                                    .lpsvOSelected)
                                                            .toList();
                                                        return ListView
                                                            .separated(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              gcOVs.length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 12.0),
                                                          itemBuilder: (context,
                                                              gcOVsIndex) {
                                                            final gcOVsItem =
                                                                gcOVs[
                                                                    gcOVsIndex];
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.lpsvOVSelected =
                                                                        gcOVsItem
                                                                            .id;
                                                                  });
                                                                },
                                                                child:
                                                                    CpOVShowWidget(
                                                                  key: Key(
                                                                      'Key3ap_${gcOVsIndex}_of_${gcOVs.length}'),
                                                                  ppOVId:
                                                                      gcOVsItem
                                                                          .id!,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.33,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Ativos',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  ListView(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: const [],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 12.0)),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
