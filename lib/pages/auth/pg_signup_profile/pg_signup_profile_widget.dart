import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_teams/cp_dropdown_teams_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'pg_signup_profile_model.dart';
export 'pg_signup_profile_model.dart';

class PgSignupProfileWidget extends StatefulWidget {
  const PgSignupProfileWidget({super.key});

  @override
  State<PgSignupProfileWidget> createState() => _PgSignupProfileWidgetState();
}

class _PgSignupProfileWidgetState extends State<PgSignupProfileWidget>
    with TickerProviderStateMixin {
  late PgSignupProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 140.0),
          end: const Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.9, 0.9),
          end: const Offset(1.0, 1.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(-0.349, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgSignupProfileModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).primary,
                FlutterFlowTheme.of(context).accent2
              ],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.87, -1.0),
              end: const AlignmentDirectional(-0.87, 1.0),
            ),
          ),
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 32.0),
                  child: Container(
                    width: 200.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Icon(
                            Icons.flourescent_rounded,
                            color: FlutterFlowTheme.of(context).info,
                            size: 44.0,
                          ),
                        ),
                        Text(
                          'SiGeS',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).info,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 570.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Só mais um pouco ...',
                              style: FlutterFlowTheme.of(context).headlineLarge,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                'Adjust the content below to update your profile.',
                                style: FlutterFlowTheme.of(context).labelLarge,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpInputTextNameFullModel,
                              updateCallback: () => setState(() {}),
                              child: const CpInputTextWidget(
                                labelText: 'Nome completo',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpInputTextNameShortModel,
                              updateCallback: () => setState(() {}),
                              child: const CpInputTextWidget(
                                labelText: 'Apelido',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownTeamsModel,
                              updateCallback: () => setState(() {}),
                              child: const CpDropdownTeamsWidget(
                                hintText: 'Equipe',
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    var shouldSetState = false;
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.cpDropdownTeamsModel
                                            .dropdownTeamsValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Ops ...'),
                                            content:
                                                const Text('Informe a sua Equipe'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    _model.resTeamCurrent =
                                        await ApiTeamsGroup.teamsByIdCall.call(
                                      teamId: _model.cpDropdownTeamsModel
                                          .dropdownTeamsValue,
                                    );
                                    shouldSetState = true;
                                    if ((_model.resTeamCurrent?.succeeded ??
                                        true)) {
                                      if (!isWeb) {
                                        _model.resFcmToken =
                                            await actions.caFcmToken();
                                        shouldSetState = true;
                                      }
                                      await UsersTable().update(
                                        data: {
                                          'nameFull': _model
                                              .cpInputTextNameFullModel
                                              .inputTextController
                                              .text,
                                          'nameShort': _model
                                              .cpInputTextNameShortModel
                                              .inputTextController
                                              .text,
                                          'teamId': _model.cpDropdownTeamsModel
                                              .dropdownTeamsValue,
                                          'departmentId': ApiTeamsGroup
                                              .teamsByIdCall
                                              .departmentId(
                                            (_model.resTeamCurrent?.jsonBody ??
                                                ''),
                                          ),
                                          'fcmToken': _model.resFcmToken,
                                          'teamIdPrevious': _model
                                              .cpDropdownTeamsModel
                                              .dropdownTeamsValue,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          FFAppState().asUserCurrent.id,
                                        ),
                                      );
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Ops ...'),
                                            content:
                                                const Text('Algo deu errado de novo'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }

                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    _model.apiResult2po =
                                        await ApiAuthGroup.authLogoutCall.call(
                                      accessToken: FFAppState()
                                          .asUserCurrent
                                          .accessToken,
                                    );
                                    shouldSetState = true;
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text(
                                              'Legal, a sua conta foi criada !'),
                                          content: const Text(
                                              'Aguarde alguns minutos e você será notificado da Ativação da sua conta.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );

                                    context.pushNamedAuth(
                                        'pgSignin', context.mounted);

                                    if (shouldSetState) setState(() {});
                                  },
                                  text: 'Enviar',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle:
                                        FlutterFlowTheme.of(context).titleSmall,
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
