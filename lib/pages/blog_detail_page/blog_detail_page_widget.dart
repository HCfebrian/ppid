import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_component/pelatihan_pemerintah_card_widget/pelatihan_pemerintah_card_widget_widget.dart';
import '/shared_componenet/footer_component/footer_component_widget.dart';
import '/shared_componenet/top_nav/top_nav_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'blog_detail_page_model.dart';
export 'blog_detail_page_model.dart';

class BlogDetailPageWidget extends StatefulWidget {
  const BlogDetailPageWidget({super.key});

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 90.0),
                  child: wrapWithModel(
                    model: _model.topNavModel,
                    updateCallback: () => setState(() {}),
                    child: const TopNavWidget(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                                    'Fiqih Muhammad',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
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
                                    '11 Januari 2023',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
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
                                  'https://picsum.photos/seed/97/600',
                                  width: double.infinity,
                                  height: functions.getImageHeightScale(
                                      MediaQuery.sizeOf(context).width),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 20.0),
                                    child: Text(
                                      'Pelatihan Manajemen Kepegawaian BKD Prov Kalimantan Selatan',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
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
                        child: Text(
                          'Tanggal 14-15 Oktober 2021 telah terlaksananya pelatihan / Bimtek Manajemen Kepegawaian yang diikuti oleh Badan Kepegawaian Daerah (BKD) Provinsi Kalimantan Selatan. Pelatihan / Bimtek ini dilaksanakan dengan menerapkan protokol kesehatan Covid-19.Pelatihan / Bimtek ini diadakan akan adanya kesadaran bahwa setiap Instansi Pemerintah wajib menyusun kebutuhan jumlah dan jenis jabatan Pegawai berdasarkan analisis jabatan dan analisis beban kerja. Penyusunan dan penetapan kebutuhan jumlah dan jenis jabatan Pegawai dilakukan sesuai dengan siklus anggaran dan prioritas kebutuhan serta menghasilkan Pegawai Negeri Sipil yang professional, memiliki nilai dasar, etika profesi, bebas dari intervensi politik, dan bersih dari praktik KKN adalah tujuan dari Diklat Manajemen Kepegawaian Diklat Motivasi Kinerja.Pelatihan / Bimtek ini meliputi:\n\n● System Kepegawaian\n● Analis Jabaran\n● Analis Beban Kerja\n● Administrasi kepegawaian\n\nPelatihan / Bimtek Manajemen Kepegawaian ini diadakan selama dua hari dengan tujuan menghasilkan Pegawai Negeri Sipil yang professional, memiliki nilai dasar, etika profesi, bebas dari intervensi politik, dan bersih dari praktik KKN.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: Text(
                    'Artikel Lainnya',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF0F4C89),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
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
                          final artikelResponse = (BlogHomeCall.dataBlogHome(
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
                            children: List.generate(artikelResponse.length,
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
                                imagePath:
                                    functions.addBaseUrlImage(getJsonField(
                                  artikelResponseItem,
                                  r'''$.photo''',
                                ).toString()),
                              );
                            }),
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Artikel Lainnya',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
          ),
        ),
      ),
    );
  }
}
