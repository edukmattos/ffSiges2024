import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_user_available_menu_options_model.dart';
export 'md_user_available_menu_options_model.dart';

class MdUserAvailableMenuOptionsWidget extends StatefulWidget {
  const MdUserAvailableMenuOptionsWidget({
    super.key,
    int? statusId,
    int? orderId,
  })  : statusId = statusId ?? 1,
        orderId = orderId ?? 1;

  final int statusId;
  final int orderId;

  @override
  State<MdUserAvailableMenuOptionsWidget> createState() =>
      _MdUserAvailableMenuOptionsWidgetState();
}

class _MdUserAvailableMenuOptionsWidgetState
    extends State<MdUserAvailableMenuOptionsWidget> {
  late MdUserAvailableMenuOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdUserAvailableMenuOptionsModel());

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
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 25.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  icon: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                width: 500.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          _model.resUsersByTeam = await UsersTable().queryRows(
                            queryFn: (q) => q.eq(
                              'teamId',
                              FFAppState().asUserCurrent.teamId,
                            ),
                          );
                          setState(() {
                            _model.lcsvTeamUsers = _model.resUsersByTeam!
                                .toList()
                                .cast<UsersRow>();
                          });
                          await UsersTable().update(
                            data: {
                              'isAvailable':
                                  !FFAppState().asUserCurrent.isAvailable,
                              'isOrderVisitIdInProgress': false,
                            },
                            matchingRows: (rows) => rows.in_(
                              'id',
                              _model.lcsvTeamUsers.map((e) => e.id).toList(),
                            ),
                          );
                          await action_blocks.abUserUpdate(
                            context,
                            abEmail: FFAppState().asUserCurrent.email,
                            abAccessToken:
                                FFAppState().asUserCurrent.accessToken,
                          );
                          Navigator.pop(context);

                          setState(() {});
                        },
                        text: FFAppState().asUserCurrent.isAvailable
                            ? 'NÃO estou DISPONÍVEL '
                            : 'Estou DISPONÍVEL',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FFAppState().asUserCurrent.isAvailable
                              ? FlutterFlowTheme.of(context).error
                              : FlutterFlowTheme.of(context).tertiary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                          elevation: 4.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 12.0))
                        .addToStart(const SizedBox(height: 12.0))
                        .addToEnd(const SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
