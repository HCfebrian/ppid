import '/dialog/search_result_tile_component/search_result_tile_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_dialog_component_widget.dart' show SearchDialogComponentWidget;
import 'package:flutter/material.dart';

class SearchDialogComponentModel
    extends FlutterFlowModel<SearchDialogComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldPencarian widget.
  FocusNode? textFieldPencarianFocusNode;
  TextEditingController? textFieldPencarianController;
  String? Function(BuildContext, String?)?
      textFieldPencarianControllerValidator;
  // Model for SearchResultTileComponent component.
  late SearchResultTileComponentModel searchResultTileComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    searchResultTileComponentModel =
        createModel(context, () => SearchResultTileComponentModel());
  }

  @override
  void dispose() {
    textFieldPencarianFocusNode?.dispose();
    textFieldPencarianController?.dispose();

    searchResultTileComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
