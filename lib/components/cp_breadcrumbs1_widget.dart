import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cp_breadcrumbs1_model.dart';
export 'cp_breadcrumbs1_model.dart';

class CpBreadcrumbs1Widget extends StatefulWidget {
  const CpBreadcrumbs1Widget({super.key});

  @override
  State<CpBreadcrumbs1Widget> createState() => _CpBreadcrumbs1WidgetState();
}

class _CpBreadcrumbs1WidgetState extends State<CpBreadcrumbs1Widget> {
  late CpBreadcrumbs1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpBreadcrumbs1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: Container(
        width: double.infinity,
        height: 44.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 2.0, 0.0, 2.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.home_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 22.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 16.0,
                ),
              ),
              Container(
                height: 100.0,
                decoration: const BoxDecoration(),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    'Page Title',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 16.0,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Container(
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'Page Details',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
