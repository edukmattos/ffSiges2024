import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'pg_assets_search_model.dart';
export 'pg_assets_search_model.dart';

class PgAssetsSearchWidget extends StatefulWidget {
  const PgAssetsSearchWidget({super.key});

  @override
  State<PgAssetsSearchWidget> createState() => _PgAssetsSearchWidgetState();
}

class _PgAssetsSearchWidgetState extends State<PgAssetsSearchWidget> {
  late PgAssetsSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetsSearchModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
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
          title: Text(
            'Ativos',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
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
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    valueOrDefault<String>(
                      _model.assetQrBarCode,
                      'scanCoded',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
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
                          size: 24.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          _model.resAssets =
                              await ApiAssetsGroup.assetsSearchCall.call(
                            searchTerms: _model.cpInputTextSearchModel
                                .inputTextController.text,
                          );
                          if (!(_model.resAssets?.succeeded ?? true)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Ops ...'),
                                  content:
                                      const Text('Houve um erro na busca de Ativos'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }

                          setState(() {});
                        },
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 22.0,
                        buttonSize: 45.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.qr_code_2_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        showLoadingIndicator: true,
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (_model.cpInputTextSearchModel.inputTextController
                                  .text !=
                              '')
                        Builder(
                          builder: (context) {
                            final apiAssets = ((_model.resAssets?.jsonBody ??
                                            '')
                                        .toList()
                                        .map<DtAssetStruct?>(
                                            DtAssetStruct.maybeFromMap)
                                        .toList() as Iterable<DtAssetStruct?>)
                                    .withoutNulls
                                    .toList() ??
                                [];
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: apiAssets.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 8.0),
                              itemBuilder: (context, apiAssetsIndex) {
                                final apiAssetsItem = apiAssets[apiAssetsIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await action_blocks.abAssetSelected(
                                      context,
                                      abAssetId: valueOrDefault<int>(
                                        apiAssetsItem.id,
                                        0,
                                      ),
                                    );

                                    context.pushNamed('pgAssetShow');
                                  },
                                  child: CpAssetListItemCardWidget(
                                    key: Key(
                                        'Keyiiz_${apiAssetsIndex}_of_${apiAssets.length}'),
                                    code: valueOrDefault<String>(
                                      apiAssetsItem.code,
                                      'code',
                                    ),
                                    description: valueOrDefault<String>(
                                      apiAssetsItem.description,
                                      'description',
                                    ),
                                    tagDescription: valueOrDefault<String>(
                                      apiAssetsItem.tagDescription,
                                      'tagDescription',
                                    ),
                                    tagSubDescription: valueOrDefault<String>(
                                      apiAssetsItem.tagSubDescription,
                                      'tagSubDescription',
                                    ),
                                    statusDescription: valueOrDefault<String>(
                                      apiAssetsItem.statusDescription,
                                      'statusDescription',
                                    ),
                                    unitDescription: valueOrDefault<String>(
                                      apiAssetsItem.unitDescription,
                                      'unitDescription',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                    ],
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}