import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';

Future abFcmToken(BuildContext context) async {
  String? resFcmTokem;

  if (!isWeb) {
    resFcmTokem = await actions.caFcmToken();
    await UsersTable().update(
      data: {
        'fcmToken': resFcmTokem,
      },
      matchingRows: (rows) => rows.eq(
        'id',
        FFAppState().stUserCurrent.id,
      ),
    );
  }
}

Future abUserUpdate(
  BuildContext context, {
  required String? abEmail,
  required String? abAccessToken,
}) async {
  ApiCallResponse? resUserCurrent;

  resUserCurrent = await ApiUsersGroup.userByEmailCall.call(
    email: abEmail,
  );
  FFAppState().stUserCurrent = DtUserStruct(
    id: ApiUsersGroup.userByEmailCall.id(
      (resUserCurrent.jsonBody ?? ''),
    ),
    uid: ApiUsersGroup.userByEmailCall.uid(
      (resUserCurrent.jsonBody ?? ''),
    ),
    nameFull: ApiUsersGroup.userByEmailCall.nameFull(
      (resUserCurrent.jsonBody ?? ''),
    ),
    nameShort: ApiUsersGroup.userByEmailCall.nameShort(
      (resUserCurrent.jsonBody ?? ''),
    ),
    email: abEmail,
    statusId: ApiUsersGroup.userByEmailCall.statusId(
      (resUserCurrent.jsonBody ?? ''),
    ),
    companyId: ApiUsersGroup.userByEmailCall.companyId(
      (resUserCurrent.jsonBody ?? ''),
    ),
    companyCode: ApiUsersGroup.userByEmailCall.companyCode(
      (resUserCurrent.jsonBody ?? ''),
    ),
    companyDescription: ApiUsersGroup.userByEmailCall.companyDescription(
      (resUserCurrent.jsonBody ?? ''),
    ),
    departmentId: ApiUsersGroup.userByEmailCall.departmentId(
      (resUserCurrent.jsonBody ?? ''),
    ),
    departmentCode: ApiUsersGroup.userByEmailCall.departmentCode(
      (resUserCurrent.jsonBody ?? ''),
    ),
    departmentDescription: ApiUsersGroup.userByEmailCall.departmentDescription(
      (resUserCurrent.jsonBody ?? ''),
    ),
    teamId: ApiUsersGroup.userByEmailCall.teamId(
      (resUserCurrent.jsonBody ?? ''),
    ),
    teamCode: ApiUsersGroup.userByEmailCall.teamCode(
      (resUserCurrent.jsonBody ?? ''),
    ),
    isAdmin: ApiUsersGroup.userByEmailCall.isAdmin(
      (resUserCurrent.jsonBody ?? ''),
    ),
    isAdminSuper: ApiUsersGroup.userByEmailCall.isAdminSuper(
      (resUserCurrent.jsonBody ?? ''),
    ),
    appVersion: ApiUsersGroup.userByEmailCall
        .appVersion(
          (resUserCurrent.jsonBody ?? ''),
        )
        .toString(),
    imgFilePath: ApiUsersGroup.userByEmailCall.imgFilePath(
      (resUserCurrent.jsonBody ?? ''),
    ),
    imgFileName: ApiUsersGroup.userByEmailCall.imgFileName(
      (resUserCurrent.jsonBody ?? ''),
    ),
    companyImgFilePath: ApiUsersGroup.userByEmailCall.companyImgFilePath(
      (resUserCurrent.jsonBody ?? ''),
    ),
    companyImgFileName: ApiUsersGroup.userByEmailCall.companyImgFileName(
      (resUserCurrent.jsonBody ?? ''),
    ),
    orderVisitIdInProgress:
        ApiUsersGroup.userByEmailCall.orderVisitIdInProgress(
      (resUserCurrent.jsonBody ?? ''),
    ),
    orderIdInProgress: ApiUsersGroup.userByEmailCall.orderIdInProgress(
      (resUserCurrent.jsonBody ?? ''),
    ),
    orderParentIdInProgress:
        ApiUsersGroup.userByEmailCall.orderParentIdInProgress(
      (resUserCurrent.jsonBody ?? ''),
    ),
    teamIdPrevious: ApiUsersGroup.userByEmailCall.teamIdPrevious(
      (resUserCurrent.jsonBody ?? ''),
    ),
    isTeamLeader: ApiUsersGroup.userByEmailCall.isTeamLeader(
      (resUserCurrent.jsonBody ?? ''),
    ),
    orderVisitInProgressTeamLeaderId:
        ApiUsersGroup.userByEmailCall.orderVisitInProgressTeamLeaderId(
      (resUserCurrent.jsonBody ?? ''),
    ),
    profileId: ApiUsersGroup.userByEmailCall.profileId(
      (resUserCurrent.jsonBody ?? ''),
    ),
  );
}

