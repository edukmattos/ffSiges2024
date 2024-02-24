import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pg_order_visit_asset1_search_model.dart';
export 'pg_order_visit_asset1_search_model.dart';

class PgOrderVisitAsset1SearchWidget extends StatefulWidget {
  const PgOrderVisitAsset1SearchWidget({
    super.key,
    required this.visitId,
  });

  final int? visitId;

  @override
  State<PgOrderVisitAsset1SearchWidget> createState() =>
      _PgOrderVisitAsset1SearchWidgetState();
}

class _PgOrderVisitAsset1SearchWidgetState
    extends State<PgOrderVisitAsset1SearchWidget> {
  late PgOrderVisitAsset1SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrderVisitAsset1SearchModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          endDrawer: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.cpMenuModel,
              updateCallback: () => setState(() {}),
              child: const CpMenuWidget(),
            ),
          ),
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
                  'Ativos',
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
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.cpInputTextSearchModel,
                            updateCallback: () => setState(() {}),
                            child: const CpInputTextWidget(
                              labelText: 'informe o código ou descrição',
                              isReadOnly: false,
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 23.0,
                          borderWidth: 1.0,
                          buttonSize: 46.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.search_sharp,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 23.0,
                          ),
                          showLoadingIndicator: true,
                          onPressed: () async {
                            _model.resAssets =
                                await ApiAssetsGroup.assetsSearchCall.call(
                              searchTerms: _model.cpInputTextSearchModel
                                  .inputTextController.text,
                            );
                            if ((_model.resAssets?.succeeded ?? true)) {
                              setState(() => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            }

                            setState(() {});
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 23.0,
                          borderWidth: 1.0,
                          buttonSize: 46.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.qr_code_scanner,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: (_model.apiRequestCompleter ??=
                              Completer<ApiCallResponse>()
                                ..complete(ApiAssetsGroup.assetsSearchCall.call(
                                  searchTerms: _model.cpInputTextSearchModel
                                      .inputTextController.text,
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
                        final containerAssetsSearchResponse = snapshot.data!;
                        return Container(
                          decoration: const BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final assetsResult = getJsonField(
                                containerAssetsSearchResponse.jsonBody,
                                r'''$''',
                              ).toList();
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: assetsResult.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 12.0),
                                itemBuilder: (context, assetsResultIndex) {
                                  final assetsResultItem =
                                      assetsResult[assetsResultIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await action_blocks.abAssetSelected(
                                        context,
                                        abAssetId: getJsonField(
                                          assetsResultItem,
                                          r'''$.id''',
                                        ),
                                      );
                                      _model.resOrderVisitAssetIsExist =
                                          await action_blocks
                                              .abOrderVisitAssetIsExist(
                                        context,
                                        abOrderVisitId: valueOrDefault<int>(
                                          FFAppState()
                                              .stOrderVisitSelected
                                              .first
                                              .id,
                                          1,
                                        ),
                                        abAssetId: FFAppState()
                                            .stAssetSeleted
                                            .first
                                            .id,
                                      );
                                      if (_model.resOrderVisitAssetIsExist!) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'ATIVO já associado.',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      } else {
                                        _model.resOrderVisitAssetAdded =
                                            await OrdersVisitsAssetsTable()
                                                .insert({
                                          'assetId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .id,
                                          'orderVisitId': valueOrDefault<int>(
                                            FFAppState()
                                                .stOrderVisitSelected
                                                .first
                                                .id,
                                            1,
                                          ),
                                          'beforeUnitId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .unitId,
                                          'beforeTagId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .tagId,
                                          'beforeTagSubId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .tagSubId,
                                          'beforeStatusId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .statusId,
                                          'afterUnitId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .unitId,
                                          'afterTagId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .tagId,
                                          'afterTagSubId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .tagSubId,
                                          'afterStatusId': FFAppState()
                                              .stAssetSeleted
                                              .first
                                              .statusId,
                                          'processingId': 1,
                                        });
                                      }

                                      _model.resOrderVisitAssetExist10 =
                                          await ApiOrdersVisitsAssetsGroup
                                              .idByvisitIdNassetIdCall
                                              .call(
                                        orderVisitId: valueOrDefault<int>(
                                          FFAppState()
                                              .stOrderVisitSelected
                                              .first
                                              .id,
                                          1,
                                        ),
                                        assetId: FFAppState()
                                            .stAssetSeleted
                                            .first
                                            .id,
                                      );
                                      await action_blocks
                                          .abOrderVisitAssetSelected(
                                        context,
                                        abOrderVisitAssetId:
                                            ApiOrdersVisitsAssetsGroup
                                                .idByvisitIdNassetIdCall
                                                .id(
                                          (_model.resOrderVisitAssetExist10
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                      );

                                      context.pushNamed(
                                        'pgOrderVisitAsset2Before',
                                        queryParameters: {
                                          'operation': serializeParam(
                                            'before',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );

                                      await action_blocks
                                          .abOrderVisitProcessingCheck(
                                        context,
                                        abOrderVisitId: valueOrDefault<int>(
                                          FFAppState()
                                              .stOrderVisitSelected
                                              .first
                                              .id,
                                          1,
                                        ),
                                      );
                                      setState(() {});

                                      setState(() {});
                                    },
                                    child: CpAssetListItemCardWidget(
                                      key: Key(
                                          'Keyxu8_${assetsResultIndex}_of_${assetsResult.length}'),
                                      code: getJsonField(
                                        assetsResultItem,
                                        r'''$.code''',
                                      ).toString(),
                                      description: getJsonField(
                                        assetsResultItem,
                                        r'''$.description''',
                                      ).toString(),
                                      tagDescription: getJsonField(
                                        assetsResultItem,
                                        r'''$.tagDescription''',
                                      ).toString(),
                                      tagSubDescription: getJsonField(
                                        assetsResultItem,
                                        r'''$.tagSubDescription''',
                                      ).toString(),
                                      statusDescription: getJsonField(
                                        assetsResultItem,
                                        r'''$.statusDescription''',
                                      ).toString(),
                                      unitDescription: getJsonField(
                                        assetsResultItem,
                                        r'''$.unitDescription''',
                                      ).toString(),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
