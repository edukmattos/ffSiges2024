import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'card63_property_listing_model.dart';
export 'card63_property_listing_model.dart';

class Card63PropertyListingWidget extends StatefulWidget {
  const Card63PropertyListingWidget({super.key});

  @override
  State<Card63PropertyListingWidget> createState() =>
      _Card63PropertyListingWidgetState();
}

class _Card63PropertyListingWidgetState
    extends State<Card63PropertyListingWidget> {
  late Card63PropertyListingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Card63PropertyListingModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          maxWidth: 470.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 1.0),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1556020685-ae41abfc9365?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8YXBhcnRtZW50fGVufDB8fHx8MTcwNjgyMjA3M3ww&ixlib=rb-4.0.3&q=80&w=1080',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Quaint Studio SOHO',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: const [
                          TextSpan(
                            text: 'Wooster St.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ' || ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '0.4 mi',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                  Text(
                    '\$2,520',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                  ),
                  Text(
                    'per month',
                    style: FlutterFlowTheme.of(context).labelSmall,
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.bed_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          Text(
                            '4 beds',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ].divide(const SizedBox(width: 4.0)),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.bathtub_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          Text(
                            '2 baths',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ].divide(const SizedBox(width: 4.0)),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.space_dashboard_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          Text(
                            '1,250 sqft',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ].divide(const SizedBox(width: 4.0)),
                      ),
                    ),
                  ].divide(const SizedBox(width: 4.0)),
                ),
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
