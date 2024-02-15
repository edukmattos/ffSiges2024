import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_notifications_icon_model.dart';
export 'cp_notifications_icon_model.dart';

class CpNotificationsIconWidget extends StatefulWidget {
  const CpNotificationsIconWidget({super.key});

  @override
  State<CpNotificationsIconWidget> createState() =>
      _CpNotificationsIconWidgetState();
}

class _CpNotificationsIconWidgetState extends State<CpNotificationsIconWidget> {
  late CpNotificationsIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpNotificationsIconModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'usersNotifications',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'usersNotifications',
        () async {
          setState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        },
      );
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

    return Align(
      alignment: const AlignmentDirectional(1.0, 0.0),
      child: FutureBuilder<List<VUsersNotificationsCountRow>>(
        future: (_model.requestCompleter ??=
                Completer<List<VUsersNotificationsCountRow>>()
                  ..complete(VUsersNotificationsCountTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'userIdTo',
                      FFAppState().stUserCurrent.id,
                    ),
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
          List<VUsersNotificationsCountRow>
              containerVUsersNotificationsCountRowList = snapshot.data!;
          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final containerVUsersNotificationsCountRow =
              containerVUsersNotificationsCountRowList.isNotEmpty
                  ? containerVUsersNotificationsCountRowList.first
                  : null;
          return Container(
            decoration: const BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('pgUserNotifications');
              },
              child: badges.Badge(
                badgeContent: Text(
                  containerVUsersNotificationsCountRow!.countUserNotifications!
                      .toString(),
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color:
                            FlutterFlowTheme.of(context).backgroundComponents,
                        fontSize: 12.0,
                      ),
                ),
                showBadge: containerVUsersNotificationsCountRow.countUserNotifications! >
                    0,
                shape: badges.BadgeShape.circle,
                badgeColor: FlutterFlowTheme.of(context).tertiary,
                elevation: 4.0,
                padding: const EdgeInsets.all(8.0),
                position: badges.BadgePosition.topEnd(),
                animationType: badges.BadgeAnimationType.scale,
                toAnimate: true,
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primary,
                  borderRadius: 20.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).accent1,
                  icon: const FaIcon(
                    FontAwesomeIcons.solidBell,
                    color: Color(0xFFF6F6F7),
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
