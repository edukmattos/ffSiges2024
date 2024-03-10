import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/md_order_visit_to_approve_copy/md_order_visit_to_approve_copy_widget.dart';
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
        FFAppState().asUserCurrent.id,
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
  ApiCallResponse? apiResultyjy;

  resUserCurrent = await ApiUsersGroup.userByEmailCall.call(
    email: abEmail,
  );
  FFAppState().asUserCurrent = DtUserStruct(
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
    vehicleId: ApiUsersGroup.userByEmailCall.vehicleId(
      (resUserCurrent.jsonBody ?? ''),
    ),
  );
  apiResultyjy = await ApiProfilesPermissionsGroup.permissionsCall.call(
    profileId: FFAppState().asUserCurrent.profileId,
  );
  if ((apiResultyjy.succeeded ?? true)) {
    FFAppState().asUserPermissions = ((apiResultyjy.jsonBody ?? '')
            .toList()
            .map<DtUserPermissionStruct?>(DtUserPermissionStruct.maybeFromMap)
            .toList() as Iterable<DtUserPermissionStruct?>)
        .withoutNulls
        .toList()
        .cast<DtUserPermissionStruct>();
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Opps ... Permissões de acesso NÃO localizados.',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).primaryBtnText,
          ),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  }
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
    if (abType == 'orderAuthorized') {
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
        'companyId': FFAppState().asUserCurrent.companyId,
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
          'orderParentId': FFAppState().asUserCurrent.orderParentIdInProgress,
          'orderId': FFAppState().asUserCurrent.orderIdInProgress,
        });
        await UsersTable().update(
          data: {
            'orderParentIdInProgress':
                FFAppState().asUserCurrent.orderParentIdInProgress,
            'orderIdInProgress': FFAppState().asUserCurrent.orderIdInProgress,
            'orderVisitIdInProgress':
                FFAppState().asUserCurrent.orderVisitIdInProgress,
            'orderVisitInProgressTeamLeaderId': FFAppState().asUserCurrent.id,
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
                FFAppState().asUserCurrent.orderVisitIdInProgress,
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
            'teamId': FFAppState().asUserCurrent.teamId,
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
            'teamIdPrevious': FFAppState().asUserCurrent.teamId,
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

Future abOSelected(
  BuildContext context, {
  required int? abOrderId,
}) async {
  ApiCallResponse? resOrderSelected;

  resOrderSelected = await ApiOrdersGroup.orderByIdCall.call(
    orderId: abOrderId,
  );
  if ((resOrderSelected.succeeded ?? true)) {
    FFAppState().stOSelected = ((resOrderSelected.jsonBody ?? '')
            .toList()
            .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderStruct>();
    await action_blocks.abOPSelected(
      context,
      abOrderId: FFAppState().stOSelected.first.parentId,
    );
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

Future abOVSelected(
  BuildContext context, {
  required int? abOrderVisitId,
}) async {
  ApiCallResponse? resOrderVisitSelected;

  resOrderVisitSelected = await ApiOrdersVisitsGroup.orderVisitByIdCall.call(
    orderVisitId: abOrderVisitId,
  );
  if ((resOrderVisitSelected.succeeded ?? true)) {
    FFAppState().stOVSelected = ((resOrderVisitSelected.jsonBody ?? '')
            .toList()
            .map<DtVOrderVisitStruct?>(DtVOrderVisitStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderVisitStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderVisitStruct>();
    FFAppState().updateStOVSelectedAtIndex(
      0,
      (e) => e
        ..dateStartDatetime = functions.cfConvDateStringToDatetime(
            FFAppState().stOVSelected.first.dateStart),
    );
    if (FFAppState().stOVSelected.first.statusId == 2) {
      FFAppState().updateStOVSelectedAtIndex(
        0,
        (e) => e
          ..dateEndDatetime = functions.cfConvDateStringToDatetime(
              FFAppState().stOVSelected.first.dateEnd),
      );
    }
    await action_blocks.abOSelected(
      context,
      abOrderId: FFAppState().stOVSelected.first.orderId,
    );
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
    FFAppState().stOVAssetSelected =
        ((resOrderVisitAssetSelected.jsonBody ?? '')
                .toList()
                .map<DtVOrderVisitAssetsStruct?>(
                    DtVOrderVisitAssetsStruct.maybeFromMap)
                .toList() as Iterable<DtVOrderVisitAssetsStruct?>)
            .withoutNulls
            .toList()
            .cast<DtVOrderVisitAssetsStruct>();
    await action_blocks.abOVSelected(
      context,
      abOrderVisitId: FFAppState().stOVAssetSelected.first.orderVisitId,
    );
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('Ops ...'),
          content: const Text('Ocorreu um erro em selecionar o Ativo.'),
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

Future abOPSelected(
  BuildContext context, {
  required int? abOrderId,
}) async {
  ApiCallResponse? resOrderParentSelected;

  resOrderParentSelected = await ApiOrdersGroup.orderByIdCall.call(
    orderId: abOrderId,
  );
  if ((resOrderParentSelected.succeeded ?? true)) {
    FFAppState().stOPSelected = ((resOrderParentSelected.jsonBody ?? '')
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
    FFAppState().stOFollowers = ((resOrderParentSelected111.jsonBody ?? '')
            .toList()
            .map<DtVOrderFollowerStruct?>(DtVOrderFollowerStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderFollowerStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderFollowerStruct>();
    FFAppState().stCounterLoop = 1;
    FFAppState().stCounterLoopFinal = FFAppState().stOFollowers.length;
    while (FFAppState().stCounterLoop <= FFAppState().stCounterLoopFinal) {
      await action_blocks.abUsersNotificationsSend(
        context,
        abType: 'orderFollowers',
        abTitle: abTitle,
        abBody: abBody,
        abUserIdFrom: FFAppState().asUserCurrent.id,
        abUserIdTo:
            FFAppState().stOFollowers[FFAppState().stCounterLoop - 1].userId,
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

  apiResultojo = await ApiOrdersVisitsAssetsGroup.assetsByOrderVisitIdCall.call(
    orderVisitId: abOrderVisitId,
  );
  if ((apiResultojo.succeeded ?? true)) {
    FFAppState().stOVAssets = ((apiResultojo.jsonBody ?? '')
            .toList()
            .map<DtVOrderVisitAssetsStruct?>(
                DtVOrderVisitAssetsStruct.maybeFromMap)
            .toList() as Iterable<DtVOrderVisitAssetsStruct?>)
        .withoutNulls
        .toList()
        .cast<DtVOrderVisitAssetsStruct>();
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = valueOrDefault<int>(
      FFAppState().stOVAssets.length,
      0,
    );
    FFAppState().stOVAssetsDraftAmount = 0;
    FFAppState().stOVAssetsReportedAmount = 0;
    FFAppState().stOVAssetsDisapprovedAmount = 0;
    FFAppState().stOVAssetsApprovedAmount = 0;
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      if (FFAppState().stOVAssets[FFAppState().stCounterLoop].processingId ==
          1) {
        FFAppState().stOVAssetsDraftAmount =
            FFAppState().stOVAssetsDraftAmount + 1;
      } else {
        if (FFAppState().stOVAssets[FFAppState().stCounterLoop].processingId ==
            2) {
          FFAppState().stOVAssetsReportedAmount =
              FFAppState().stOVAssetsReportedAmount + 1;
        } else {
          if (FFAppState()
                  .stOVAssets[FFAppState().stCounterLoop]
                  .processingId ==
              3) {
            FFAppState().stOVAssetsDisapprovedAmount =
                FFAppState().stOVAssetsDisapprovedAmount + 1;
          } else {
            if (FFAppState()
                    .stOVAssets[FFAppState().stCounterLoop]
                    .processingId ==
                4) {
              FFAppState().stOVAssetsApprovedAmount =
                  FFAppState().stOVAssetsApprovedAmount + 1;
            }
          }
        }
      }

      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
    await OrdersVisitsTable().update(
      data: {
        'orderVisitAssetsAmount': FFAppState().stCounterLoopFinal,
        'orderVisitAssetsDraftAmount': FFAppState().stOVAssetsDraftAmount,
        'orderVisitAssetsReportedAmount': FFAppState().stOVAssetsReportedAmount,
        'orderVisitAssetsDisapprovedAmount':
            FFAppState().stOVAssetsDisapprovedAmount,
        'orderVisitAssetsApprovedAmount': FFAppState().stOVAssetsApprovedAmount,
      },
      matchingRows: (rows) => rows.eq(
        'id',
        valueOrDefault<int>(
          FFAppState().stOVSelected.first.id,
          1,
        ),
      ),
    );
    if (FFAppState().stOVSelected.first.statusId == 2) {
      if ((FFAppState().stCounterLoopFinal ==
              FFAppState().stOVAssetsReportedAmount) &&
          (FFAppState().stOVSelected.first.processingId != 2) &&
          (FFAppState().stCounterLoopFinal > 0)) {
        var confirmDialogResponse = await showDialog<bool>(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: const Text('Reportar ATENDIMENTO ?'),
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
                title: const Text('Atendimento'),
                content: const Text('Reportado com sucesso.'),
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
              'reportedUserId': FFAppState().asUserCurrent.id,
            },
            matchingRows: (rows) => rows.eq(
              'id',
              valueOrDefault<int>(
                FFAppState().stOVSelected.first.id,
                1,
              ),
            ),
          );
        }
      } else if ((FFAppState().stCounterLoopFinal ==
              FFAppState().stOVAssetsApprovedAmount) &&
          (FFAppState().stOVSelected.first.processingId != 4) &&
          (FFAppState().stCounterLoopFinal > 0)) {
        var confirmDialogResponse = await showDialog<bool>(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: const Text('APROVAR atendimento ?'),
                  content: const Text('TODAS atividades estão aprovadas'),
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
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            enableDrag: false,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: const MdOrderVisitToApproveCopyWidget(),
              );
            },
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
      FFAppState().stOVSelected.first.id,
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

Future abOrderVisitSelectedServices(
  BuildContext context, {
  required int? abOrderVisitId,
}) async {
  ApiCallResponse? apiResultw100;
  ApiCallResponse? apiResultbowt;
  ApiCallResponse? apiResultbowyy;

  FFAppState().asTmpOrderVisitSelectedPricesBalance = [];
  apiResultw100 =
      await ApiOrdersVisitsGroup.priceServicesByOrderVisitIdCall.call(
    orderVisitId: abOrderVisitId,
  );
  FFAppState().asTmpOrderVisitSelectedPricesBalance =
      ((apiResultw100.jsonBody ?? '')
              .toList()
              .map<DtVOrderVisitPricesStruct?>(
                  DtVOrderVisitPricesStruct.maybeFromMap)
              .toList() as Iterable<DtVOrderVisitPricesStruct?>)
          .withoutNulls
          .toList()
          .cast<DtVOrderVisitPricesStruct>();
  if (FFAppState().asTmpOrderVisitSelectedPricesBalance.isNotEmpty) {
    apiResultbowt =
        await ApiOrdersVisitsGroup.priceServicesUpdateByOrderVisitIdCall.call(
      orderVisitId: abOrderVisitId,
      priceServices:
          FFAppState().asTmpOrderVisitSelectedPricesBalance.first.priceServices,
    );
    FFAppState().update(() {
      FFAppState().updateStOVSelectedAtIndex(
        0,
        (e) => e
          ..priceServices = FFAppState()
              .asTmpOrderVisitSelectedPricesBalance
              .first
              .priceServices,
      );
    });
  } else {
    apiResultbowyy =
        await ApiOrdersVisitsGroup.priceServicesUpdateByOrderVisitIdCall.call(
      orderVisitId: abOrderVisitId,
      priceServices: 0.0,
    );
    FFAppState().update(() {
      FFAppState().updateStOVSelectedAtIndex(
        0,
        (e) => e..priceServices = 0.0,
      );
    });
  }

  FFAppState().update(() {
    FFAppState().updateStOVSelectedAtIndex(
      0,
      (e) => e
        ..priceTotal = FFAppState().stOVSelected.first.priceServices +
            FFAppState().stOVSelected.first.priceMaterials +
            FFAppState().stOVSelected.first.priceVehicles,
    );
  });
}

Future abDashAdminOrdersFilters(
  BuildContext context, {
  List<int>? abOrdersTypes,
  List<int>? abSystemsParent,
  List<int>? abSystems,
  List<int>? abUnits,
  List<int>? abOrdersTypesSubs,
  List<int>? abUnitsTypesParent,
  List<int>? abContracts,
}) async {
  ApiCallResponse? apiResulthfuT;
  ApiCallResponse? apiResulthfuToo;
  ApiCallResponse? apiResulthfu;

  apiResulthfuT =
      await ApiOrdersGroup.ordersParentOpenDashboardFiltersCall.call(
    systemsParentsIdsList: abSystemsParent,
    systemsIdsList: abSystems,
    unitsTypesParentsIdsList: abUnitsTypesParent,
    unitsIdsList: abUnits,
    ordersTypesIdsList: abOrdersTypes,
    ordersTypesSubsIdsList: abOrdersTypesSubs,
    contractsIdsList: abContracts,
  );
  if ((apiResulthfuT.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().asDashAdminOrdersParentFilters =
          ((apiResulthfuT?.jsonBody ?? '')
                  .toList()
                  .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
                  .toList() as Iterable<DtVOrderStruct?>)
              .withoutNulls
              .toList()
              .cast<DtVOrderStruct>();
    });
    apiResulthfuToo = await ApiOrdersGroup.ordersOpenDashboardFiltersCall.call(
      systemsParentsIdsList: abSystemsParent,
      systemsIdsList: abSystems,
      unitsTypesParentsIdsList: abUnitsTypesParent,
      unitsIdsList: abUnits,
      ordersTypesIdsList: abOrdersTypes,
      ordersTypesSubsIdsList: abOrdersTypesSubs,
      contractsIdsList: abContracts,
    );
    if ((apiResulthfuToo.succeeded ?? true)) {
      FFAppState().update(() {
        FFAppState().asDashAdminOrdersFilters =
            ((apiResulthfuToo?.jsonBody ?? '')
                    .toList()
                    .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
                    .toList() as Iterable<DtVOrderStruct?>)
                .withoutNulls
                .toList()
                .cast<DtVOrderStruct>();
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Não foi possivel filtrar as OS\'s.',
            style: TextStyle(),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Não foi possivel filtrar as SS\'s.',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  }

  apiResulthfu = await ApiOrdersGroup.ordersParentOpenDashboardFiltersCall.call(
    systemsParentsIdsList: abSystemsParent,
    systemsIdsList: abSystems,
    unitsTypesParentsIdsList: abUnitsTypesParent,
    unitsIdsList: abUnits,
    ordersTypesIdsList: abOrdersTypes,
    ordersTypesSubsIdsList: abOrdersTypesSubs,
    contractsIdsList: abContracts,
  );
}

Future abOrdersVisitsSearchFilters(
  BuildContext context, {
  List<int>? abSystemsParent,
  List<int>? abSystems,
  List<int>? abUnitsTypesParent,
  List<int>? abUnits,
  List<int>? abOrdersTypes,
  List<int>? abOrdersTypesSubs,
  List<int>? abOrdersVisitsProcessing,
  List<int>? abContracts,
}) async {
  ApiCallResponse? resOrdersVisits;

  resOrdersVisits = await ApiOrdersVisitsGroup.searchFiltersCall.call(
    ordersTypesIdsList: abOrdersTypes,
    processingIdsList: abOrdersVisitsProcessing,
    unitsIdsList: abUnits,
    ordersTypesSubsIdsList: abOrdersTypesSubs,
    systemsParentsIdsList: abSystemsParent,
    systemsIdsList: abSystems,
    unitsTypesParentsIdsList: abUnitsTypesParent,
    contractsIdsList: abContracts,
  );
  if ((resOrdersVisits.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().asOVSearchResults = ((resOrdersVisits?.jsonBody ?? '')
              .toList()
              .map<DtVOrderVisitStruct?>(DtVOrderVisitStruct.maybeFromMap)
              .toList() as Iterable<DtVOrderVisitStruct?>)
          .withoutNulls
          .toList()
          .cast<DtVOrderVisitStruct>();
    });
    FFAppState().stCounterLoop = 0;
    FFAppState().stCounterLoopFinal = FFAppState().asOVSearchResults.length;
    FFAppState().update(() {
      FFAppState().stTmpOVFiltersSumPrices =
          DtTmpOrdersVisitsFiltersSumPricesStruct(
        sumPriceServices: 0.0,
        sumPriceMaterials: 0.0,
        sumPriceVehicles: 0.0,
        sumPriceTotal: 0.0,
      );
    });
    while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
      FFAppState().updateAsOVSearchResultsAtIndex(
        FFAppState().stCounterLoop,
        (e) => e
          ..dateStartDatetime = functions.cfConvDateStringToDatetime(
              FFAppState()
                  .asOVSearchResults[FFAppState().stCounterLoop]
                  .dateStart)
          ..dateEndDatetime = functions.cfConvDateStringToDatetime(FFAppState()
              .asOVSearchResults[FFAppState().stCounterLoop]
              .dateEnd),
      );
      FFAppState().update(() {
        FFAppState().stTmpOVFiltersSumPrices =
            DtTmpOrdersVisitsFiltersSumPricesStruct(
          sumPriceServices:
              FFAppState().stTmpOVFiltersSumPrices.sumPriceServices +
                  FFAppState()
                      .asOVSearchResults[FFAppState().stCounterLoop]
                      .priceServices,
          sumPriceMaterials:
              FFAppState().stTmpOVFiltersSumPrices.sumPriceMaterials +
                  FFAppState()
                      .asOVSearchResults[FFAppState().stCounterLoop]
                      .priceMaterials,
          sumPriceVehicles:
              FFAppState().stTmpOVFiltersSumPrices.sumPriceVehicles +
                  FFAppState()
                      .asOVSearchResults[FFAppState().stCounterLoop]
                      .priceVehicles,
          sumPriceTotal: FFAppState().stTmpOVFiltersSumPrices.sumPriceTotal +
              FFAppState()
                  .asOVSearchResults[FFAppState().stCounterLoop]
                  .priceTotal,
        );
      });
      FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Não foi possivel filtrar os Atendimentos.',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return;
  }
}

Future abUserOrdersOpenUpdate(
  BuildContext context, {
  required int? abLeaderId,
}) async {
  ApiCallResponse? resUserOrdersOpen;

  resUserOrdersOpen = await ApiOrdersGroup.ordersOpenByLeaderIdCall.call(
    userId: abLeaderId,
  );
  if ((resUserOrdersOpen.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().stUserOOpen = ((resUserOrdersOpen?.jsonBody ?? '')
              .toList()
              .map<DtVOrderStruct?>(DtVOrderStruct.maybeFromMap)
              .toList() as Iterable<DtVOrderStruct?>)
          .withoutNulls
          .toList()
          .cast<DtVOrderStruct>();
    });
  }
}

Future abOVAssetActivitiesUpdate(
  BuildContext context, {
  required int? abOVAssetId,
}) async {
  ApiCallResponse? resOVAssetActivities;

  resOVAssetActivities = await ApiOrdersVisitsAssetsActivitiesGroup
      .activitiesByOrderVisitAssetIdCall
      .call(
    orderVisitAssetId: abOVAssetId,
  );
  if ((resOVAssetActivities.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().stOVAssetActivities = ((resOVAssetActivities?.jsonBody ?? '')
              .toList()
              .map<DtVOrderVisitAssetActivityStruct?>(
                  DtVOrderVisitAssetActivityStruct.maybeFromMap)
              .toList() as Iterable<DtVOrderVisitAssetActivityStruct?>)
          .withoutNulls
          .toList()
          .cast<DtVOrderVisitAssetActivityStruct>();
    });
  }
}

Future<bool> abGuardian(
  BuildContext context, {
  int? abPgRequestedId,
}) async {
  if (FFAppState().asUserCurrent.isAdminSuper) {
    return true;
  }

  if (FFAppState().asUserCurrent.isAdmin) {
    return true;
  }

  FFAppState().stCounterLoop = 0;
  FFAppState().stCounterLoopFinal = FFAppState().asUserPermissions.length;
  while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
    if (FFAppState().asUserPermissions[FFAppState().stCounterLoop].appPageId ==
        abPgRequestedId) {
      return true;
    }

    FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
  }
  return false;
}

Future abOVPricesUpdate(
  BuildContext context, {
  required String? abPrice,
}) async {
  ApiCallResponse? resOrderVisitVehicles;
  ApiCallResponse? apiResultnke;

  if (abPrice == 'vehicles') {
    FFAppState().updateStOVSelectedAtIndex(
      0,
      (e) => e
        ..priceVehicles = 0.0
        ..priceTotal = 0.0,
    );
    resOrderVisitVehicles =
        await ApiOrdersVisitsVehiclesGroup.vehiclesByOrderVisitIdCall.call(
      orderVisitId: FFAppState().stOVSelected.first.id,
    );
    if ((resOrderVisitVehicles.succeeded ?? true)) {
      FFAppState().stOVVehicles = ((resOrderVisitVehicles.jsonBody ?? '')
              .toList()
              .map<DtVOrderVisitVehicleStruct?>(
                  DtVOrderVisitVehicleStruct.maybeFromMap)
              .toList() as Iterable<DtVOrderVisitVehicleStruct?>)
          .withoutNulls
          .toList()
          .cast<DtVOrderVisitVehicleStruct>();
      FFAppState().update(() {
        FFAppState().stCounterLoop = 0;
        FFAppState().stCounterLoopFinal = FFAppState().stOVVehicles.length;
      });
      while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
        await OrdersVisitsVehiclesTable().update(
          data: {
            'priceTotal': FFAppState()
                    .stOVVehicles[FFAppState().stCounterLoop]
                    .amountUnit
                    .toDouble() *
                FFAppState().stOVVehicles[FFAppState().stCounterLoop].discount *
                FFAppState().stOVVehicles[FFAppState().stCounterLoop].priceUnit,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stOVVehicles[FFAppState().stCounterLoop].id,
          ),
        );
        FFAppState().updateStOVSelectedAtIndex(
          0,
          (e) => e
            ..incrementPriceVehicles(FFAppState()
                    .stOVVehicles[FFAppState().stCounterLoop]
                    .amountUnit
                    .toDouble() *
                FFAppState().stOVVehicles[FFAppState().stCounterLoop].discount *
                FFAppState()
                    .stOVVehicles[FFAppState().stCounterLoop]
                    .priceUnit),
        );
        FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
      }
      await OrdersVisitsTable().update(
        data: {
          'priceVehicles': FFAppState().stOVSelected.first.priceVehicles,
        },
        matchingRows: (rows) => rows.eq(
          'id',
          FFAppState().stOVSelected.first.id,
        ),
      );
      await OrdersVisitsTable().update(
        data: {
          'priceTotal': FFAppState().stOVSelected.first.priceServices +
              FFAppState().stOVSelected.first.priceMaterials +
              FFAppState().stOVSelected.first.priceVehicles,
        },
        matchingRows: (rows) => rows.eq(
          'id',
          FFAppState().stOVSelected.first.id,
        ),
      );
      await Future.delayed(const Duration(milliseconds: 1000));
      FFAppState().update(() {
        FFAppState().updateStOVSelectedAtIndex(
          0,
          (e) => e
            ..priceTotal = FFAppState().stOVSelected.first.priceServices +
                FFAppState().stOVSelected.first.priceMaterials +
                FFAppState().stOVSelected.first.priceVehicles,
        );
      });
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
  } else {
    if (abPrice == 'services') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text(abPrice!),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: const Text('Ok'),
              ),
            ],
          );
        },
      );
      FFAppState().updateStOVSelectedAtIndex(
        0,
        (e) => e
          ..priceTotal = 0.0
          ..priceServices = 0.0,
      );
      apiResultnke =
          await ApiOrdersVisitsServicesGroup.servicesByOrderVisitIdwwCall.call(
        orderVisitId: FFAppState().stOVSelected.first.id,
      );
      if ((apiResultnke.succeeded ?? true)) {
        FFAppState().asOVSelectedServices = ((apiResultnke.jsonBody ?? '')
                .toList()
                .map<DtVOrderVisitServicesStruct?>(
                    DtVOrderVisitServicesStruct.maybeFromMap)
                .toList() as Iterable<DtVOrderVisitServicesStruct?>)
            .withoutNulls
            .toList()
            .cast<DtVOrderVisitServicesStruct>();
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text(FFAppState().asOVSelectedServices.length.toString()),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
        FFAppState().update(() {
          FFAppState().stCounterLoop = 0;
          FFAppState().stCounterLoopFinal =
              FFAppState().asOVSelectedServices.length;
        });
        while (FFAppState().stCounterLoop < FFAppState().stCounterLoopFinal) {
          await OrdersVisitsServicesTable().update(
            data: {
              'priceTotal': FFAppState()
                      .asOVSelectedServices[FFAppState().stCounterLoop]
                      .amount *
                  FFAppState()
                      .asOVSelectedServices[FFAppState().stCounterLoop]
                      .discount *
                  FFAppState()
                      .asOVSelectedServices[FFAppState().stCounterLoop]
                      .priceUnit,
            },
            matchingRows: (rows) => rows.eq(
              'id',
              FFAppState().stOVVehicles[FFAppState().stCounterLoop].id,
            ),
          );
          FFAppState().updateStOVSelectedAtIndex(
            0,
            (e) => e
              ..priceServices = FFAppState()
                      .asOVSelectedServices[FFAppState().stCounterLoop]
                      .amount *
                  FFAppState()
                      .asOVSelectedServices[FFAppState().stCounterLoop]
                      .discount *
                  FFAppState()
                      .asOVSelectedServices[FFAppState().stCounterLoop]
                      .priceUnit,
          );
          FFAppState().stCounterLoop = FFAppState().stCounterLoop + 1;
        }
        await OrdersVisitsTable().update(
          data: {
            'priceServices': FFAppState().stOVSelected.first.priceServices,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stOVSelected.first.id,
          ),
        );
        await OrdersVisitsTable().update(
          data: {
            'priceTotal': FFAppState().stOVSelected.first.priceServices +
                FFAppState().stOVSelected.first.priceMaterials +
                FFAppState().stOVSelected.first.priceVehicles,
          },
          matchingRows: (rows) => rows.eq(
            'id',
            FFAppState().stOVSelected.first.id,
          ),
        );
      }
    }
  }
}
