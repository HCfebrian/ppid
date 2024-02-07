import '/flutter_flow/flutter_flow_util.dart';
import '/home_component/play_button/play_button_widget.dart';
import 'kisah_sukses_card_component_widget.dart'
    show KisahSuksesCardComponentWidget;
import 'package:flutter/material.dart';

class KisahSuksesCardComponentModel
    extends FlutterFlowModel<KisahSuksesCardComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PlayButton component.
  late PlayButtonModel playButtonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    playButtonModel = createModel(context, () => PlayButtonModel());
  }

  @override
  void dispose() {
    playButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
