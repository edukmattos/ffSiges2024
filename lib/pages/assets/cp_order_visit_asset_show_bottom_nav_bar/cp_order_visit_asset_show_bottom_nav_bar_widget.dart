import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_order_visit_asset_show_bottom_nav_bar_model.dart';
export 'cp_order_visit_asset_show_bottom_nav_bar_model.dart';

class CpOrderVisitAssetShowBottomNavBarWidget extends StatefulWidget {
  const CpOrderVisitAssetShowBottomNavBarWidget({super.key});

  @override
  State<CpOrderVisitAssetShowBottomNavBarWidget> createState() =>
      _CpOrderVisitAssetShowBottomNavBarWidgetState();
}

class _CpOrderVisitAssetShowBottomNavBarWidgetState
    extends State<CpOrderVisitAssetShowBottomNavBarWidget> {
  late CpOrderVisitAssetShowBottomNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CpOrderVisitAssetShowBottomNavBarModel());

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
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          height: 60.0,
          constraints: const BoxConstraints(
            minWidth: 100.0,
            maxWidth: double.infinity,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AlignedTooltip(
                content: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Ativos',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    )),
                offset: 4.0,
                preferredDirection: AxisDirection.down,
                borderRadius: BorderRadius.circular(8.0),
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: const Duration(milliseconds: 100),
                showDuration: const Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                  child: badges.Badge(
                    badgeContent: Text(
                      valueOrDefault<String>(
                        FFAppState()
                            .stOVSelected
                            .first
                            .orderVisitAssetsAmount
                            .toString(),
                        '1',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                    showBadge: valueOrDefault<int>(
                          FFAppState()
                              .stOVSelected
                              .first
                              .orderVisitAssetsAmount,
                          1,
                        ) >
                        0,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).tertiary,
                    elevation: 4.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 12.0,
                        buttonSize: 50.0,
                        fillColor: FFAppState().stOVShowNavBarOption == 'assets'
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0x00FFFFFF),
                        icon: FaIcon(
                          FontAwesomeIcons.city,
                          color: FFAppState().stOVShowNavBarOption == 'assets'
                              ? FlutterFlowTheme.of(context).primaryBtnText
                              : const Color(0xFF585858),
                          size: 16.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          _model.updatePage(() {
                            FFAppState().stOVShowNavBarOption = 'assets';
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              AlignedTooltip(
                content: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Chat',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    )),
                offset: 4.0,
                preferredDirection: AxisDirection.down,
                borderRadius: BorderRadius.circular(8.0),
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: const Duration(milliseconds: 100),
                showDuration: const Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                  child: badges.Badge(
                    badgeContent: Text(
                      '1',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                    showBadge: false,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).tertiary,
                    elevation: 4.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 12.0,
                        buttonSize: 50.0,
                        fillColor: FFAppState().stOVShowNavBarOption == 'chat'
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0x00FFFFFF),
                        icon: Icon(
                          Icons.wechat_sharp,
                          color: FFAppState().stOVShowNavBarOption == 'chat'
                              ? FlutterFlowTheme.of(context).primaryBtnText
                              : const Color(0xFF585858),
                          size: 26.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          _model.updatePage(() {
                            FFAppState().stOVShowNavBarOption = 'chat';
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              AlignedTooltip(
                content: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Serviços',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    )),
                offset: 4.0,
                preferredDirection: AxisDirection.down,
                borderRadius: BorderRadius.circular(8.0),
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: const Duration(milliseconds: 100),
                showDuration: const Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 12.0,
                    buttonSize: 50.0,
                    fillColor: FFAppState().stOVShowNavBarOption == 'services'
                        ? FlutterFlowTheme.of(context).primary
                        : const Color(0x00FFFFFF),
                    icon: FaIcon(
                      FontAwesomeIcons.tools,
                      color: FFAppState().stOVShowNavBarOption == 'services'
                          ? FlutterFlowTheme.of(context).primaryBtnText
                          : const Color(0xFF585858),
                      size: 20.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      _model.updatePage(() {
                        FFAppState().stOVShowNavBarOption = 'services';
                      });
                    },
                  ),
                ),
              ),
              AlignedTooltip(
                content: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Transporte',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    )),
                offset: 4.0,
                preferredDirection: AxisDirection.down,
                borderRadius: BorderRadius.circular(8.0),
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: const Duration(milliseconds: 100),
                showDuration: const Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 12.0,
                    buttonSize: 50.0,
                    fillColor: FFAppState().stOVShowNavBarOption == 'vehicles'
                        ? FlutterFlowTheme.of(context).primary
                        : const Color(0x00FFFFFF),
                    icon: Icon(
                      Icons.attach_file,
                      color: FFAppState().stOVShowNavBarOption == 'vehicles'
                          ? FlutterFlowTheme.of(context).primaryBtnText
                          : const Color(0xFF585858),
                      size: 30.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      _model.updatePage(() {
                        FFAppState().stOVShowNavBarOption = 'vehicles';
                      });
                    },
                  ),
                ),
              ),
              AlignedTooltip(
                content: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Transporte',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    )),
                offset: 4.0,
                preferredDirection: AxisDirection.down,
                borderRadius: BorderRadius.circular(8.0),
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: const Duration(milliseconds: 100),
                showDuration: const Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 12.0,
                    buttonSize: 50.0,
                    fillColor: FFAppState().stOVShowNavBarOption == 'vehicles'
                        ? FlutterFlowTheme.of(context).primary
                        : const Color(0x00FFFFFF),
                    icon: FaIcon(
                      FontAwesomeIcons.shuttleVan,
                      color: FFAppState().stOVShowNavBarOption == 'vehicles'
                          ? FlutterFlowTheme.of(context).primaryBtnText
                          : const Color(0xFF585858),
                      size: 20.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      _model.updatePage(() {
                        FFAppState().stOVShowNavBarOption = 'vehicles';
                      });
                    },
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 10.0)),
          ),
        ),
      ),
    );
  }
}
