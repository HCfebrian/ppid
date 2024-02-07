import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'play_button_model.dart';
export 'play_button_model.dart';

class PlayButtonWidget extends StatefulWidget {
  const PlayButtonWidget({super.key});

  @override
  State<PlayButtonWidget> createState() => _PlayButtonWidgetState();
}

class _PlayButtonWidgetState extends State<PlayButtonWidget> {
  late PlayButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayButtonModel());

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
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.play_arrow,
        color: FlutterFlowTheme.of(context).warning,
        size: 50.0,
      ),
    );
  }
}
