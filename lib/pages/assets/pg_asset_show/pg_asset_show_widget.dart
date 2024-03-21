import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/assets/cp_asset_show_bottom_nav_bar/cp_asset_show_bottom_nav_bar_widget.dart';
import '/pages/assets/cp_asset_show_card/cp_asset_show_card_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_asset_show_model.dart';
export 'pg_asset_show_model.dart';

class PgAssetShowWidget extends StatefulWidget {
  const PgAssetShowWidget({
    super.key,
    String? ppView,
    int? ppAssetId,
  })  : ppView = ppView ?? 'components',
        ppAssetId = ppAssetId ?? 1;

  final String ppView;
  final int ppAssetId;

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
                'Ativo',
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
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 1.0),
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 55.0),
                    child: FutureBuilder<List<VAssetsRow>>(
                      future: VAssetsTable().querySingleRow(
                        queryFn: (q) => q.eq(
                          'id',
                          widget.ppAssetId,
                        ),
                      ),
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
                        List<VAssetsRow> containerVAssetsRowList =
                            snapshot.data!;
                        final containerVAssetsRow =
                            containerVAssetsRowList.isNotEmpty
                                ? containerVAssetsRowList.first
                                : null;
                        return Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.cpAssetShowCardModel,
                                  updateCallback: () => setState(() {}),
                                  child: const CpAssetShowCardWidget(),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            if (FFAppState()
                                                    .stAssetNavBarOption ==
                                                'components') {
                                              return Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: FutureBuilder<
                                                    List<VAssetsMaterialsRow>>(
                                                  future:
                                                      VAssetsMaterialsTable()
                                                          .queryRows(
                                                    queryFn: (q) => q.eq(
                                                      'assetId',
                                                      containerVAssetsRow?.id,
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<VAssetsMaterialsRow>
                                                        containerVAssetsMaterialsRowList =
                                                        snapshot.data!;
                                                    return Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Componentes',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge,
                                                                ),
                                                              ),
                                                              FlutterFlowChoiceChips(
                                                                options: const [
                                                                  ChipData(
                                                                      'Uso'),
                                                                  ChipData(
                                                                      'Todos')
                                                                ],
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.choiceChipsValue =
                                                                            val?.firstOrNull),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent1,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  iconSize:
                                                                      18.0,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  iconSize:
                                                                      18.0,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                chipSpacing:
                                                                    8.0,
                                                                rowSpacing: 8.0,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    _model.choiceChipsValue !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                controller: _model
                                                                        .choiceChipsValueController ??=
                                                                    FormFieldController<
                                                                        List<
                                                                            String>>(
                                                                  ['Uso'],
                                                                ),
                                                                wrapped: false,
                                                              ),
                                                            ],
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              final gcAssetMaterials =
                                                                  containerVAssetsMaterialsRowList
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    gcAssetMaterials
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        gcAssetMaterialsIndex) {
                                                                  final gcAssetMaterialsItem =
                                                                      gcAssetMaterials[
                                                                          gcAssetMaterialsIndex];
                                                                  return Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4.0,
                                                                            color:
                                                                                Color(0x32000000),
                                                                            offset:
                                                                                Offset(0.0, 2.0),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        gcAssetMaterialsItem.description,
                                                                                        'description',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Qte: Vlr.Unit.: ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 12.0)),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            } else {
                                              return FutureBuilder<
                                                  List<VOrdersVisitsAssetsRow>>(
                                                future:
                                                    VOrdersVisitsAssetsTable()
                                                        .queryRows(
                                                  queryFn: (q) => q.eq(
                                                    'assetId',
                                                    widget.ppAssetId,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VOrdersVisitsAssetsRow>
                                                      containerVOrdersVisitsAssetsRowList =
                                                      snapshot.data!;
                                                  return Container(
                                                    width: double.infinity,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        1.0,
                                                    decoration: const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Histórico',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final gcOVAsset =
                                                                        containerVOrdersVisitsAssetsRowList
                                                                            .toList();
                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          gcOVAsset
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          const SizedBox(
                                                                              height: 8.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              gcOVAssetIndex) {
                                                                        final gcOVAssetItem =
                                                                            gcOVAsset[gcOVAssetIndex];
                                                                        return Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: const [
                                                                              BoxShadow(
                                                                                blurRadius: 3.0,
                                                                                color: Color(0x33000000),
                                                                                offset: Offset(0.0, 1.0),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 1.0,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  width: 32.0,
                                                                                  height: 32.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).accent1,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: FaIcon(
                                                                                      FontAwesomeIcons.solidCalendarAlt,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 20.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          dateTimeFormat('d/M/y', gcOVAssetItem.dateStart!),
                                                                                          maxLines: 1,
                                                                                          style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                        ),
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              'ANTES',
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                '${gcOVAssetItem.beforeUnitCode} > ${gcOVAssetItem.beforeTagDescription} > ${gcOVAssetItem.beforeTagSubDescription}',
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  gcOVAssetItem.beforeStatusDescription,
                                                                                                  '.',
                                                                                                ),
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 44.0,
                                                                                                    height: 44.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsets.all(2.0),
                                                                                                      child: InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          await Navigator.push(
                                                                                                            context,
                                                                                                            PageTransition(
                                                                                                              type: PageTransitionType.fade,
                                                                                                              child: FlutterFlowExpandedImageView(
                                                                                                                image: Image.network(
                                                                                                                  '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.beforeImgFilePath}${gcOVAssetItem.beforeImgFileName}',
                                                                                                                  fit: BoxFit.contain,
                                                                                                                ),
                                                                                                                allowRotation: false,
                                                                                                                tag: '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.beforeImgFilePath}${gcOVAssetItem.beforeImgFileName}',
                                                                                                                useHeroAnimation: true,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                        child: Hero(
                                                                                                          tag: '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.beforeImgFilePath}${gcOVAssetItem.beforeImgFileName}',
                                                                                                          transitionOnUserGestures: true,
                                                                                                          child: ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                            child: Image.network(
                                                                                                              '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.beforeImgFilePath}${gcOVAssetItem.beforeImgFileName}',
                                                                                                              width: 44.0,
                                                                                                              height: 44.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            gcOVAssetItem.beforeComments,
                                                                                                            '.',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(height: 2.0)),
                                                                                        ),
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'ATIVIDADES',
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            FutureBuilder<List<VOrdersVisitsAssetsActivitiesRow>>(
                                                                                              future: VOrdersVisitsAssetsActivitiesTable().queryRows(
                                                                                                queryFn: (q) => q.eq(
                                                                                                  'orderVisitAssetId',
                                                                                                  gcOVAssetItem.id,
                                                                                                ),
                                                                                              ),
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
                                                                                                List<VOrdersVisitsAssetsActivitiesRow> containerVOrdersVisitsAssetsActivitiesRowList = snapshot.data!;
                                                                                                return Container(
                                                                                                  decoration: const BoxDecoration(),
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                    child: Builder(
                                                                                                      builder: (context) {
                                                                                                        final gcAssetActivities = containerVOrdersVisitsAssetsActivitiesRowList.toList();
                                                                                                        return ListView.builder(
                                                                                                          padding: EdgeInsets.zero,
                                                                                                          shrinkWrap: true,
                                                                                                          scrollDirection: Axis.vertical,
                                                                                                          itemCount: gcAssetActivities.length,
                                                                                                          itemBuilder: (context, gcAssetActivitiesIndex) {
                                                                                                            final gcAssetActivitiesItem = gcAssetActivities[gcAssetActivitiesIndex];
                                                                                                            return Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                gcAssetActivitiesItem.activityDescription,
                                                                                                                '.',
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'DEPOIS',
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            if (valueOrDefault<bool>(
                                                                                              gcOVAssetItem.isMoved,
                                                                                              false,
                                                                                            ))
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  '${gcOVAssetItem.afterUnitCode} > ${gcOVAssetItem.afterTagDescription} > ${gcOVAssetItem.afterTagSubDescription}',
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Readex Pro',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            if (valueOrDefault<bool>(
                                                                                              gcOVAssetItem.isMoved,
                                                                                              false,
                                                                                            ))
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    gcOVAssetItem.beforeStatusDescription,
                                                                                                    '.',
                                                                                                  ),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Readex Pro',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 44.0,
                                                                                                    height: 44.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsets.all(2.0),
                                                                                                      child: InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          await Navigator.push(
                                                                                                            context,
                                                                                                            PageTransition(
                                                                                                              type: PageTransitionType.fade,
                                                                                                              child: FlutterFlowExpandedImageView(
                                                                                                                image: Image.network(
                                                                                                                  '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.afterImgFilePath}${gcOVAssetItem.afterImgFileName}',
                                                                                                                  fit: BoxFit.contain,
                                                                                                                ),
                                                                                                                allowRotation: false,
                                                                                                                tag: '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.afterImgFilePath}${gcOVAssetItem.afterImgFileName}',
                                                                                                                useHeroAnimation: true,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                        child: Hero(
                                                                                                          tag: '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.afterImgFilePath}${gcOVAssetItem.afterImgFileName}',
                                                                                                          transitionOnUserGestures: true,
                                                                                                          child: ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                            child: Image.network(
                                                                                                              '${FFAppConstants.appServerUrlStorage}${gcOVAssetItem.afterImgFilePath}${gcOVAssetItem.afterImgFileName}',
                                                                                                              width: 44.0,
                                                                                                              height: 44.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            gcOVAssetItem.afterComments,
                                                                                                            '.',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(height: 2.0)),
                                                                                        ),
                                                                                      ].divide(const SizedBox(height: 8.0)),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.cpAssetShowBottomNavBarModel,
                      updateCallback: () => setState(() {}),
                      child: const CpAssetShowBottomNavBarWidget(),
                    ),
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
