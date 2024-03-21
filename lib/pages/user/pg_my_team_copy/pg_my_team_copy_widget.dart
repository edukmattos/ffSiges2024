import '/backend/supabase/supabase.dart';
import '/components/cp_results_no_found_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_my_team_copy_model.dart';
export 'pg_my_team_copy_model.dart';

class PgMyTeamCopyWidget extends StatefulWidget {
  const PgMyTeamCopyWidget({
    super.key,
    this.visitId,
  });

  final int? visitId;

  @override
  State<PgMyTeamCopyWidget> createState() => _PgMyTeamCopyWidgetState();
}

class _PgMyTeamCopyWidgetState extends State<PgMyTeamCopyWidget> {
  late PgMyTeamCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgMyTeamCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.visitId != null) {
        await actions.caSupabaseDisconnect(
          'ordersVisitsTeams',
        );
        await Future.delayed(const Duration(milliseconds: 2000));
        await actions.caSupabaseConnect(
          'ordersVisitsTeams',
          () async {
            setState(() => _model.requestCompleter2 = null);
            await _model.waitForRequestCompleted2();
            setState(() => _model.requestCompleter3 = null);
            await _model.waitForRequestCompleted3();
          },
        );
      } else {
        await actions.caSupabaseDisconnect(
          'users',
        );
        await Future.delayed(const Duration(milliseconds: 2000));
        await actions.caSupabaseConnect(
          'users',
          () async {
            setState(() => _model.requestCompleter4 = null);
            await _model.waitForRequestCompleted4();
            setState(() => _model.requestCompleter1 = null);
            await _model.waitForRequestCompleted1();
          },
        );
      }
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
                'Minha Equipe',
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
              width: double.infinity,
              height: double.infinity,
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
                    child: Builder(
                      builder: (context) {
                        if (widget.visitId == null) {
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<List<VUsersRow>>(
                                  future: (_model.requestCompleter1 ??=
                                          Completer<List<VUsersRow>>()
                                            ..complete(VUsersTable().queryRows(
                                              queryFn: (q) => q
                                                  .eq(
                                                    'teamId',
                                                    FFAppState()
                                                        .asUserCurrent
                                                        .teamId,
                                                  )
                                                  .neq(
                                                    'id',
                                                    FFAppState()
                                                        .asUserCurrent
                                                        .id,
                                                  )
                                                  .order('nameShort',
                                                      ascending: true),
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VUsersRow>
                                        containerUsersTeamVUsersRowList =
                                        snapshot.data!;
                                    return Container(
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            if (containerUsersTeamVUsersRowList.isNotEmpty) {
                                              return Builder(
                                                builder: (context) {
                                                  final usersTeam =
                                                      containerUsersTeamVUsersRowList
                                                          .toList();
                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: usersTeam.length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(width: 12.0),
                                                    itemBuilder: (context,
                                                        usersTeamIndex) {
                                                      final usersTeamItem =
                                                          usersTeam[
                                                              usersTeamIndex];
                                                      return Container(
                                                        width: 120.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: usersTeamItem
                                                                      .id ==
                                                                  FFAppState()
                                                                      .stTeamUserSelected
                                                                      .id
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .error
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x34090F13),
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: AlignedTooltip(
                                                          content: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child: Text(
                                                                'Remover',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                              )),
                                                          offset: 4.0,
                                                          preferredDirection:
                                                              AxisDirection
                                                                  .down,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          elevation: 4.0,
                                                          tailBaseWidth: 24.0,
                                                          tailLength: 12.0,
                                                          waitDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      100),
                                                          showDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      1500),
                                                          triggerMode:
                                                              TooltipTriggerMode
                                                                  .tap,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    12.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  children: [
                                                                    CpUserPicProfileWidget(
                                                                      key: Key(
                                                                          'Key2vo_${usersTeamIndex}_of_${usersTeam.length}'),
                                                                      size: 70,
                                                                      imgUrl:
                                                                          '${FFAppConstants.appServerUrlStorage}${usersTeamItem.imgFilePath}${usersTeamItem.imgFileName}',
                                                                      toolTip:
                                                                          usersTeamItem
                                                                              .nameShort!,
                                                                      isAvailable:
                                                                          usersTeamItem
                                                                              .isAvailable!,
                                                                      isOrderVisitIdInProgress:
                                                                          usersTeamItem
                                                                              .isOrderVisitIdInProgress!,
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              1.0,
                                                                              -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            30.0),
                                                                        child:
                                                                            FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              20.0,
                                                                          buttonSize:
                                                                              36.0,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          icon:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.solidStar,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            size:
                                                                                16.0,
                                                                          ),
                                                                          showLoadingIndicator:
                                                                              true,
                                                                          onPressed:
                                                                              () async {
                                                                            await action_blocks.abTeamUsersUpdate(
                                                                              context,
                                                                              abUserSelected: usersTeamItem.id,
                                                                              abOperation: 'remove',
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      usersTeamItem
                                                                          .nameShort,
                                                                      'nameShort',
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
                                              );
                                            } else {
                                              return Container(
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 12.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .cpResultsNoFoundModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const CpResultsNoFoundWidget(
                                                      title: 'Ops ...',
                                                      body:
                                                          'Não há registros de integrantes na sua Equipe.',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                FutureBuilder<List<VUsersRow>>(
                                  future: (_model.requestCompleter4 ??=
                                          Completer<List<VUsersRow>>()
                                            ..complete(VUsersTable().queryRows(
                                              queryFn: (q) => q
                                                  .neq(
                                                    'teamId',
                                                    FFAppState()
                                                        .asUserCurrent
                                                        .teamId,
                                                  )
                                                  .order('nameShort',
                                                      ascending: true),
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VUsersRow>
                                        listViewUsersTeamAvailableVUsersRowList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewUsersTeamAvailableVUsersRowList
                                              .length,
                                      itemBuilder: (context,
                                          listViewUsersTeamAvailableIndex) {
                                        final listViewUsersTeamAvailableVUsersRow =
                                            listViewUsersTeamAvailableVUsersRowList[
                                                listViewUsersTeamAvailableIndex];
                                        return Visibility(
                                          visible: functions.cfSearchResultsFilter(
                                                  _model.cpInputTextModel
                                                      .inputTextController.text,
                                                  listViewUsersTeamAvailableVUsersRow
                                                      .nameShort!) ??
                                              true,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 12.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x32000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
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
                                                                    'Keyuux_${listViewUsersTeamAvailableIndex}_of_${listViewUsersTeamAvailableVUsersRowList.length}'),
                                                                size: 50,
                                                                imgUrl:
                                                                    '${FFAppConstants.appServerUrlStorage}${listViewUsersTeamAvailableVUsersRow.imgFilePath}${listViewUsersTeamAvailableVUsersRow.imgFileName}',
                                                                toolTip:
                                                                    listViewUsersTeamAvailableVUsersRow
                                                                        .nameShort!,
                                                                isAvailable:
                                                                    listViewUsersTeamAvailableVUsersRow
                                                                        .isAvailable!,
                                                                isOrderVisitIdInProgress:
                                                                    listViewUsersTeamAvailableVUsersRow
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
                                                                      listViewUsersTeamAvailableVUsersRow
                                                                          .nameShort,
                                                                      'nameShort',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewUsersTeamAvailableVUsersRow
                                                                            .teamCode,
                                                                        'teamCode',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
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
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 25.0,
                                                            buttonSize: 50.0,
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .star,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                                abUserSelected:
                                                                    listViewUsersTeamAvailableVUsersRow
                                                                        .id,
                                                                abOperation:
                                                                    'add',
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          );
                        } else {
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<List<VOrdersVisitsTeamsRow>>(
                                  future:
                                      (_model.requestCompleter2 ??= Completer<
                                              List<VOrdersVisitsTeamsRow>>()
                                            ..complete(VOrdersVisitsTeamsTable()
                                                .queryRows(
                                              queryFn: (q) => q
                                                  .eq(
                                                    'orderVisitId',
                                                    widget.visitId,
                                                  )
                                                  .neq(
                                                    'userId',
                                                    FFAppState()
                                                        .asUserCurrent
                                                        .id,
                                                  )
                                                  .order('nameShort',
                                                      ascending: true),
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VOrdersVisitsTeamsRow>
                                        containerUsersVisitVOrdersVisitsTeamsRowList =
                                        snapshot.data!;
                                    return Container(
                                      height: 180.0,
                                      constraints: const BoxConstraints(
                                        minHeight: 120.0,
                                        maxHeight: 180.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            if (containerUsersVisitVOrdersVisitsTeamsRowList.isNotEmpty) {
                                              return Builder(
                                                builder: (context) {
                                                  final usersVisitTeam =
                                                      containerUsersVisitVOrdersVisitsTeamsRowList
                                                          .toList();
                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        usersVisitTeam.length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(width: 12.0),
                                                    itemBuilder: (context,
                                                        usersVisitTeamIndex) {
                                                      final usersVisitTeamItem =
                                                          usersVisitTeam[
                                                              usersVisitTeamIndex];
                                                      return Container(
                                                        width: 120.0,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x34090F13),
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: AlignedTooltip(
                                                          content: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child: Text(
                                                                'Remover',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                              )),
                                                          offset: 4.0,
                                                          preferredDirection:
                                                              AxisDirection
                                                                  .down,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          elevation: 4.0,
                                                          tailBaseWidth: 24.0,
                                                          tailLength: 12.0,
                                                          waitDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      100),
                                                          showDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      1500),
                                                          triggerMode:
                                                              TooltipTriggerMode
                                                                  .tap,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    12.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          -1.0),
                                                                  children: [
                                                                    CpUserPicProfileWidget(
                                                                      key: Key(
                                                                          'Key5a0_${usersVisitTeamIndex}_of_${usersVisitTeam.length}'),
                                                                      size: 70,
                                                                      imgUrl:
                                                                          '${FFAppConstants.appServerUrlStorage}${usersVisitTeamItem.imgFilePath}${usersVisitTeamItem.imgFileName}',
                                                                      toolTip:
                                                                          'Users',
                                                                      isAvailable:
                                                                          false,
                                                                      isOrderVisitIdInProgress:
                                                                          false,
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          15.0,
                                                                      buttonSize:
                                                                          30.0,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .error,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .download_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      showLoadingIndicator:
                                                                          true,
                                                                      onPressed:
                                                                          () async {
                                                                        await action_blocks
                                                                            .abTeamUsersUpdate(
                                                                          context,
                                                                          abOrderVisitId:
                                                                              widget.visitId,
                                                                          abUserSelected:
                                                                              usersVisitTeamItem.userId,
                                                                          abOperation:
                                                                              'remove',
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      usersVisitTeamItem
                                                                          .nameShort,
                                                                      'nameShort',
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
                                              );
                                            } else {
                                              return Container(
                                                height: double.infinity,
                                                decoration: const BoxDecoration(),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                FutureBuilder<List<VUsersRow>>(
                                  future: (_model.requestCompleter3 ??=
                                          Completer<List<VUsersRow>>()
                                            ..complete(VUsersTable().queryRows(
                                              queryFn: (q) => q
                                                  .eq(
                                                    'departmentId',
                                                    FFAppState()
                                                        .asUserCurrent
                                                        .departmentId,
                                                  )
                                                  .neq(
                                                    'id',
                                                    FFAppState()
                                                        .asUserCurrent
                                                        .id,
                                                  )
                                                  .is_(
                                                    'orderVisitIdInProgress',
                                                    null,
                                                  )
                                                  .is_(
                                                    'orderVisitIdInProgress',
                                                    null,
                                                  )
                                                  .order('nameShort',
                                                      ascending: true),
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VUsersRow>
                                        listViewUsersVisitAvailableVUsersRowList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewUsersVisitAvailableVUsersRowList
                                              .length,
                                      itemBuilder: (context,
                                          listViewUsersVisitAvailableIndex) {
                                        final listViewUsersVisitAvailableVUsersRow =
                                            listViewUsersVisitAvailableVUsersRowList[
                                                listViewUsersVisitAvailableIndex];
                                        return Visibility(
                                          visible: functions.cfSearchResultsFilter(
                                                  _model.cpInputTextModel
                                                      .inputTextController.text,
                                                  listViewUsersVisitAvailableVUsersRow
                                                      .nameShort!) ??
                                              true,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 12.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x32000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 8.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                                    'Keybrq_${listViewUsersVisitAvailableIndex}_of_${listViewUsersVisitAvailableVUsersRowList.length}'),
                                                                size: 50,
                                                                imgUrl:
                                                                    '${FFAppConstants.appServerUrlStorage}${listViewUsersVisitAvailableVUsersRow.imgFilePath}${listViewUsersVisitAvailableVUsersRow.imgFileName}',
                                                                toolTip:
                                                                    listViewUsersVisitAvailableVUsersRow
                                                                        .nameShort!,
                                                                isAvailable:
                                                                    listViewUsersVisitAvailableVUsersRow
                                                                        .isAvailable!,
                                                                isOrderVisitIdInProgress:
                                                                    listViewUsersVisitAvailableVUsersRow
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
                                                                      listViewUsersVisitAvailableVUsersRow
                                                                          .nameShort,
                                                                      'nameShort',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewUsersVisitAvailableVUsersRow
                                                                            .teamCode,
                                                                        'teamCode',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
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
                                                          if (listViewUsersVisitAvailableVUsersRow
                                                                  .orderVisitInProgressTeamLeaderId !=
                                                              FFAppState()
                                                                  .asUserCurrent
                                                                  .id)
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  25.0,
                                                              buttonSize: 50.0,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .solidStar,
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
                                                                      widget
                                                                          .visitId,
                                                                  abUserSelected:
                                                                      listViewUsersVisitAvailableVUsersRow
                                                                          .id,
                                                                  abOperation:
                                                                      'add',
                                                                );
                                                                setState(() {});
                                                              },
                                                            ),
                                                          if (listViewUsersVisitAvailableVUsersRow
                                                                  .orderVisitInProgressTeamLeaderId ==
                                                              FFAppState()
                                                                  .asUserCurrent
                                                                  .id)
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  25.0,
                                                              buttonSize: 50.0,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .solidStar,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
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
                                                                      widget
                                                                          .visitId,
                                                                  abUserSelected:
                                                                      listViewUsersVisitAvailableVUsersRow
                                                                          .id,
                                                                  abOperation:
                                                                      'add',
                                                                );
                                                                setState(() {});
                                                              },
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
