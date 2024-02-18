import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_parent_dash_card_show/cp_order_parent_dash_card_show_widget.dart';
import '/pages/orders/cp_order_programming_assets_list_item_card/cp_order_programming_assets_list_item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'pg_order_programming_model.dart';
export 'pg_order_programming_model.dart';

class PgOrderProgrammingWidget extends StatefulWidget {
  const PgOrderProgrammingWidget({
    super.key,
    required this.orderId,
  });

  final int? orderId;

  @override
  State<PgOrderProgrammingWidget> createState() =>
      _PgOrderProgrammingWidgetState();
}

class _PgOrderProgrammingWidgetState extends State<PgOrderProgrammingWidget>
    with TickerProviderStateMixin {
  late PgOrderProgrammingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => PgOrderProgrammingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                'Programação',
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
            child: Container(
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
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 4.0),
                        child: Text(
                          'Setor',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ),
                      wrapWithModel(
                        model: _model.cpDropdownAssetsTagsModel,
                        updateCallback: () => setState(() {}),
                        child: CpDropdownAssetsTagsWidget(
                          hintText: 'Setor',
                          initialValue: FFAppState()
                              .stOrderParentSelected
                              .first
                              .assetTagId,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Ativos',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 23.0,
                                  borderWidth: 1.0,
                                  buttonSize: 46.0,
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
                                    _model.resUnits =
                                        await ApiOrdersVisitsAssetsGroup
                                            .assetsByUnitTagCall
                                            .call(
                                      searchUnitId: FFAppState()
                                          .stOrderParentSelected
                                          .first
                                          .unitId,
                                      searchAssetTagId: _model
                                          .cpDropdownAssetsTagsModel
                                          .dropdownAssetsTagsValue,
                                    );
                                    if ((_model.resUnits?.succeeded ?? true)) {
                                      setState(() {
                                        FFAppState().stAssets =
                                            ((_model.resUnits?.jsonBody ?? '')
                                                        .toList()
                                                        .map<DtVAssetStruct?>(
                                                            DtVAssetStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        DtVAssetStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<DtVAssetStruct>();
                                      });
                                    }

                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final assetsByTagId =
                                        FFAppState().stAssets.toList();
                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: assetsByTagId.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 12.0),
                                      itemBuilder:
                                          (context, assetsByTagIdIndex) {
                                        final assetsByTagIdItem =
                                            assetsByTagId[assetsByTagIdIndex];
                                        return CpOrderProgrammingAssetsListItemCardWidget(
                                          key: Key(
                                              'Keyf00_${assetsByTagIdIndex}_of_${assetsByTagId.length}'),
                                          code: assetsByTagIdItem.code,
                                          statusDescription: assetsByTagIdItem
                                              .statusDescription,
                                          description:
                                              assetsByTagIdItem.description,
                                          tagDescription:
                                              assetsByTagIdItem.tagDescription,
                                          tagSubDescription: assetsByTagIdItem
                                              .tagSubDescription,
                                          unitDescription:
                                              assetsByTagIdItem.unitDescription,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
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
