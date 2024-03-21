import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/components/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_asset1_search_model.dart';
export 'pg_o_v_asset1_search_model.dart';

class PgOVAsset1SearchWidget extends StatefulWidget {
  const PgOVAsset1SearchWidget({
    super.key,
    int? oVId,
    int? unitId,
    int? orderId,
    int? oPId,
  })  : oVId = oVId ?? 1,
        unitId = unitId ?? 1,
        orderId = orderId ?? 1,
        oPId = oPId ?? 1;

  final int oVId;
  final int unitId;
  final int orderId;
  final int oPId;

  @override
  State<PgOVAsset1SearchWidget> createState() => _PgOVAsset1SearchWidgetState();
}

class _PgOVAsset1SearchWidgetState extends State<PgOVAsset1SearchWidget> {
  late PgOVAsset1SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVAsset1SearchModel());

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
                    wrapWithModel(
                      model: _model.cpDropdownUnitsModel,
                      updateCallback: () => setState(() {}),
                      child: CpDropdownUnitsWidget(
                        initialValue: widget.unitId,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.cpInputTextSearchModel,
                            updateCallback: () => setState(() {}),
                            child: CpInputTextWidget(
                              initialValue: _model.assetQrBarCode,
                              labelText: 'Código/Descrição',
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
                                await ApiAssetsGroup.assetsByUnitIdCall.call(
                              searchTerms: _model.cpInputTextSearchModel
                                  .inputTextController.text,
                              unitId: _model
                                  .cpDropdownUnitsModel.dropdownUnitsValue,
                            );
                            if ((_model.resAssets?.succeeded ?? true)) {
                              setState(() {
                                FFAppState().stOVAssetsSearchResults =
                                    ((_model.resAssets?.jsonBody ?? '')
                                                .toList()
                                                .map<DtVAssetStruct?>(
                                                    DtVAssetStruct.maybeFromMap)
                                                .toList()
                                            as Iterable<DtVAssetStruct?>)
                                        .withoutNulls
                                        .toList()
                                        .cast<DtVAssetStruct>();
                              });
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
                          onPressed: () async {
                            _model.assetQrBarCode =
                                await FlutterBarcodeScanner.scanBarcode(
                              '#C62828', // scanning line color
                              'Sair', // cancel button text
                              true, // whether to show the flash icon
                              ScanMode.QR,
                            );

                            setState(() {});
                          },
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: Visibility(
                        visible:
                            FFAppState().stOVAssetsSearchResults.isNotEmpty,
                        child: Builder(
                          builder: (context) {
                            final gcAssets = FFAppState()
                                .stOVAssetsSearchResults
                                .map((e) => e)
                                .toList();
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: gcAssets.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 12.0),
                              itemBuilder: (context, gcAssetsIndex) {
                                final gcAssetsItem = gcAssets[gcAssetsIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await action_blocks.abAssetSelected(
                                      context,
                                      abAssetId: gcAssetsItem.id,
                                    );
                                    _model.resOrderVisitAssetIsExist =
                                        await action_blocks.abOVAssetIsExist(
                                      context,
                                      abOVId: widget.oVId,
                                      abAssetId:
                                          FFAppState().stAssetSeleted.first.id,
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
                                        'assetId': gcAssetsItem.id,
                                        'orderVisitId': widget.oVId,
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
                                        'orderId': widget.orderId,
                                        'orderParentId': widget.oPId,
                                      });
                                    }

                                    _model.resOrderVisitAssetExist10 =
                                        await ApiOrdersVisitsAssetsGroup
                                            .idByvisitIdNassetIdCall
                                            .call(
                                      orderVisitId: widget.oVId,
                                      assetId: gcAssetsItem.id,
                                    );
                                    await action_blocks.abOVAssetSelected(
                                      context,
                                      abOVAssetId: ApiOrdersVisitsAssetsGroup
                                          .idByvisitIdNassetIdCall
                                          .id(
                                        (_model.resOrderVisitAssetExist10
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                    );

                                    context.pushNamed(
                                      'pgOVAsset2Before',
                                      queryParameters: {
                                        'ppOperation': serializeParam(
                                          'before',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    await action_blocks.abOVProcessingCheck(
                                      context,
                                      abOVId: valueOrDefault<int>(
                                        FFAppState().stOVSelected.first.id,
                                        1,
                                      ),
                                    );
                                    setState(() {});

                                    setState(() {});
                                  },
                                  child: CpAssetListItemCardWidget(
                                    key: Key(
                                        'Keyxu8_${gcAssetsIndex}_of_${gcAssets.length}'),
                                    code: gcAssetsItem.code,
                                    description: gcAssetsItem.description,
                                    tagDescription: gcAssetsItem.tagDescription,
                                    tagSubDescription:
                                        gcAssetsItem.tagSubDescription,
                                    statusDescription:
                                        gcAssetsItem.statusDescription,
                                    unitDescription:
                                        gcAssetsItem.unitDescription,
                                    id: gcAssetsItem.id,
                                    isLinkToShow: false,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
