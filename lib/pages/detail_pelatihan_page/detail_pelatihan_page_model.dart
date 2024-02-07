import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/shared_componenet/footer_component/footer_component_widget.dart';
import '/shared_componenet/top_nav/top_nav_widget.dart';
import 'detail_pelatihan_page_widget.dart' show DetailPelatihanPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DetailPelatihanPageModel
    extends FlutterFlowModel<DetailPelatihanPageWidget> {
  ///  Local state fields for this page.

  bool isLoadSuccess = false;

  bool isLoadComplate = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (detilPelatihan)] action in DetailPelatihanPage widget.
  ApiCallResponse? apiResulta12;
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for Carousel widget.
  CarouselController? carouselController1;

  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController2;

  int carouselCurrentIndex2 = 1;

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
    expandableController.dispose();
    footerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
