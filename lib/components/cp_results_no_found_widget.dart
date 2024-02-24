import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_results_no_found_model.dart';
export 'cp_results_no_found_model.dart';

class CpResultsNoFoundWidget extends StatefulWidget {
  const CpResultsNoFoundWidget({
    super.key,
    String? title,
    String? body,
  })  : title = title ?? 'Ops ...',
        body = body ?? 'Nenhum registro localizado';

  final String title;
  final String body;

  @override
  State<CpResultsNoFoundWidget> createState() => _CpResultsNoFoundWidgetState();
}

class _CpResultsNoFoundWidgetState extends State<CpResultsNoFoundWidget> {
  late CpResultsNoFoundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpResultsNoFoundModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.title,
                    'title',
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium,
                ),
                FaIcon(
                  FontAwesomeIcons.skullCrossbones,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 80.0,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.body,
                    'body',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
          ),
        ),
      ),
    );
  }
}
