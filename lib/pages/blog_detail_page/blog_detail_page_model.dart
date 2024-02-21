import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/shared_componenet/footer_component/footer_component_widget.dart';
import '/shared_componenet/top_nav/top_nav_widget.dart';
import 'blog_detail_page_widget.dart' show BlogDetailPageWidget;
import 'package:flutter/material.dart';

class BlogDetailPageModel extends FlutterFlowModel<BlogDetailPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  bool isLoadingSuccess = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (blogDetail)] action in BlogDetailPage widget.
  ApiCallResponse? apiResult7qn;
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for FooterComponent component.
  late FooterComponentModel footerComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    footerComponentModel = createModel(context, () => FooterComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    footerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
