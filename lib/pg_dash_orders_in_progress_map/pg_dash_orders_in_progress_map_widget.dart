import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_menu_services_filters/cp_menu_services_filters_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_dash_orders_in_progress_map_model.dart';
export 'pg_dash_orders_in_progress_map_model.dart';

class PgDashOrdersInProgressMapWidget extends StatefulWidget {
  const PgDashOrdersInProgressMapWidget({super.key});

  @override
  State<PgDashOrdersInProgressMapWidget> createState() =>
      _PgDashOrdersInProgressMapWidgetState();
}

class _PgDashOrdersInProgressMapWidgetState
    extends State<PgDashOrdersInProgressMapWidget> {
  late PgDashOrdersInProgressMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDashOrdersInProgressMapModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().stMapOrdersCenterSelected =
            FFAppState().stMapOrdersCenterInitial;
      });
      await actions.caSupabaseDisconnect(
        'orders',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'orders',
        () async {
          await action_blocks.abMapOrdersUpdate(
            context,
            abOrdersStatusId: FFAppState().stMapOrdersStatusId,
          );
        },
      );
      await action_blocks.abMapOrdersUpdate(
        context,
        abOrdersStatusId: FFAppState().stMapOrdersStatusId,
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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuServicesFiltersModel,
            updateCallback: () => setState(() {}),
            child: const CpMenuServicesFiltersWidget(),
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
          title: Text(
            'SERVIÇOS',
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
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: 350.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final orders =
                                        FFAppState().stMapOrders.toList();
                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: orders.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 12.0),
                                      itemBuilder: (context, ordersIndex) {
                                        final ordersItem = orders[ordersIndex];
                                        return Container(
                                            width: 100,
                                            height: 100,
                                            color: Colors.green);
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: FlutterFlowGoogleMap(
                            controller: _model.googleMapsController,
                            onCameraIdle: (latLng) =>
                                _model.googleMapsCenter = latLng,
                            initialLocation: _model.googleMapsCenter ??=
                                FFAppState().stMapOrdersCenterSelected!,
                            markers: FFAppState()
                                .stMapOrders
                                .map((e) => e.unitLatlng)
                                .withoutNulls
                                .toList()
                                .map(
                                  (marker) => FlutterFlowMarker(
                                    marker.serialize(),
                                    marker,
                                  ),
                                )
                                .toList(),
                            markerColor: GoogleMarkerColor.violet,
                            mapType: MapType.normal,
                            style: GoogleMapStyle.standard,
                            initialZoom: 14.0,
                            allowInteraction: true,
                            allowZoom: true,
                            showZoomControls: true,
                            showLocation: true,
                            showCompass: false,
                            showMapToolbar: false,
                            showTraffic: false,
                            centerMapOnMarkerTap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
