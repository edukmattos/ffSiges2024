import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'md_d_b_admin_team_users_model.dart';
export 'md_d_b_admin_team_users_model.dart';

class MdDBAdminTeamUsersWidget extends StatefulWidget {
  const MdDBAdminTeamUsersWidget({
    super.key,
    int? teamId,
    this.oVIdInProgress,
  }) : teamId = teamId ?? 1;

  final int teamId;
  final int? oVIdInProgress;

  @override
  State<MdDBAdminTeamUsersWidget> createState() =>
      _MdDBAdminTeamUsersWidgetState();
}

class _MdDBAdminTeamUsersWidgetState extends State<MdDBAdminTeamUsersWidget> {
  late MdDBAdminTeamUsersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdDBAdminTeamUsersModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.oVIdInProgress == 0) {
        _model.apiResultgb9 = await ApiUsersGroup.usersByTeamIdCall.call(
          teamId: widget.teamId,
        );
        if ((_model.apiResultgb9?.succeeded ?? true)) {
          setState(() {
            FFAppState().stUsersByTeam = ((_model.apiResultgb9?.jsonBody ?? '')
                    .toList()
                    .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
                    .toList() as Iterable<DtUserStruct?>)
                .withoutNulls
                .toList()
                .cast<DtUserStruct>();
          });
        }
      } else {
        _model.apiResultw98 =
            await ApiUsersGroup.usersByOVIdInProgressCall.call(
          orderVisitIdInProgress: widget.oVIdInProgress,
        );
        if ((_model.apiResultw98?.succeeded ?? true)) {
          setState(() {
            FFAppState().stUsersByTeam = ((_model.apiResultw98?.jsonBody ?? '')
                    .toList()
                    .map<DtUserStruct?>(DtUserStruct.maybeFromMap)
                    .toList() as Iterable<DtUserStruct?>)
                .withoutNulls
                .toList()
                .cast<DtUserStruct>();
          });
        }
      }
    });

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

    return Container(
      height: double.infinity,
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      decoration: const BoxDecoration(
        color: Color(0xB20B191E),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 500.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 12.0, 24.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              'Equipe',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 44.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: Icon(
                                                Icons.close_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      height: 4.0,
                                      thickness: 1.0,
                                      color: Color(0xFFE0E3E7),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final gcTeamUsers = FFAppState()
                                            .stUsersByTeam
                                            .map((e) => e)
                                            .toList();
                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: gcTeamUsers.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 8.0),
                                          itemBuilder:
                                              (context, gcTeamUsersIndex) {
                                            final gcTeamUsersItem =
                                                gcTeamUsers[gcTeamUsersIndex];
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CpUserPicProfileWidget(
                                                  key: Key(
                                                      'Keyacr_${gcTeamUsersIndex}_of_${gcTeamUsers.length}'),
                                                  size: 50,
                                                  imgUrl:
                                                      '${FFAppConstants.appServerUrlStorage}${gcTeamUsersItem.imgFilePath}${gcTeamUsersItem.imgFileName}',
                                                  toolTip:
                                                      gcTeamUsersItem.nameShort,
                                                  isAvailable: gcTeamUsersItem
                                                      .isAvailable,
                                                  isOrderVisitIdInProgress:
                                                      gcTeamUsersItem
                                                          .isOrderVisitIdInProgress,
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          gcTeamUsersItem
                                                              .nameFull,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            gcTeamUsersItem
                                                                .teamCode,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 8.0))
                                      .addToEnd(const SizedBox(height: 32.0)),
                                ),
                              ),
                            ].addToEnd(const SizedBox(height: 32.0)),
                          ),
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
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