Future abUsersNotificationsSend(
  BuildContext context, {
  required String? abType,
  required String? abTitle,
  required String? abBody,
  required int? abUserIdFrom,
  required int? abUserIdTo,
  String? abImgUrl,
  int? abOrderId,
}) async {
  ApiCallResponse? resUserIdTo;
  ApiCallResponse? apiResultaht;
  ApiCallResponse? apiResultaht112;
  ApiCallResponse? apiResultaht1121;

  resUserIdTo = await ApiUsersGroup.userByIdCall.call(
    userId: abUserIdTo,
  );
  if (abType == 'AccountActivated') {
    apiResultaht = await ApiFcmNotificationsGroup.sendNotificationCall.call(
      title: abTitle,
      body: abBody,
      fcmToken: ApiUsersGroup.userByIdCall
          .fcmToken(
            (resUserIdTo.jsonBody ?? ''),
          )
          .toString(),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Usuário notificado.',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  } else {
    if (abType == 'orderScheduled') {
      apiResultaht112 =
          await ApiFcmNotificationsGroup.sendNotificationCall.call(
        title: abTitle,
        body: abBody,
        fcmToken: ApiUsersGroup.userByIdCall
            .fcmToken(
              (resUserIdTo.jsonBody ?? ''),
            )
            .toString(),
      );
      await UsersNotificationsTable().insert({
        'createdDate': supaSerialize<DateTime>(getCurrentTimestamp),
        'userIdTo': abUserIdTo,
        'userIdFrom': abUserIdFrom,
        'title': abTitle,
        'body': abBody,
        'isRead': false,
        'type': abType,
        'orderId': abOrderId,
        'companyId': FFAppState().stUserCurrent.companyId,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Usuário notificado.',
            style: TextStyle(),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    } else {
      if (abType == 'orderFollowers') {
        apiResultaht1121 =
            await ApiFcmNotificationsGroup.sendNotificationCall.call(
          title: abTitle,
          body: abBody,
          fcmToken: ApiUsersGroup.userByIdCall
              .fcmToken(
                (resUserIdTo.jsonBody ?? ''),
              )
              .toString(),
        );
      }
    }
  }
}

Future<int> abChoicesOrdersPrioritiesId(
  BuildContext context, {
  required String? abPriorityDescription,
}) async {
  if (abPriorityDescription == 'Alta') {
    return 1;
  }

  if (abPriorityDescription == 'Média') {
    return 2;
  }

  if (abPriorityDescription == 'Baixa') {
    return 3;
  }

  return 0;
}

Future abTeamUsersUpdate(
  BuildContext context, {
  int? abVisitId,
  required int? abUserSelected,
  required String? abOperation,
}) async {
  ApiCallResponse? resUserSelected;
  OrdersVisitsTeamsRow? resOrderTeamAdded;

  resUserSelected = await ApiUsersGroup.userByIdCall.call(
    userId: abUserSelected,
  );
  if ((resUserSelected.succeeded ?? true)) {
    FFAppState().stTeamUserSelected = DtUserStruct(
      id: abUserSelected,
      teamId: ApiUsersGroup.userByIdCall.teamId(
        (resUserSelected.jsonBody ?? ''),
      ),
      teamIdPrevious: ApiUsersGroup.userByIdCall.teamIdPrevious(
        (resUserSelected.jsonBody ?? ''),
      ),
    );
    if (abVisitId != null) {
      if (abOperation == 'add') {
        resOrderTeamAdded = await OrdersVisitsTeamsTable().insert({
          'visitId': abVisitId,
          'userId': FFAppState().stTeamUserSelected.id,
          'isLeader': false,
          'orderParentId': FFAppState().stUserCurrent.orderParentIdInProgress,
          'orderId': FFAppState().stUserCurrent.orderIdInProgress,
        });
        await UsersTable().update(
          data: {
            'orderParentIdInProgress':
                FFAppState().stUserCurrent.orderParentIdInProgress,
            'orderIdInProgress': FFAppState().stUserCurrent.orderIdInProgress,
            'orderVisitIdInProgress':
                FFAppState().stUserCurrent.orderVisitIdInProgress,
            'orderVisitInProgressTeamLeaderId': FFAppState().stUserCurrent.id,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stTeamUserSelected.id,
          ),
        );
      } else {
        await OrdersVisitsTeamsTable().delete(
          matchingRows: (rows) => rows
              .eq(
                'visitId',
                FFAppState().stUserCurrent.orderVisitIdInProgress,
              )
              .eq(
                'userId',
                FFAppState().stTeamUserSelected.id,
              ),
        );
        await UsersTable().update(
          data: {
            'orderParentIdInProgress': null,
            'orderIdInProgress': null,
            'orderVisitIdInProgress': null,
            'orderVisitInProgressTeamLeaderId': null,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stTeamUserSelected.id,
          ),
        );
      }
    } else {
      if (abOperation == 'add') {
        await UsersTable().update(
          data: {
            'teamIdPrevious': FFAppState().stTeamUserSelected.teamId,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stTeamUserSelected.id,
          ),
        );
        await UsersTable().update(
          data: {
            'teamId': FFAppState().stUserCurrent.teamId,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stTeamUserSelected.id,
          ),
        );
      } else {
        await UsersTable().update(
          data: {
            'teamId': FFAppState().stTeamUserSelected.teamIdPrevious,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stTeamUserSelected.id,
          ),
        );
        await UsersTable().update(
          data: {
            'teamIdPrevious': FFAppState().stUserCurrent.teamId,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stTeamUserSelected.id,
          ),
        );
      }
    }

    FFAppState().stTeamUserSelected = DtUserStruct();
  }
}

Future abOrderSelected(
  BuildContext context, {
  required int? abOrderId,
}) async {
  ApiCallResponse? resOrderSelected;

  resOrderSelected = await ApiOrdersGroup.orderByIdCall.call(
    orderId: abOrderId,
  );
  if ((resOrderSelected.succeeded ?? true)) {
    FFAppState().stOrderSelected = ((resOrderSelected.jsonBody ?? '')
            .toList()
            .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderStruct>();
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('Ops ...'),
          content: const Text(
              'Não foi possivel identificar a OS associada a esta Visita.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

Future abOrderVisitSelected(
  BuildContext context, {
  required int? abOrderVisitId,
}) async {
  ApiCallResponse? resOrderVisitSelected;

  resOrderVisitSelected = await ApiOrdersVisitsGroup.orderVisitByIdCall.call(
    orderVisitId: abOrderVisitId,
  );
  if ((resOrderVisitSelected.succeeded ?? true)) {
    FFAppState().stOrderVisitSelected = ((resOrderVisitSelected.jsonBody ?? '')
            .toList()
            .map<DtVOrderVisitStruct?>(DtVOrderVisitStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderVisitStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderVisitStruct>();
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().stOrderVisitSelected.length;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState()
                  .stOrderVisitSelected[FFAppState().stCounterLoop]
                  .dateStart !=
              '') {
        FFAppState().updateStOrderVisitSelectedAtIndex(
          FFAppState().stCounterLoop,
          (e) => e
            ..dateStartDatetime = functions.cfConvDateStringToDatetime(
                FFAppState()
                    .stOrderVisitSelected[FFAppState().stCounterLoop]
                    .dateStart),
        );
      } else {
        if (FFAppState()
                    .stOrderVisitSelected[FFAppState().stCounterLoop]
                    .dateEnd !=
                '') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('1'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Confirm'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          FFAppState().updateStOrderVisitSelectedAtIndex(
            FFAppState().stCounterLoop,
            (e) => e
              ..dateEndDatetime = functions.cfConvDateStringToDatetime(
                  FFAppState()
                      .stOrderVisitSelected[FFAppState().stCounterLoop]
                      .dateEnd),
          );
          confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('dateEndDatetime'),
                    content: Text(FFAppState()
                        .stOrderVisitSelected[FFAppState().stCounterLoop]
                        .dateEndDatetime!
                        .toString()),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Confirm'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
        } else {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('2'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Confirm'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
        }
      }

      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('2222'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

Future abAssetSelected(
  BuildContext context, {
  required int? abAssetId,
}) async {
  ApiCallResponse? resAssetSelected101;

  resAssetSelected101 = await ApiAssetsGroup.assetByIdCall.call(
    assetId: abAssetId,
  );
  if ((resAssetSelected101.succeeded ?? true)) {
    FFAppState().stAssetSeleted = ((resAssetSelected101.jsonBody ?? '')
            .toList()
            .map<DtVAssetStruct?>(DtVAssetStruct.maybeFromMap)
            .toList() as Iterable<DtVAssetStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVAssetStruct>();
  }
}

Future abOrderVisitAssetSelected(
  BuildContext context, {
  required int? abOrderVisitAssetId,
}) async {
  ApiCallResponse? resOrderVisitAssetSelected;

  resOrderVisitAssetSelected =
      await ApiOrdersVisitsAssetsGroup.orderVisitAssetByIdCall.call(
    orderVisitAssetId: abOrderVisitAssetId,
  );
  if ((resOrderVisitAssetSelected.succeeded ?? true)) {
    FFAppState().stOrderVisitAssetSelected =
        ((resOrderVisitAssetSelected.jsonBody ?? '')
                .toList()
                .map<DtVOrderVisitAssetsStruct?>(
                    DtVOrderVisitAssetsStruct.maybeFromMap)
                .toList() as Iterable<DtVOrderVisitAssetsStruct?>)
            .withoutNulls
            .toList()
            .cast<DtVOrderVisitAssetsStruct>();
  }
}

Future abOrderParentSelected(
  BuildContext context, {
  required int? abOrderId,
}) async {
  ApiCallResponse? resOrderParentSelected;

  resOrderParentSelected = await ApiOrdersGroup.orderByIdCall.call(
    orderId: abOrderId,
  );
  if ((resOrderParentSelected.succeeded ?? true)) {
    FFAppState().stOrderParentSelected =
        ((resOrderParentSelected.jsonBody ?? '')
                .toList()
                .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
                .toList() as Iterable<DtVOrderStruct?>)
            .withoutNulls
            .toList()
            .cast<DtVOrderStruct>();
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('22'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

Future abOrderParentEvents(
  BuildContext context, {
  required int? abOrderParentId,
  required String? abTitle,
  required String? abBody,
}) async {
  ApiCallResponse? resOrderParentSelected111;

  resOrderParentSelected111 =
      await ApiOrdersFollowersGroup.followersByOrderIdCall.call(
    orderId: abOrderParentId,
  );
  if ((resOrderParentSelected111.succeeded ?? true)) {
    FFAppState().stOrdersFollowers = ((resOrderParentSelected111.jsonBody ??
                '')
            .toList()
            .map<DtVOrderFollowerStruct?>(DtVOrderFollowerStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderFollowerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderFollowerStruct>();
    FFAppState().stCounterLoop = 1;
    FFAppState().stCounterLoopFinal = FFAppState().stOrdersFollowers.length;
    while (FFAppState().stCounterLoop <= FFAppState().stCounterLoopFinal) {
      await action_blocks.abUsersNotificationsSend(
        context,
        abType: 'orderFollowers',
        abTitle: abTitle,
        abBody: abBody,
        abUserIdFrom: FFAppState().stUserCurrent.id,
        abUserIdTo: FFAppState()
            .stOrdersFollowers[FFAppState().stCounterLoop - 1]
            .userId,
        abOrderId: abOrderParentId,
      );
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  }
}

Future abOrderVisitProcessingCheck(
  BuildContext context, {
  required int? abOrderVisitId,
}) async {
  ApiCallResponse? apiResultojo;

  await action_blocks.abOrderVisitSelected(
    context,
    abOrderVisitId: abOrderVisitId,
  );
  apiResultojo = await ApiOrdersVisitsAssetsGroup.assetsByOrderVisitIdCall.call(
    orderVisitId: abOrderVisitId,
  );
  if ((apiResultojo.succeeded ?? true)) {
    FFAppState().stOrderVisitAssets = [];
    FFAppState().stOrderVisitAssets = ((apiResultojo.jsonBody ?? '')
            .toList()
            .map<DtVOrderVisitAssetsStruct?>(
                DtVOrderVisitAssetsStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderVisitAssetsStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderVisitAssetsStruct>();
    FFAppState().stCounterLoop = 1;
    FFAppState().stCounterLoopFinal = valueOrDefault<int>(
      FFAppState().stOrderVisitAssets.length,
      0,
    );
    FFAppState().stOrderVisitAssetsDraftAmount = 0;
    FFAppState().stOrderVisitAssetsReportedAmount = 0;
    FFAppState().stOrdervisitAssetsDisapprovedAmount = 0;
    FFAppState().stOrderVisitAssetsApprovedAmount = 0;
    while (FFAppState().stCounterLoop <= FFAppState().stCounterLoopFinal) {
      if (FFAppState()
              .stOrderVisitAssets[FFAppState().stCounterLoop - 1]
              .processingId ==
          1) {
        FFAppState().stOrderVisitAssetsDraftAmount =
            FFAppState().stOrderVisitAssetsDraftAmount + 1;
      } else {
        if (FFAppState()
                .stOrderVisitAssets[FFAppState().stCounterLoop - 1]
                .processingId ==
            2) {
          FFAppState().stOrderVisitAssetsReportedAmount =
              FFAppState().stOrderVisitAssetsReportedAmount + 1;
        } else {
          if (FFAppState()
                  .stOrderVisitAssets[FFAppState().stCounterLoop - 1]
                  .processingId ==
              3) {
            FFAppState().stOrdervisitAssetsDisapprovedAmount =
                FFAppState().stOrdervisitAssetsDisapprovedAmount + 1;
          } else {
            if (FFAppState()
                    .stOrderVisitAssets[FFAppState().stCounterLoop - 1]
                    .processingId ==
                4) {
              FFAppState().stOrderVisitAssetsApprovedAmount =
                  FFAppState().stOrderVisitAssetsApprovedAmount + 1;
            }
          }
        }
      }

      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
    await OrdersVisitsTable().update(
      data: {
        'orderVisitAssetsAmount': FFAppState().stCounterLoopFinal,
        'orderVisitAssetsDraftAmount':
            FFAppState().stOrderVisitAssetsDraftAmount,
        'orderVisitAssetsReportedAmount':
            FFAppState().stOrderVisitAssetsReportedAmount,
        'orderVisitAssetsDisapprovedAmount':
            FFAppState().stOrdervisitAssetsDisapprovedAmount,
        'orderVisitAssetsApprovedAmount':
            FFAppState().stOrderVisitAssetsApprovedAmount,
      },
      matchingRows: (rows) => rows.eq(
        'id',
        valueOrDefault<int>(
          FFAppState().stOrderVisitSelected.first.id,
          1,
        ),
      ),
    );
    if (FFAppState().stOrderVisitSelected.first.statusId == 2) {
      if ((FFAppState().stCounterLoopFinal ==
              FFAppState().stOrderVisitAssetsReportedAmount) &&
          (FFAppState().stOrderVisitSelected.first.processingId != 2) &&
          (FFAppState().stCounterLoopFinal > 0)) {
        var confirmDialogResponse = await showDialog<bool>(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: const Text('Reportar VISITA ?'),
                  content: const Text('TODAS atividades estão reportadas.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, false),
                      child: const Text('Cancelar'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, true),
                      child: const Text('Confirmar'),
                    ),
                  ],
                );
              },
            ) ??
            false;
        if (confirmDialogResponse) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Visita'),
                content: const Text('Reportada com sucesso.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
          await OrdersVisitsTable().update(
            data: {
              'processingId': 2,
              'reportedDate': supaSerialize<DateTime>(getCurrentTimestamp),
              'reportedUserId': FFAppState().stUserCurrent.id,
            },
            matchingRows: (rows) => rows.eq(
              'id',
              valueOrDefault<int>(
                FFAppState().stOrderVisitSelected.first.id,
                1,
              ),
            ),
          );
        }
      }
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('Ops ...'),
          content: const Text(
              'Não foi possível verificar a situação do processamento desta visita.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

Future<bool> abOrderVisitAssetIsExist(
  BuildContext context, {
  required int? abOrderVisitId,
  required int? abAssetId,
}) async {
  ApiCallResponse? resOrderVisitAssetCheck;

  resOrderVisitAssetCheck =
      await ApiOrdersVisitsAssetsGroup.idByvisitIdNassetIdCall.call(
    orderVisitId: valueOrDefault<int>(
      FFAppState().stOrderVisitSelected.first.id,
      1,
    ),
    assetId: FFAppState().stAssetSeleted.first.id,
  );
  if (ApiOrdersVisitsAssetsGroup.idByvisitIdNassetIdCall.id(
        (resOrderVisitAssetCheck.jsonBody ?? ''),
      ) ==
      null) {
    return false;
  }

  if (ApiOrdersVisitsAssetsGroup.idByvisitIdNassetIdCall.id(
        (resOrderVisitAssetCheck.jsonBody ?? ''),
      )! >
      0) {
    return true;
  }

  return false;
}

Future abPermissionCheck(
  BuildContext context, {
  required int? abAppPageId,
  required int? abUserProfileId,
}) async {
  ApiCallResponse? apiResultdcs;

  if (FFAppState().stUserCurrent.isAdminSuper) {
    FFAppState().stIsPermission = true;
    return;
  } else {
    if (FFAppState().stUserCurrent.isAdmin) {
      FFAppState().stIsPermission = true;
      return;
    } else {
      apiResultdcs = await ApiProfilesPermissionsGroup.isPermissionCall.call(
        profileId: abUserProfileId,
        appPageId: abAppPageId,
      );
      if ((apiResultdcs.succeeded ?? true)) {
        if (ApiProfilesPermissionsGroup.isPermissionCall.isPermission(
              (apiResultdcs.jsonBody ?? ''),
            ) ==
            true) {
          FFAppState().stIsPermission = true;
        } else {
          FFAppState().stIsPermission = false;
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Ops ...'),
                content: const Text('O seu perfil não possui permissão de acesso.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
          return;
        }
      } else {
        FFAppState().stIsPermission = false;
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: const Text('Ops ...'),
              content: const Text('O seu perfil não possui permissão de acesso.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
        return;
      }
    }
  }
}

Future<int> abChoicesOrdersStatuses(
  BuildContext context, {
  String? abOrderStatusDescprition,
}) async {
  if (abOrderStatusDescprition == 'Avaliação') {
    return 1;
  }

  if (abOrderStatusDescprition == 'Autorizada') {
    return 2;
  }

  if (abOrderStatusDescprition == 'Agendada') {
    return 3;
  }

  if (abOrderStatusDescprition == 'Andamento') {
    return 4;
  }

  if (abOrderStatusDescprition == 'Suspensa') {
    return 5;
  }

  if (abOrderStatusDescprition == 'Concluida') {
    return 6;
  }

  if (abOrderStatusDescprition == 'Cancelada') {
    return 7;
  }

  return 0;
}

Future abMapOrdersUpdate(
  BuildContext context, {
  DateTime? abOrderStatusDate,
  required int? abOrdersStatusId,
}) async {
  ApiCallResponse? resOrdersStatus4;
  ApiCallResponse? resOrdersStatus5;

  if (abOrdersStatusId == 4) {
    resOrdersStatus4 = await ApiOrdersGroup.ordersByStatusIdCall.call(
      statusId: abOrdersStatusId,
    );
    if ((resOrdersStatus4.succeeded ?? true)) {
      FFAppState().update(() {
        FFAppState().stMapOrders = ((resOrdersStatus4?.jsonBody ?? '')
                .toList()
                .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
                .toList() as Iterable<DtVOrderStruct?>)
            .withoutNulls
            .toList()
            .cast<DtVOrderStruct>();
      });
    }
  } else {
    resOrdersStatus5 = await ApiOrdersGroup.ordersByStatusIdAndDateCall.call(
      statusId: abOrdersStatusId,
    );
    if ((resOrdersStatus4?.succeeded ?? true)) {
      FFAppState().update(() {
        FFAppState().stMapOrders = ((resOrdersStatus5?.jsonBody ?? '')
                .toList()
                .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
                .toList() as Iterable<DtVOrderStruct?>)
            .withoutNulls
            .toList()
            .cast<DtVOrderStruct>();
      });
    }
  }

  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = FFAppState().stMapOrders.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    FFAppState().updateStMapOrdersAtIndex(
      FFAppState().stCounterLoop,
      (e) => e
        ..unitLatlng = functions.cfConvToLatLng(
            FFAppState().stMapOrders[FFAppState().stCounterLoop].unitLatitude,
            FFAppState().stMapOrders[FFAppState().stCounterLoop].unitLongitude),
    );
    FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
  }
}
