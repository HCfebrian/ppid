import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/kalender_page_component/list_kelas_terdekat_component/list_kelas_terdekat_component_widget.dart';
import '/shared_componenet/footer_component/footer_component_widget.dart';
import '/shared_componenet/top_nav/top_nav_widget.dart';
import 'kalender_page_widget.dart' show KalenderPageWidget;
import 'package:flutter/material.dart';

class KalenderPageModel extends FlutterFlowModel<KalenderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for ListKelasTerdekatComponent component.
  late ListKelasTerdekatComponentModel listKelasTerdekatComponentModel1;
  // Model for ListKelasTerdekatComponent component.
  late ListKelasTerdekatComponentModel listKelasTerdekatComponentModel2;
  // Model for ListKelasTerdekatComponent component.
  late ListKelasTerdekatComponentModel listKelasTerdekatComponentModel3;
  // Model for ListKelasTerdekatComponent component.
  late ListKelasTerdekatComponentModel listKelasTerdekatComponentModel4;
  // Model for FooterComponent component.
  late FooterComponentModel footerComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    listKelasTerdekatComponentModel1 =
        createModel(context, () => ListKelasTerdekatComponentModel());
    listKelasTerdekatComponentModel2 =
        createModel(context, () => ListKelasTerdekatComponentModel());
    listKelasTerdekatComponentModel3 =
        createModel(context, () => ListKelasTerdekatComponentModel());
    listKelasTerdekatComponentModel4 =
        createModel(context, () => ListKelasTerdekatComponentModel());
    footerComponentModel = createModel(context, () => FooterComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    listKelasTerdekatComponentModel1.dispose();
    listKelasTerdekatComponentModel2.dispose();
    listKelasTerdekatComponentModel3.dispose();
    listKelasTerdekatComponentModel4.dispose();
    footerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
