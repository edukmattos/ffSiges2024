import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pg_units_search_model.dart';
export 'pg_units_search_model.dart';

class PgUnitsSearchWidget extends StatefulWidget {
  const PgUnitsSearchWidget({super.key});

  @override
  State<PgUnitsSearchWidget> createState() => _PgUnitsSearchWidgetState();
}

class _PgUnitsSearchWidgetState extends State<PgUnitsSearchWidget>
    with TickerProviderStateMixin {
  late PgUnitsSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 800.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
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
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
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
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1400.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgUnitsSearchModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
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
                _model.isAllowed = await action_blocks.abGuardian(
                  context,
                  abPgRequestedId: 8,
                );
                if (_model.isAllowed!) {
                  context.pushNamed('pgUnitsNew');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        FFAppConstants.msgNotAllowed,
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                      ),
                      duration: const Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).error,
                    ),
                  );
                }

                setState(() {});
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
            title: Text(
              'Unidades',
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
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.cpInputTextSearchModel,
                            updateCallback: () => setState(() {}),
                            child: const CpInputTextWidget(
                              labelText: 'Pesquisar',
                              isReadOnly: false,
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 23.0,
                          borderWidth: 1.0,
                          buttonSize: 46.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.search_sharp,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24.0,
                          ),
                          showLoadingIndicator: true,
                          onPressed: () async {
                            _model.resUnits =
                                await ApiUnitsGroup.unitsSearchCall.call(
                              searchTerms: _model.cpInputTextSearchModel
                                  .inputTextController.text,
                            );
                            if ((_model.resUnits?.succeeded ?? true)) {
                              setState(() => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            }

                            setState(() {});
                          },
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                    Expanded(
                      child: FutureBuilder<ApiCallResponse>(
                        future: (_model.apiRequestCompleter ??=
                                Completer<ApiCallResponse>()
                                  ..complete(ApiUnitsGroup.unitsSearchCall.call(
                                    searchTerms: _model.cpInputTextSearchModel
                                        .inputTextController.text,
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
                          final containerUnitsSearchResponse = snapshot.data!;
                          return Container(
                            decoration: const BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final unitsResult = getJsonField(
                                  containerUnitsSearchResponse.jsonBody,
                                  r'''$''',
                                ).toList();
                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  scrollDirection: Axis.vertical,
                                  itemCount: unitsResult.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 12.0),
                                  itemBuilder: (context, unitsResultIndex) {
                                    final unitsResultItem =
                                        unitsResult[unitsResultIndex];
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x1F000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 12.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
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
                                                          context.pushNamed(
                                                            'pgUnitShow',
                                                            queryParameters: {
                                                              'unitId':
                                                                  serializeParam(
                                                                valueOrDefault<
                                                                    int>(
                                                                  getJsonField(
                                                                    unitsResultItem,
                                                                    r'''$.id''',
                                                                  ),
                                                                  1,
                                                                ),
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Text(
                                                          getJsonField(
                                                            unitsResultItem,
                                                            r'''$.descriptionFull''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20.0,
                                                              ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation1']!),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (isWeb) {
                                                      await launchURL(
                                                          'https://www.google.com/maps?q=${'${getJsonField(
                                                        unitsResultItem,
                                                        r'''$.latitude''',
                                                      ).toString()},${getJsonField(
                                                        unitsResultItem,
                                                        r'''$.longitude''',
                                                      ).toString()}'}');
                                                    } else {
                                                      await launchMap(
                                                        location: functions
                                                            .cfConvToLatLng(
                                                                getJsonField(
                                                                  unitsResultItem,
                                                                  r'''$.latitude''',
                                                                ),
                                                                getJsonField(
                                                                  unitsResultItem,
                                                                  r'''$.logitude''',
                                                                )),
                                                        title: getJsonField(
                                                          unitsResultItem,
                                                          r'''$.descriptionFull''',
                                                        ).toString(),
                                                      );
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          getJsonField(
                                                            unitsResultItem,
                                                            r'''$.addressFull''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0x9AFFFFFF),
                                                              ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'textOnPageLoadAnimation2']!),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          borderRadius: 20.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 40.0,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent1,
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .mapMarkerAlt,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            size: 24.0,
                                                          ),
                                                          onPressed: () async {
                                                            if (isWeb) {
                                                              await launchURL(
                                                                  'https://www.google.com/maps?q=${'${getJsonField(
                                                                unitsResultItem,
                                                                r'''$.latitude''',
                                                              ).toString()},${getJsonField(
                                                                unitsResultItem,
                                                                r'''$.longitude''',
                                                              ).toString()}'}');
                                                            } else {
                                                              await launchMap(
                                                                location: functions
                                                                    .cfConvToLatLng(
                                                                        getJsonField(
                                                                          unitsResultItem,
                                                                          r'''$.latitude''',
                                                                        ),
                                                                        getJsonField(
                                                                          unitsResultItem,
                                                                          r'''$.longitude''',
                                                                        )),
                                                                title:
                                                                    getJsonField(
                                                                  unitsResultItem,
                                                                  r'''$.descriptionFull''',
                                                                ).toString(),
                                                              );
                                                            }
                                                          },
                                                        ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'iconButtonOnPageLoadAnimation']!),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation']!);
                                  },
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
