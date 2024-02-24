import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_datasheet1/cp_asset_datasheet1_widget.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/assets/cp_asset_materials/cp_asset_materials_widget.dart';
import '/pages/assets/cp_asset_show_bottom_nav_bar/cp_asset_show_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pg_asset_show_model.dart';
export 'pg_asset_show_model.dart';

class PgAssetShowWidget extends StatefulWidget {
  const PgAssetShowWidget({super.key});

  @override
  State<PgAssetShowWidget> createState() => _PgAssetShowWidgetState();
}

class _PgAssetShowWidgetState extends State<PgAssetShowWidget> {
  late PgAssetShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetShowModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
          title: Text(
            'Ativo',
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
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, -1.0),
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      wrapWithModel(
                        model: _model.cpAssetListItemCardModel,
                        updateCallback: () => setState(() {}),
                        child: CpAssetListItemCardWidget(
                          code: FFAppState().stAssetSeleted.first.code,
                          description:
                              FFAppState().stAssetSeleted.first.description,
                          tagDescription:
                              FFAppState().stAssetSeleted.first.tagDescription,
                          tagSubDescription: FFAppState()
                              .stAssetSeleted
                              .first
                              .tagSubDescription,
                          statusDescription: FFAppState()
                              .stAssetSeleted
                              .first
                              .statusDescription,
                          unitDescription:
                              FFAppState().stAssetSeleted.first.unitDescription,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              if (FFAppState().stAssetNavBarOption ==
                                  'components') {
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.cpAssetMaterialsModel,
                                      updateCallback: () => setState(() {}),
                                      child: const CpAssetMaterialsWidget(),
                                    ),
                                  ],
                                );
                              } else if (FFAppState().stAssetNavBarOption ==
                                  'moviments') {
                                return Text(
                                  'Hello World',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                );
                              } else if (FFAppState().stAssetNavBarOption ==
                                  'datasheet') {
                                return Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: const BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.cpAssetDatasheet1Model,
                                    updateCallback: () => setState(() {}),
                                    child: const CpAssetDatasheet1Widget(),
                                  ),
                                );
                              } else {
                                return Text(
                                  'Hello World',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                );
                              }
                            },
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.cpAssetShowBottomNavBarModel,
                        updateCallback: () => setState(() {}),
                        child: const CpAssetShowBottomNavBarWidget(),
                      ),
                    ].divide(const SizedBox(height: 12.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
