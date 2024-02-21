import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_component/pelatihan_pemerintah_card_widget/pelatihan_pemerintah_card_widget_widget.dart';
import '/shared_componenet/footer_component/footer_component_widget.dart';
import '/shared_componenet/top_nav/top_nav_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'blog_detail_page_model.dart';
export 'blog_detail_page_model.dart';

class BlogDetailPageWidget extends StatefulWidget {
  const BlogDetailPageWidget({
    super.key,
    required this.slugBlogDetail,
  });

  final String? slugBlogDetail;

  @override
  State<BlogDetailPageWidget> createState() => _BlogDetailPageWidgetState();
}

class _BlogDetailPageWidgetState extends State<BlogDetailPageWidget> {
  late BlogDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogDetailPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isLoading = true;
      });
      _model.apiResult7qn = await BlogDetailCall.call();
      if ((_model.apiResult7qn?.succeeded ?? true)) {
        setState(() {
          _model.isLoading = false;
          _model.isLoadingSuccess = true;
        });
      } else {
        setState(() {
          _model.isLoading = false;
          _model.isLoadingSuccess = false;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (!_model.isLoading && _model.isLoadingSuccess) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 90.0),
                        child: wrapWithModel(
                          model: _model.topNavModel,
                          updateCallback: () => setState(() {}),
                          child: const TopNavWidget(),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.08,
                              decoration: const BoxDecoration(),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFF6F0),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(
                                        'Artikel',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color: const Color(0xFFF2751A),
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            (_model.apiResult7qn?.jsonBody ??
                                                ''),
                                            r'''$.data[0].created_by.first_name''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.access_time_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          functions.dateFormat(getJsonField(
                                            (_model.apiResult7qn?.jsonBody ??
                                                ''),
                                            r'''$.data[0].created_at''',
                                          ).toString()),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(const SizedBox(width: 10.0)),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.08,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.08,
                              decoration: const BoxDecoration(),
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: Stack(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        functions.addBaseUrlImage(getJsonField(
                                          (_model.apiResult7qn?.jsonBody ?? ''),
                                          r'''$.data[0].photo''',
                                        ).toString()),
                                        width: double.infinity,
                                        height: functions.getImageHeightScale(
                                            MediaQuery.sizeOf(context).width),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, -1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.846,
                                        decoration: const BoxDecoration(
                                          color: Color(0x81000000),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 0.0, 20.0),
                                          child: Text(
                                            getJsonField(
                                              (_model.apiResult7qn?.jsonBody ??
                                                  ''),
                                              r'''$.data[0].title''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.08,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.08,
                              decoration: const BoxDecoration(),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.84,
                              decoration: const BoxDecoration(),
                              child: Html(
                                data: getJsonField(
                                  (_model.apiResult7qn?.jsonBody ?? ''),
                                  r'''$.data[0].content''',
                                ).toString(),
                                onLinkTap: (url, _, __, ___) => launchURL(url!),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.08,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                        child: Text(
                          'Artikel Lainnya',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF0F4C89),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: BlogHomeCall.call(
                            limit: '3',
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final wrapBlogHomeResponse = snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final artikelResponse =
                                    (BlogHomeCall.dataBlogHome(
                                              wrapBlogHomeResponse.jsonBody,
                                            )?.toList() ??
                                            [])
                                        .take(3)
                                        .toList();
                                return Wrap(
                                  spacing: 20.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children:
                                      List.generate(artikelResponse.length,
                                          (artikelResponseIndex) {
                                    final artikelResponseItem =
                                        artikelResponse[artikelResponseIndex];
                                    return PelatihanPemerintahCardWidgetWidget(
                                      key: Key(
                                          'Keykzl_${artikelResponseIndex}_of_${artikelResponse.length}'),
                                      title: getJsonField(
                                        artikelResponseItem,
                                        r'''$.title''',
                                      ).toString(),
                                      content: getJsonField(
                                        artikelResponseItem,
                                        r'''$.content''',
                                      ).toString(),
                                      imagePath: functions
                                          .addBaseUrlImage(getJsonField(
                                        artikelResponseItem,
                                        r'''$.photo''',
                                      ).toString()),
                                      slug: getJsonField(
                                        artikelResponseItem,
                                        r'''$.slug''',
                                      ).toString(),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Artikel Lainnya',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .buttomPrimaryDefaultColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.footerComponentModel,
                            updateCallback: () => setState(() {}),
                            child: const FooterComponentWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else if (_model.isLoading) {
                return Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 415.0,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'loading',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ),
                );
              } else {
                return Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Terjadi kesalahan',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
