import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'faq_card_component_model.dart';
export 'faq_card_component_model.dart';

class FaqCardComponentWidget extends StatefulWidget {
  const FaqCardComponentWidget({
    super.key,
    required this.titleCard,
    required this.descriptionCard,
  });

  final String? titleCard;
  final String? descriptionCard;

  @override
  State<FaqCardComponentWidget> createState() => _FaqCardComponentWidgetState();
}

class _FaqCardComponentWidgetState extends State<FaqCardComponentWidget> {
  late FaqCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqCardComponentModel());

    _model.expandableController = ExpandableController(initialExpanded: false);
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
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.4,
        constraints: BoxConstraints(
          minWidth: MediaQuery.sizeOf(context).width * 0.2,
          maxWidth: MediaQuery.sizeOf(context).width * 0.4,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).buttomPrimaryDefaultColor,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            color: const Color(0x00000000),
            child: ExpandableNotifier(
              controller: _model.expandableController,
              child: ExpandablePanel(
                header: Text(
                  widget.titleCard!,
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Inter',
                        color: const Color(0xFFDDB439),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                collapsed: Container(
                  width: 100.0,
                  decoration: const BoxDecoration(),
                ),
                expanded: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.descriptionCard!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                    ),
                  ],
                ),
                theme: const ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: true,
                  expandIcon: Icons.chevron_right_rounded,
                  collapseIcon: Icons.keyboard_arrow_down,
                  iconColor: Color(0xFFE8EEF9),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
