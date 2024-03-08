import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_card_show_parent/cp_order_card_show_parent_widget.dart';
import '/pages/orders/cp_order_parent_dash_card_show/cp_order_parent_dash_card_show_widget.dart';
import '/pages/orders/md_order_new/md_order_new_widget.dart';
import 'package:flutter/material.dart';
import 'xpg_order_parent_unit_show_model.dart';
export 'xpg_order_parent_unit_show_model.dart';

class XpgOrderParentUnitShowWidget extends StatefulWidget {
  const XpgOrderParentUnitShowWidget({
    super.key,
    required this.orderId,
  });

  final int? orderId;

  @override
  State<XpgOrderParentUnitShowWidget> createState() =>
      _XpgOrderParentUnitShowWidgetState();
}

class _XpgOrderParentUnitShowWidgetState
    extends State<XpgOrderParentUnitShowWidget> {
  late XpgOrderParentUnitShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => XpgOrderParentUnitShowModel());

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
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () => _model.unfocusNode.canRequestFocus
                        ? FocusScope.of(context)
                            .requestFocus(_model.unfocusNode)
                        : FocusScope.of(context).unfocus(),
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: MdOrderNewWidget(
                        orderParentId: widget.orderId!,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Icon(
              Icons.add,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
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
                      wrapWithModel(
                        model: _model.cpOrderParentDashCardShowModel,
                        updateCallback: () => setState(() {}),
                        child: CpOrderParentDashCardShowWidget(
                          orderId: widget.orderId!,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              if (_model.lpsvListViewOptions ==
                                  'ordersScheduled') {
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FutureBuilder<List<VOrdersRow>>(
                                        future: VOrdersTable().queryRows(
                                          queryFn: (q) => q.eq(
                                            'parentId',
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
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<VOrdersRow>
                                              listViewVOrdersRowList =
                                              snapshot.data!;
                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewVOrdersRowList.length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 12.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewVOrdersRow =
                                                  listViewVOrdersRowList[
                                                      listViewIndex];
                                              return CpOrderCardShowParentWidget(
                                                key: Key(
                                                    'Keytvl_${listViewIndex}_of_${listViewVOrdersRowList.length}'),
                                                orderId: widget.orderId!,
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return Text(
                                  'Hello World',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                );
                              }
                            },
                          ),
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
