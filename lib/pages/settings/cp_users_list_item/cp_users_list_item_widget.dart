import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_users_list_item_model.dart';
export 'cp_users_list_item_model.dart';

class CpUsersListItemWidget extends StatefulWidget {
  const CpUsersListItemWidget({
    super.key,
    required this.userId,
  });

  final int? userId;

  @override
  State<CpUsersListItemWidget> createState() => _CpUsersListItemWidgetState();
}

class _CpUsersListItemWidgetState extends State<CpUsersListItemWidget> {
  late CpUsersListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpUsersListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: FutureBuilder<List<VUsersRow>>(
        future: (_model.requestCompleter ??= Completer<List<VUsersRow>>()
              ..complete(VUsersTable().querySingleRow(
                queryFn: (q) => q
                    .eq(
                      'id',
                      widget.userId,
                    )
                    .order('nameFull', ascending: true),
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
          final containerVUsersRow = containerVUsersRowList.isNotEmpty
              ? containerVUsersRowList.first
              : null;
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: wrapWithModel(
                              model: _model.cpUserPicProfileModel,
                              updateCallback: () => setState(() {}),
                              child: CpUserPicProfileWidget(
                                size: 60,
                                imgUrl:
                                    '${FFAppConstants.appServerUrlStorage}${containerVUsersRow?.imgFilePath}${containerVUsersRow?.imgFileName}',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  containerVUsersRow?.nameFull,
                                  'mane_full',
                                ),
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                              Text(
                                containerVUsersRow!.email!,
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerVUsersRow.teamCode,
                                  'teamCode',
                                ),
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AlignedTooltip(
                            content: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Líder',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                )),
                            offset: 4.0,
                            preferredDirection: AxisDirection.down,
                            borderRadius: BorderRadius.circular(8.0),
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 4.0,
                            tailBaseWidth: 24.0,
                            tailLength: 12.0,
                            waitDuration: const Duration(milliseconds: 100),
                            showDuration: const Duration(milliseconds: 1500),
                            triggerMode: TooltipTriggerMode.tap,
                            child: Switch.adaptive(
                              value: _model.switchValue ??=
                                  containerVUsersRow.isTeamLeader!,
                              onChanged: (containerVUsersRow.statusId != 2)
                                  ? null
                                  : (newValue) async {
                                      setState(
                                          () => _model.switchValue = newValue);
                                      if (newValue) {
                                        setState(() {
                                          FFAppState().stUsersLeadersByTeam =
                                              [];
                                        });
                                        _model.resUsersLeadersTeamSelected =
                                            await ApiUsersGroup
                                                .usersLeaderByTeamIdCall
                                                .call(
                                          teamId: containerVUsersRow.teamId,
                                        );
                                        setState(() {
                                          FFAppState().stUsersLeadersByTeam =
                                              (getJsonField(
                                            (_model.resUsersLeadersTeamSelected
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$''',
                                            true,
                                          )!
                                                          .toList()
                                                          .map<DtUserLeaderByTeamStruct?>(
                                                              DtUserLeaderByTeamStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          DtUserLeaderByTeamStruct?>)
                                                  .withoutNulls
                                                  .toList()
                                                  .cast<
                                                      DtUserLeaderByTeamStruct>();
                                        });
                                        setState(() {
                                          FFAppState().stCounterLoop = 1;
                                          FFAppState().stCounterLoopFinal =
                                              FFAppState()
                                                  .stUsersLeadersByTeam
                                                  .length;
                                        });
                                        while (FFAppState().stCounterLoop <=
                                            FFAppState().stCounterLoopFinal) {
                                          await UsersTable().update(
                                            data: {
                                              'isTeamLeader': false,
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'id',
                                              FFAppState()
                                                  .stUsersLeadersByTeam[
                                                      FFAppState()
                                                              .stCounterLoop -
                                                          1]
                                                  .id,
                                            ),
                                          );
                                          setState(() {
                                            FFAppState().stCounterLoop =
                                                FFAppState().stCounterLoop + 1;
                                          });
                                        }
                                        await UsersTable().update(
                                          data: {
                                            'isTeamLeader': true,
                                          },
                                          matchingRows: (rows) => rows.eq(
                                            'id',
                                            widget.userId,
                                          ),
                                        );

                                        setState(() {});
                                      } else {
                                        await UsersTable().update(
                                          data: {
                                            'isTeamLeader': false,
                                          },
                                          matchingRows: (rows) => rows.eq(
                                            'id',
                                            widget.userId,
                                          ),
                                        );
                                        setState(() =>
                                            _model.requestCompleter = null);
                                        await _model.waitForRequestCompleted();
                                      }
                                    },
                              activeColor: Colors.green,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              inactiveThumbColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.rectangle,
                          ),
                          child: Builder(
                            builder: (context) {
                              if (containerVUsersRow.statusId == 1) {
                                return FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).success,
                                  icon: Icon(
                                    Icons.thumb_up,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title:
                                                      const Text('Ativação de Conta'),
                                                  content: const Text(
                                                      'Deseja realmente Ativar ?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancelar'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text('Confirmar'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await UsersTable().update(
                                        data: {
                                          'statusId': 2,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          containerVUsersRow.id,
                                        ),
                                      );
                                      await action_blocks
                                          .abUsersNotificationsSend(
                                        context,
                                        abType: 'AccountActivated',
                                        abTitle: 'Conta ATIVADA !',
                                        abBody:
                                            'Agora vc já pode acessar a sua conta no Siges.',
                                        abUserIdFrom:
                                            FFAppState().asUserCurrent.id,
                                        abUserIdTo: containerVUsersRow.id,
                                      );
                                    }
                                  },
                                );
                              } else if (containerVUsersRow.statusId == 3) {
                                return FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).success,
                                  icon: Icon(
                                    Icons.thumb_up,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title:
                                                      const Text('Ativação de Conta'),
                                                  content: const Text(
                                                      'Deseja realmente Ativar ?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancelar'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text('Confirmar'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await UsersTable().update(
                                        data: {
                                          'statusId': 2,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          containerVUsersRow.id,
                                        ),
                                      );
                                      await action_blocks
                                          .abUsersNotificationsSend(
                                        context,
                                        abType: 'AccountActivated',
                                        abTitle: 'Conta ATIVADA !',
                                        abBody:
                                            'Agora vc já pode acessar a sua conta no Siges.',
                                        abUserIdFrom:
                                            FFAppState().asUserCurrent.id,
                                        abUserIdTo: containerVUsersRow.id,
                                      );
                                    }
                                  },
                                );
                              } else {
                                return FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  fillColor: FlutterFlowTheme.of(context).error,
                                  icon: Icon(
                                    Icons.thumb_down,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title:
                                                      const Text('Ativação de Conta'),
                                                  content: const Text(
                                                      'Deseja realmente DESAtivar ?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancelar'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text('Confirmar'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await UsersTable().update(
                                        data: {
                                          'statusId': 3,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          containerVUsersRow.id,
                                        ),
                                      );
                                    }
                                  },
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
