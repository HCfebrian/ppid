import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'search_dialog_component_widget.dart' show SearchDialogComponentWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchDialogComponentModel
    extends FlutterFlowModel<SearchDialogComponentWidget> {
  ///  Local state fields for this component.

  bool isLoadingFinished = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldPencarian widget.
  FocusNode? textFieldPencarianFocusNode;
  TextEditingController? textFieldPencarianController;
  String? Function(BuildContext, String?)?
      textFieldPencarianControllerValidator;
  // State field(s) for ListViewPecarian widget.

  PagingController<ApiPagingParams, dynamic>? listViewPecarianPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewPecarianApiCall;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldPencarianFocusNode?.dispose();
    textFieldPencarianController?.dispose();

    listViewPecarianPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForOnePageForListViewPecarian({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewPecarianPagingController?.nextPageKey?.nextPageNumber ?? 0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  PagingController<ApiPagingParams, dynamic> setListViewPecarianController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewPecarianApiCall = apiCall;
    return listViewPecarianPagingController ??=
        _createListViewPecarianController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewPecarianController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller
      ..addPageRequestListener(listViewPecarianSearchPelatihanPage);
  }

  void listViewPecarianSearchPelatihanPage(ApiPagingParams nextPageMarker) =>
      listViewPecarianApiCall!(nextPageMarker)
          .then((listViewPecarianSearchPelatihanResponse) {
        final pageItems = (SearchPelatihanCall.dataPencarian(
                  listViewPecarianSearchPelatihanResponse.jsonBody,
                )! ??
                [])
            .toList();
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPecarianPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewPecarianSearchPelatihanResponse,
                )
              : null,
        );
      });
}
