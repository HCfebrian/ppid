import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_kelas_terdekat_component_model.dart';
export 'list_kelas_terdekat_component_model.dart';

class ListKelasTerdekatComponentWidget extends StatefulWidget {
  const ListKelasTerdekatComponentWidget({super.key});

  @override
  State<ListKelasTerdekatComponentWidget> createState() =>
      _ListKelasTerdekatComponentWidgetState();
}

class _ListKelasTerdekatComponentWidgetState
    extends State<ListKelasTerdekatComponentWidget> {
  late ListKelasTerdekatComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListKelasTerdekatComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 80.0,
              decoration: BoxDecoration(
                color: const Color(0xFFE7EDF3),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '10',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context)
                                .buttonPrimaryHoverColor,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'Des',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFF0F4C89),
                            fontSize: 16.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pelatihan/ Bimtek Penatausahaan Keuangan Daerah',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.access_time_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Text(
                          '4 Sesi pertemuan secara Offline',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    Text(
                      'Pelatihan ini bertujuan untuk meningkatkan pengetahuan dan pemahaman peserta tentang Keuangan Daerah.....',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ),
            ),
            Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: const Color(0xFFE9F7F1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Online',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF25AB73),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
