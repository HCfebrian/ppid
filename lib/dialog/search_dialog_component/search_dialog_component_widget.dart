import '/backend/api_requests/api_calls.dart';
import '/dialog/search_result_tile_component/search_result_tile_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'search_dialog_component_model.dart';
export 'search_dialog_component_model.dart';

class SearchDialogComponentWidget extends StatefulWidget {
  const SearchDialogComponentWidget({super.key});

  @override
  State<SearchDialogComponentWidget> createState() =>
      _SearchDialogComponentWidgetState();
}

class _SearchDialogComponentWidgetState
    extends State<SearchDialogComponentWidget> {
  late SearchDialogComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchDialogComponentModel());

    _model.textFieldPencarianController ??= TextEditingController();
    _model.textFieldPencarianFocusNode ??= FocusNode();

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
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        width: 550.0,
        height: 770.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: const Color(0xFFCDD5E0),
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cari Pelatihan',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: const Color(0xFF677489),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 30.0,
                            fillColor: const Color(0xFF677489),
                            icon: Icon(
                              Icons.close_outlined,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 15.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.search_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.textFieldPencarianController,
                                  focusNode: _model.textFieldPencarianFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textFieldPencarianController',
                                    const Duration(milliseconds: 500),
                                    () async {
                                      setState(() => _model
                                          .listViewPecarianPagingController
                                          ?.refresh());
                                      await _model
                                          .waitForOnePageForListViewPecarian(
                                              minWait: 500);
                                    },
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText:
                                        'Cari Pelatihan, cth: Pelatihan SPBE, Pelatihan SAKIP,',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model
                                      .textFieldPencarianControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: PagedListView<ApiPagingParams, dynamic>(
                        pagingController: _model.setListViewPecarianController(
                          (nextPageMarker) => SearchPelatihanCall.call(
                            page: valueOrDefault<String>(
                              nextPageMarker.nextPageNumber.toString(),
                              '0',
                            ),
                            searchQuery:
                                _model.textFieldPencarianController.text,
                          ),
                        ),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        reverse: false,
                        scrollDirection: Axis.vertical,
                        builderDelegate: PagedChildBuilderDelegate<dynamic>(
                          // Customize what your widget looks like when it's loading the first page.
                          firstPageProgressIndicatorBuilder: (_) => Center(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Customize what your widget looks like when it's loading another page.
                          newPageProgressIndicatorBuilder: (_) => Center(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          itemBuilder: (context, _, dataPencarianIndex) {
                            final dataPencarianItem = _model
                                .listViewPecarianPagingController!
                                .itemList![dataPencarianIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'DetailPelatihanPage',
                                  queryParameters: {
                                    'slug': serializeParam(
                                      getJsonField(
                                        dataPencarianItem,
                                        r'''$.slug''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: SearchResultTileComponentWidget(
                                key: Key(
                                    'Keyfgl_${dataPencarianIndex}_of_${_model.listViewPecarianPagingController!.itemList!.length}'),
                                imagePath:
                                    functions.addBaseUrlImage(getJsonField(
                                  dataPencarianItem,
                                  r'''$.thumbnail''',
                                ).toString()),
                                price: getJsonField(
                                  dataPencarianItem,
                                  r'''$.price''',
                                ).toString(),
                                title: getJsonField(
                                  dataPencarianItem,
                                  r'''$.title''',
                                ).toString(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
