import '/flutter_flow/flutter_flow_util.dart';
import '/home_component/home_carousel_component/home_carousel_component_widget.dart';
import '/home_component/play_button/play_button_widget.dart';
import '/shared_componenet/footer_component/footer_component_widget.dart';
import '/shared_componenet/top_nav/top_nav_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for HomeCarouselComponent component.
  late HomeCarouselComponentModel homeCarouselComponentModel;
  // Model for PlayButton component.
  late PlayButtonModel playButtonModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController1;

  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController2;

  int carouselCurrentIndex2 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController3;

  int carouselCurrentIndex3 = 0;

  // Model for FooterComponent component.
  late FooterComponentModel footerComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    homeCarouselComponentModel =
        createModel(context, () => HomeCarouselComponentModel());
    playButtonModel = createModel(context, () => PlayButtonModel());
    footerComponentModel = createModel(context, () => FooterComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    homeCarouselComponentModel.dispose();
    playButtonModel.dispose();
    footerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
