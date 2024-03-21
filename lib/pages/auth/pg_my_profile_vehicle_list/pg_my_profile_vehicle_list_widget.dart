import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_my_profile_vehicle_list_model.dart';
export 'pg_my_profile_vehicle_list_model.dart';

class PgMyProfileVehicleListWidget extends StatefulWidget {
  const PgMyProfileVehicleListWidget({super.key});

  @override
  State<PgMyProfileVehicleListWidget> createState() =>
      _PgMyProfileVehicleListWidgetState();
}

class _PgMyProfileVehicleListWidgetState
    extends State<PgMyProfileVehicleListWidget> {
  late PgMyProfileVehicleListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgMyProfileVehicleListModel());

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
            'Meu Veículo',
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FutureBuilder<List<VehiclesRow>>(
                    future: (_model.requestCompleter ??=
                            Completer<List<VehiclesRow>>()
                              ..complete(VehiclesTable().queryRows(
                                queryFn: (q) => q
                                    .eq(
                                      'departmentId',
                                      FFAppState().asUserCurrent.departmentId,
                                    )
                                    .order('description', ascending: true),
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
                      List<VehiclesRow> listViewVehiclesRowList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewVehiclesRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewVehiclesRow =
                              listViewVehiclesRowList[listViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x32000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                listViewVehiclesRow.description,
                                                'Veículo',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (listViewVehiclesRow.id !=
                                        FFAppState().asUserCurrent.vehicleId)
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 25.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: FaIcon(
                                          FontAwesomeIcons.star,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          await UsersTable().update(
                                            data: {
                                              'vehicleId':
                                                  listViewVehiclesRow.id,
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'id',
                                              FFAppState().asUserCurrent.id,
                                            ),
                                          );
                                          await action_blocks.abUserUpdate(
                                            context,
                                            abEmail: FFAppState()
                                                .asUserCurrent
                                                .email,
                                            abAccessToken: FFAppState()
                                                .asUserCurrent
                                                .accessToken,
                                          );
                                          setState(() =>
                                              _model.requestCompleter = null);
                                          await _model
                                              .waitForRequestCompleted();
                                        },
                                      ),
                                    if (listViewVehiclesRow.id ==
                                        FFAppState().asUserCurrent.vehicleId)
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 25.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidStar,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: true
                                            ? null
                                            : () {
                                                print('IconButton pressed ...');
                                              },
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
