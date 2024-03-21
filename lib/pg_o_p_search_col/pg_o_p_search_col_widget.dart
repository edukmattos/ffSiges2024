import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_p_d_b_admin_card_show/cp_o_p_d_b_admin_card_show_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pg_o_p_search_col_model.dart';
export 'pg_o_p_search_col_model.dart';

class PgOPSearchColWidget extends StatefulWidget {
  const PgOPSearchColWidget({super.key});

  @override
  State<PgOPSearchColWidget> createState() => _PgOPSearchColWidgetState();
}

class _PgOPSearchColWidgetState extends State<PgOPSearchColWidget> {
  late PgOPSearchColModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOPSearchColModel());

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
            'Serviço',
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
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Solicitação de Serviço',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.cpOPDBAdminCardShowModel,
                                    updateCallback: () => setState(() {}),
                                    child: CpOPDBAdminCardShowWidget(
                                      orderParentId:
                                          FFAppState().stOPSelected.first.id,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Ordens de Serviços',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Builder(
                                        builder: (context) {
                                          final gcOs =
                                              FFAppState().stOSelected.toList();
                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: gcOs.length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 12.0),
                                            itemBuilder: (context, gcOsIndex) {
                                              final gcOsItem = gcOs[gcOsIndex];
                                              return Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: gcOsItem.id ==
                                                            _model.lpsvOSelected
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    width: 6.0,
                                                  ),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model.lpsvOSelected =
                                                          gcOsItem.id;
                                                      _model.lpsvOVSelected =
                                                          null;
                                                    });
                                                    _model.apiResultnod =
                                                        await ApiOrdersVisitsGroup
                                                            .orderVisitsByOrderIdCall
                                                            .call(
                                                      orderId:
                                                          _model.lpsvOSelected,
                                                    );
                                                    if ((_model.apiResultnod
                                                            ?.succeeded ??
                                                        true)) {
                                                      setState(() {
                                                        FFAppState()
                                                            .stOVSelected = ((_model
                                                                        .apiResultnod
                                                                        ?.jsonBody ??
                                                                    '')
                                                                .toList()
                                                                .map<DtVOrderVisitStruct?>(
                                                                    DtVOrderVisitStruct
                                                                        .maybeFromMap)
                                                                .toList() as Iterable<DtVOrderVisitStruct?>)
                                                            .withoutNulls
                                                            .toList()
                                                            .cast<DtVOrderVisitStruct>();
                                                      });
                                                    }

                                                    setState(() {});
                                                  },
                                                  child: CpOCardShowWidget(
                                                    key: Key(
                                                        'Keyvdy_${gcOsIndex}_of_${gcOs.length}'),
                                                    ppOId: gcOsItem.id,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ].divide(const SizedBox(height: 12.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Atendimentos',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Builder(
                                  builder: (context) {
                                    final gcOVs =
                                        FFAppState().stOVSelected.toList();
                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: gcOVs.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 12.0),
                                      itemBuilder: (context, gcOVsIndex) {
                                        final gcOVsItem = gcOVs[gcOVsIndex];
                                        return Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color: gcOVsItem.id ==
                                                      _model.lpsvOVSelected
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : const Color(0x00000000),
                                              width: 6.0,
                                            ),
                                          ),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.lpsvOVSelected =
                                                    gcOVsItem.id;
                                              });
                                            },
                                            child: CpOVShowWidget(
                                              key: Key(
                                                  'Keyub1_${gcOVsIndex}_of_${gcOVs.length}'),
                                              ppOVId: gcOVsItem.id,
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
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Ativos',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: const [],
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 12.0)),
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
