import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_parent_dash_card_show/cp_order_parent_dash_card_show_widget.dart';
import '/pages/orders/md_o_p_menu_options/md_o_p_menu_options_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_order_parent_show_model.dart';
export 'pg_order_parent_show_model.dart';

class PgOrderParentShowWidget extends StatefulWidget {
  const PgOrderParentShowWidget({
    super.key,
    required this.orderId,
  });

  final int? orderId;

  @override
  State<PgOrderParentShowWidget> createState() =>
      _PgOrderParentShowWidgetState();
}

class _PgOrderParentShowWidgetState extends State<PgOrderParentShowWidget> {
  late PgOrderParentShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrderParentShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abOPSelected(
        context,
        abOrderId: widget.orderId,
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
        floatingActionButton: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
          child: FloatingActionButton(
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
                  Navigator.pop(context);

                  context.pushNamed(
                    'pgOrderProgramming',
                    queryParameters: {
                      'orderId': serializeParam(
                        FFAppState().stOPSelected.first.id,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                  );
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
        ),
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Solicitação',
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
            child: FutureBuilder<List<VOrdersParentRow>>(
              future: VOrdersParentTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'id',
                  widget.orderId,
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
                List<VOrdersParentRow> containerVOrdersParentRowList =
                    snapshot.data!;
                final containerVOrdersParentRow =
                    containerVOrdersParentRowList.isNotEmpty
                        ? containerVOrdersParentRowList.first
                        : null;
                return Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 25.0,
                              buttonSize: 50.0,
                              icon: FaIcon(
                                FontAwesomeIcons.ellipsisV,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                              showLoadingIndicator: true,
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  useSafeArea: true,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: MdOPMenuOptionsWidget(
                                          statusId: FFAppState()
                                              .stOPSelected
                                              .first
                                              .statusId,
                                          orderId: FFAppState()
                                              .stOPSelected
                                              .first
                                              .id,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                        ],
                      ),
                      wrapWithModel(
                        model: _model.cpOrderParentDashCardShowModel,
                        updateCallback: () => setState(() {}),
                        child: CpOrderParentDashCardShowWidget(
                          orderId: widget.orderId!,
                        ),
                      ),
                    ].divide(const SizedBox(height: 12.0)),
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
