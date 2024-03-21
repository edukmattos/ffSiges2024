import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_p_show/cp_o_p_show_widget.dart';
import 'package:flutter/material.dart';
import 'pg_o_p_show_model.dart';
export 'pg_o_p_show_model.dart';

class PgOPShowWidget extends StatefulWidget {
  const PgOPShowWidget({
    super.key,
    int? ppOPId,
  }) : ppOPId = ppOPId ?? 1;

  final int ppOPId;

  @override
  State<PgOPShowWidget> createState() => _PgOPShowWidgetState();
}

class _PgOPShowWidgetState extends State<PgOPShowWidget> {
  late PgOPShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOPShowModel());

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
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.cpOPShowModel,
                updateCallback: () => setState(() {}),
                child: CpOPShowWidget(
                  ppOPId: widget.ppOPId,
                ),
              ),
              Expanded(
                child: FutureBuilder<List<VOrdersRow>>(
                  future: VOrdersTable().queryRows(
                    queryFn: (q) => q.eq(
                      'parentId',
                      widget.ppOPId,
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
                    return Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final gcOList = containerVOrdersRowList.toList();
                          return ListView.separated(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              32.0,
                            ),
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount: gcOList.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 12.0),
                            itemBuilder: (context, gcOListIndex) {
                              final gcOListItem = gcOList[gcOListIndex];
                              return Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: CpOCardShowWidget(
                                  key: Key(
                                      'Key7dq_${gcOListIndex}_of_${gcOList.length}'),
                                  ppOId: gcOListItem.id!,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ].divide(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
