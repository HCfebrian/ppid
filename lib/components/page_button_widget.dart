import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'page_button_model.dart';
export 'page_button_model.dart';

class PageButtonWidget extends StatefulWidget {
  const PageButtonWidget({
    super.key,
    required this.pageNumber,
    required this.isActive,
  });

  final String? pageNumber;
  final bool? isActive;

  @override
  State<PageButtonWidget> createState() => _PageButtonWidgetState();
}

class _PageButtonWidgetState extends State<PageButtonWidget> {
  late PageButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.isActive ?? false) {
          return FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: widget.pageNumber!,
            options: FFButtonOptions(
              width: 40.0,
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).buttomPrimaryDefaultColor,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
              elevation: 3.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          );
        } else {
          return FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: widget.pageNumber!,
            options: FFButtonOptions(
              width: 40.0,
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Colors.white,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
              elevation: 3.0,
              borderSide: const BorderSide(
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          );
        }
      },
    );
  }
}
