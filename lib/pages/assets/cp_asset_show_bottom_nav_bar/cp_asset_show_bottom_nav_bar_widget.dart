import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_asset_show_bottom_nav_bar_model.dart';
export 'cp_asset_show_bottom_nav_bar_model.dart';

class CpAssetShowBottomNavBarWidget extends StatefulWidget {
  const CpAssetShowBottomNavBarWidget({super.key});

  @override
  State<CpAssetShowBottomNavBarWidget> createState() =>
      _CpAssetShowBottomNavBarWidgetState();
}

class _CpAssetShowBottomNavBarWidgetState
    extends State<CpAssetShowBottomNavBarWidget> {
  late CpAssetShowBottomNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetShowBottomNavBarModel());

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
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: SizedBox(
        width: double.infinity,
        height: 70.0,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: SizedBox(
                height: 70.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: 62.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent4,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x17363535),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              3.0, 0.0, 3.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 40.0,
                                  buttonSize: 50.0,
                                  fillColor: FFAppState().stAssetNavBarOption ==
                                          'components'
                                      ? FlutterFlowTheme.of(context).primary
                                      : const Color(0x00FFFFFF),
                                  icon: Icon(
                                    Icons.settings_outlined,
                                    color: FFAppState().stAssetNavBarOption ==
                                            'components'
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBtnText
                                        : const Color(0xFF585858),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    _model.updatePage(() {
                                      FFAppState().stAssetNavBarOption =
                                          'components';
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 40.0,
                                  buttonSize: 50.0,
                                  fillColor: FFAppState().stAssetNavBarOption ==
                                          'movements'
                                      ? FlutterFlowTheme.of(context).primary
                                      : const Color(0x00FFFFFF),
                                  icon: Icon(
                                    Icons.attach_money_rounded,
                                    color: FFAppState().stAssetNavBarOption ==
                                            'movements'
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBtnText
                                        : const Color(0xFF585858),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    _model.updatePage(() {
                                      FFAppState().stAssetNavBarOption =
                                          'movements';
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 40.0,
                                  buttonSize: 50.0,
                                  fillColor: FFAppState().stAssetNavBarOption ==
                                          'datasheet'
                                      ? FlutterFlowTheme.of(context).primary
                                      : const Color(0x00FFFFFF),
                                  icon: Icon(
                                    Icons.bar_chart_rounded,
                                    color: FFAppState().stAssetNavBarOption ==
                                            'datasheet'
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBtnText
                                        : const Color(0xFF585858),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    _model.updatePage(() {
                                      FFAppState().stAssetNavBarOption =
                                          'datasheet';
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
