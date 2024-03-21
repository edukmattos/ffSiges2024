import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_my_team_model.dart';
export 'pg_o_v_my_team_model.dart';

class PgOVMyTeamWidget extends StatefulWidget {
  const PgOVMyTeamWidget({super.key});

  @override
  State<PgOVMyTeamWidget> createState() => _PgOVMyTeamWidgetState();
}

class _PgOVMyTeamWidgetState extends State<PgOVMyTeamWidget> {
  late PgOVMyTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVMyTeamModel());

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
            'Minha Equipe',
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
            child: FutureBuilder<List<VUsersRow>>(
              future: (_model.requestCompleter ??= Completer<List<VUsersRow>>()
                    ..complete(VUsersTable().queryRows(
                      queryFn: (q) => q
                          .eq(
                            'departmentId',
                            FFAppState().asUserCurrent.departmentId,
                          )
                          .neq(
                            'id',
                            FFAppState().asUserCurrent.id,
                          )
                          .order('nameShort', ascending: true),
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
                List<VUsersRow> containerVUsersRowList = snapshot.data!;
                return Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.cpDBUserAvailableModel,
                              updateCallback: () => setState(() {}),
                              child: CpDBUserAvailableWidget(
                                toolTip: FFAppState().asUserCurrent.nameShort,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              constraints: const BoxConstraints(
                                minHeight: 0.0,
                                maxHeight: 150.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final gcMyTeam = containerVUsersRowList
                                      .where((e) =>
                                          e.orderVisitIdInProgress ==
                                          FFAppState()
                                              .asUserCurrent
                                              .orderVisitIdInProgress)
                                      .toList()
                                      .map((e) => e)
                                      .toList();
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: gcMyTeam.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(width: 12.0),
                                    itemBuilder: (context, gcMyTeamIndex) {
                                      final gcMyTeamItem =
                                          gcMyTeam[gcMyTeamIndex];
                                      return Container(
                                        width: 120.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x34090F13),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: AlignedTooltip(
                                          content: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text(
                                                'Remover',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              )),
                                          offset: 4.0,
                                          preferredDirection:
                                              AxisDirection.down,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 4.0,
                                          tailBaseWidth: 24.0,
                                          tailLength: 12.0,
                                          waitDuration:
                                              const Duration(milliseconds: 100),
                                          showDuration:
                                              const Duration(milliseconds: 1500),
                                          triggerMode: TooltipTriggerMode.tap,
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Stack(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    CpUserPicProfileWidget(
                                                      key: Key(
                                                          'Keybb5_${gcMyTeamIndex}_of_${gcMyTeam.length}'),
                                                      size: 70,
                                                      imgUrl:
                                                          '${FFAppConstants.appServerUrlStorage}${gcMyTeamItem.imgFilePath}${gcMyTeamItem.imgFileName}',
                                                      toolTip: gcMyTeamItem
                                                          .nameShort!,
                                                      isAvailable: gcMyTeamItem
                                                          .isAvailable!,
                                                      isOrderVisitIdInProgress:
                                                          gcMyTeamItem
                                                              .isOrderVisitIdInProgress!,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    30.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 20.0,
                                                          buttonSize: 36.0,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .solidStar,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            size: 16.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () async {
                                                            await action_blocks
                                                                .abTeamUsersUpdate(
                                                              context,
                                                              abOrderVisitId:
                                                                  FFAppState()
                                                                      .asUserCurrent
                                                                      .orderVisitIdInProgress,
                                                              abUserSelected:
                                                                  gcMyTeamItem
                                                                      .id,
                                                              abOperation:
                                                                  'remove',
                                                            );
                                                            setState(() => _model
                                                                    .requestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForRequestCompleted();
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      gcMyTeamItem.nameShort,
                                                      'Apelido',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.cpInputTextModel,
                              updateCallback: () => setState(() {}),
                              updateOnChange: true,
                              child: const CpInputTextWidget(
                                labelText: 'Pesquisar',
                                isReadOnly: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final gcUsersAvailable =
                                            containerVUsersRowList
                                                .where((e) =>
                                                    e.teamId !=
                                                    FFAppState()
                                                        .asUserCurrent
                                                        .teamId)
                                                .toList();
                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: gcUsersAvailable.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 8.0),
                                          itemBuilder:
                                              (context, gcUsersAvailableIndex) {
                                            final gcUsersAvailableItem =
                                                gcUsersAvailable[
                                                    gcUsersAvailableIndex];
                                            return Visibility(
                                              visible: functions
                                                      .cfSearchResultsFilter(
                                                          _model
                                                              .cpInputTextModel
                                                              .inputTextController
                                                              .text,
                                                          gcUsersAvailableItem
                                                              .nameShort!) ??
                                                  true,
                                              child: Container(
                                                width: double.infinity,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x32000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CpUserPicProfileWidget(
                                                                  key: Key(
                                                                      'Keyd45_${gcUsersAvailableIndex}_of_${gcUsersAvailable.length}'),
                                                                  size: 50,
                                                                  imgUrl:
                                                                      '${FFAppConstants.appServerUrlStorage}${gcUsersAvailableItem.imgFilePath}${gcUsersAvailableItem.imgFileName}',
                                                                  toolTip:
                                                                      gcUsersAvailableItem
                                                                          .nameShort!,
                                                                  isAvailable:
                                                                      gcUsersAvailableItem
                                                                          .isAvailable!,
                                                                  isOrderVisitIdInProgress:
                                                                      gcUsersAvailableItem
                                                                          .isOrderVisitIdInProgress!,
                                                                ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        gcUsersAvailableItem
                                                                            .nameShort,
                                                                        'Apelido',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          gcUsersAvailableItem
                                                                              .teamCode,
                                                                          'Equipe',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (gcUsersAvailableItem
                                                                    .isAvailable ??
                                                                true)
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    25.0,
                                                                buttonSize:
                                                                    50.0,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .star,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  size: 24.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed:
                                                                    () async {
                                                                  await action_blocks
                                                                      .abTeamUsersUpdate(
                                                                    context,
                                                                    abOrderVisitId:
                                                                        FFAppState()
                                                                            .asUserCurrent
                                                                            .orderVisitIdInProgress,
                                                                    abUserSelected:
                                                                        gcUsersAvailableItem
                                                                            .id,
                                                                    abOperation:
                                                                        'add',
                                                                  );
                                                                  setState(() =>
                                                                      _model.requestCompleter =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted();
                                                                },
                                                              ),
                                                          ],
                                                        ),
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
                                  ],
                                ),
                              ),
                            ),
                          ],
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
