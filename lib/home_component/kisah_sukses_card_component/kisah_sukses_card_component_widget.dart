import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_component/play_button/play_button_widget.dart';
import 'package:flutter/material.dart';
import 'kisah_sukses_card_component_model.dart';
export 'kisah_sukses_card_component_model.dart';

class KisahSuksesCardComponentWidget extends StatefulWidget {
  const KisahSuksesCardComponentWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final String? title;
  final String? description;
  final String? imagePath;

  @override
  State<KisahSuksesCardComponentWidget> createState() =>
      _KisahSuksesCardComponentWidgetState();
}

class _KisahSuksesCardComponentWidgetState
    extends State<KisahSuksesCardComponentWidget> {
  late KisahSuksesCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KisahSuksesCardComponentModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        width: 320.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: const Color(0xFFCDD5E0),
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          widget.imagePath!,
                          width: double.infinity,
                          height: 154.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        height: 154.0,
                        decoration: const BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.playButtonModel,
                          updateCallback: () => setState(() {}),
                          child: const PlayButtonWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                    child: Text(
                      widget.title!,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFF111729),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Text(
                      widget.description!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFF677489),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
