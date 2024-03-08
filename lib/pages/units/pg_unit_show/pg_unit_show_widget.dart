import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_parent_unit_show/cp_order_parent_unit_show_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'pg_unit_show_model.dart';
export 'pg_unit_show_model.dart';

class PgUnitShowWidget extends StatefulWidget {
  const PgUnitShowWidget({
    super.key,
    required this.unitId,
  });

  final int? unitId;

  @override
  State<PgUnitShowWidget> createState() => _PgUnitShowWidgetState();
}

class _PgUnitShowWidgetState extends State<PgUnitShowWidget>
    with TickerProviderStateMixin {
  late PgUnitShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
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
          begin: const Offset(0.0, 70.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgUnitShowModel());

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              var shouldSetState = false;
              _model.isAllowed = await action_blocks.abGuardian(context);
              shouldSetState = true;
              if (_model.isAllowed!) {
              } else {
                if (shouldSetState) setState(() {});
                return;
              }

              if (shouldSetState) setState(() {});
            },
            child: Icon(
              Icons.add,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
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
            'Unidade',
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
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  wrapWithModel(
                    model: _model.cpUnitCardShowModel,
                    updateCallback: () => setState(() {}),
                    child: CpUnitCardShowWidget(
                      unitId: widget.unitId!,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          if (_model.lpsvOrdersView == 'ordersAnalysis') {
                            return FutureBuilder<List<VOrdersParentRow>>(
                              future: VOrdersParentTable().queryRows(
                                queryFn: (q) => q
                                    .eq(
                                      'statusId',
                                      1,
                                    )
                                    .eq(
                                      'unitId',
                                      widget.unitId,
                                    )
                                    .order('requesterDate'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<VOrdersParentRow>
                                    listViewVOrdersParentRowList =
                                    snapshot.data!;
                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewVOrdersParentRowList.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 12.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewVOrdersParentRow =
                                        listViewVOrdersParentRowList[
                                            listViewIndex];
                                    return CpOrderParentUnitShowWidget(
                                      key: Key(
                                          'Key1e9_${listViewIndex}_of_${listViewVOrdersParentRowList.length}'),
                                      orderId: listViewVOrdersParentRow.id!,
                                    );
                                  },
                                );
                              },
                            );
                          } else if (_model.lpsvOrdersView ==
                              'ordersAuthorized') {
                            return FutureBuilder<List<VOrdersParentRow>>(
                              future: VOrdersParentTable().queryRows(
                                queryFn: (q) => q
                                    .eq(
                                      'statusId',
                                      2,
                                    )
                                    .eq(
                                      'unitId',
                                      widget.unitId,
                                    )
                                    .order('requesterDate'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<VOrdersParentRow>
                                    listViewVOrdersParentRowList =
                                    snapshot.data!;
                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewVOrdersParentRowList.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 12.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewVOrdersParentRow =
                                        listViewVOrdersParentRowList[
                                            listViewIndex];
                                    return CpOrderParentUnitShowWidget(
                                      key: Key(
                                          'Keywsz_${listViewIndex}_of_${listViewVOrdersParentRowList.length}'),
                                      orderId: listViewVOrdersParentRow.id!,
                                    );
                                  },
                                );
                              },
                            );
                          } else if (_model.lpsvOrdersView ==
                              'ordersScheduled') {
                            return ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children:
                                  <Widget>[].divide(const SizedBox(height: 12.0)),
                            );
                          } else if (_model.lpsvOrdersView ==
                              'ordersInProgress') {
                            return ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children:
                                  <Widget>[].divide(const SizedBox(height: 12.0)),
                            );
                          } else {
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: <Widget>[]
                                        .divide(const SizedBox(height: 12.0)),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
