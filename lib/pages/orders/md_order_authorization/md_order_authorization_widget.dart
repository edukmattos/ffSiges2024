import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_leader_teams_selected/cp_dropdown_leader_teams_selected_widget.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'md_order_authorization_model.dart';
export 'md_order_authorization_model.dart';

class MdOrderAuthorizationWidget extends StatefulWidget {
  const MdOrderAuthorizationWidget({super.key});

  @override
  State<MdOrderAuthorizationWidget> createState() =>
      _MdOrderAuthorizationWidgetState();
}

class _MdOrderAuthorizationWidgetState extends State<MdOrderAuthorizationWidget>
    with TickerProviderStateMixin {
  late MdOrderAuthorizationModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOrderAuthorizationModel());

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
                    width: 600.0,
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
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              'Autorização',
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
                                              borderRadius: 25.0,
                                              borderWidth: 1.0,
                                              buttonSize: 50.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: Icon(
                                                Icons.close_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 30.0,
                                              ),
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        height: 4.0,
                                        thickness: 1.0,
                                        color: Color(0xFFE0E3E7),
                                      ),
                                      Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.always,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2.0,
                                                                  0.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Text(
                                                        'Equipe responsável',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation1']!),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .cpDropdownTeamsDepartmentModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      updateOnChange: true,
                                                      child:
                                                          CpDropdownTeamsDepartmentWidget(
                                                        departmentId: FFAppState()
                                                            .stContractSelected
                                                            .first
                                                            .providerDepartmentId,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Text(
                                                          'Líder',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'textOnPageLoadAnimation2']!),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .cpDropdownLeaderTeamsSelectedModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            CpDropdownLeaderTeamsSelectedWidget(
                                                          teamId: _model
                                                              .cpDropdownTeamsDepartmentModel
                                                              .dropdownTeamsDepartmentValue,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 12.0)),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await OrdersTable().update(
                                                    data: {
                                                      'teamId': _model
                                                          .cpDropdownTeamsDepartmentModel
                                                          .dropdownTeamsDepartmentValue,
                                                      'teamLeaderId': _model
                                                          .cpDropdownLeaderTeamsSelectedModel
                                                          .dropdownLeaderTeamsSelectedValue,
                                                      'statusId': 3,
                                                      'statusDate': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eq(
                                                      'id',
                                                      FFAppState()
                                                          .stOSelected
                                                          .first
                                                          .id,
                                                    ),
                                                  );
                                                  await action_blocks
                                                      .abOrderSelected(
                                                    context,
                                                    abOrderId: FFAppState()
                                                        .stOSelected
                                                        .first
                                                        .id,
                                                  );
                                                  await action_blocks
                                                      .abOrderParentSelected(
                                                    context,
                                                    abOrderId: FFAppState()
                                                        .stOSelected
                                                        .first
                                                        .parentId,
                                                  );
                                                  if (FFAppState()
                                                          .stOPSelected
                                                          .first
                                                          .statusId ==
                                                      2) {
                                                    await OrdersTable().update(
                                                      data: {
                                                        'statusId': 3,
                                                        'statusDate': supaSerialize<
                                                                DateTime>(
                                                            getCurrentTimestamp),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'id',
                                                        FFAppState()
                                                            .stOPSelected
                                                            .first
                                                            .id,
                                                      ),
                                                    );
                                                    unawaited(
                                                      () async {
                                                        await OrdersStatusesLogsTable()
                                                            .insert({
                                                          'orderParentId':
                                                              FFAppState()
                                                                  .stOPSelected
                                                                  .first
                                                                  .id,
                                                          'orderStatusId': 3,
                                                          'orderStatusDate':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                          'createdUserId':
                                                              FFAppState()
                                                                  .asUserCurrent
                                                                  .id,
                                                          'createdDate':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                          'companyId':
                                                              FFAppState()
                                                                  .asUserCurrent
                                                                  .id,
                                                          'departmentId': 1,
                                                        });
                                                      }(),
                                                    );
                                                  }
                                                  await action_blocks
                                                      .abUsersNotificationsSend(
                                                    context,
                                                    abType: 'orderAuthorized',
                                                    abTitle:
                                                        'Serviço Autorizado',
                                                    abBody:
                                                        'OS ${FFAppState().stOSelected.first.orderMask}\\n${FFAppState().stOPSelected.first.unitDescription}\\n${FFAppState().stOSelected.first.requestedServices}',
                                                    abUserIdFrom: FFAppState()
                                                        .asUserCurrent
                                                        .id,
                                                    abUserIdTo: _model
                                                        .cpDropdownLeaderTeamsSelectedModel
                                                        .dropdownLeaderTeamsSelectedValue,
                                                    abOrderId: FFAppState()
                                                        .stOSelected
                                                        .first
                                                        .id,
                                                  );
                                                  await action_blocks
                                                      .abOrderParentEvents(
                                                    context,
                                                    abOrderParentId:
                                                        FFAppState()
                                                            .stOPSelected
                                                            .first
                                                            .id,
                                                    abTitle:
                                                        'OS ${FFAppState().stOSelected.first.orderMask}: Autorizada.',
                                                    abBody:
                                                        '${FFAppState().stOPSelected.first.unitDescription}\\n${FFAppState().stOSelected.first.requestedServices}',
                                                  );
                                                  Navigator.pop(context);

                                                  context.pushNamed(
                                                    'pgOrderShow',
                                                    queryParameters: {
                                                      'orderId': serializeParam(
                                                        FFAppState()
                                                            .stOSelected
                                                            .first
                                                            .id,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );

                                                  setState(() {});
                                                },
                                                text: 'Confirmar',
                                                options: FFButtonOptions(
                                                  height: 46.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 12.0))
                                              .addToEnd(const SizedBox(height: 24.0)),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 12.0)),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 6.0)),
            ),
          ),
        ),
      ),
    );
  }
}
