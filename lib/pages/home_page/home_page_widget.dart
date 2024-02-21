import '/backend/api_requests/api_calls.dart';
import '/dialog/youtube_dialog_player/youtube_dialog_player_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home_component/faq_card_component/faq_card_component_widget.dart';
import '/home_component/home_carousel_component/home_carousel_component_widget.dart';
import '/home_component/jadwal_terkait_card_component/jadwal_terkait_card_component_widget.dart';
import '/home_component/kisah_sukses_card_component/kisah_sukses_card_component_widget.dart';
import '/home_component/pelatihan_pemerintah_card_widget/pelatihan_pemerintah_card_widget_widget.dart';
import '/home_component/play_button/play_button_widget.dart';
import '/home_component/tentang_pelatihan_card_component/tentang_pelatihan_card_component_widget.dart';
import '/shared_componenet/footer_component/footer_component_widget.dart';
import '/shared_componenet/top_nav/top_nav_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.topNavModel,
                  updateCallback: () => setState(() {}),
                  child: const TopNavWidget(),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: wrapWithModel(
                    model: _model.homeCarouselComponentModel,
                    updateCallback: () => setState(() {}),
                    child: const HomeCarouselComponentWidget(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            96.0, 0.0, 96.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: AboutUsHomePageCall.call(),
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
                            final rowAboutUsHomePageResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Builder(
                                    builder: (context) => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  const AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child:
                                                      YoutubeDialogPlayerWidget(
                                                    youtubeUrl: getJsonField(
                                                      AboutUsHomePageCall
                                                          .dataResponse(
                                                        rowAboutUsHomePageResponse
                                                            .jsonBody,
                                                      )?.first,
                                                      r'''$.youtube_url''',
                                                    ).toString(),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                            child: Image.network(
                                              functions.getYoutubeThumbnail(
                                                  getJsonField(
                                                AboutUsHomePageCall
                                                        .dataResponse(
                                                  rowAboutUsHomePageResponse
                                                      .jsonBody,
                                                )!
                                                    .first,
                                                r'''$.youtube_url''',
                                              ).toString()),
                                              width: 487.0,
                                              height: 365.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: 487.0,
                                              height: 365.0,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.playButtonModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const PlayButtonWidget(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 98.0,
                                  decoration: const BoxDecoration(),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 32.0),
                                        child: Text(
                                          getJsonField(
                                            AboutUsHomePageCall.dataResponse(
                                              rowAboutUsHomePageResponse
                                                  .jsonBody,
                                            )!
                                                .first,
                                            r'''$.title''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Inter',
                                                color: const Color(0xFF0F4C89),
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                      ),
                                      Html(
                                        data: getJsonField(
                                          AboutUsHomePageCall.dataResponse(
                                            rowAboutUsHomePageResponse.jsonBody,
                                          )!
                                              .first,
                                          r'''$.content''',
                                        ).toString(),
                                        onLinkTap: (url, _, __, ___) =>
                                            launchURL(url!),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Selengkapnya',
                                        options: FFButtonOptions(
                                          height: 44.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .buttomPrimaryDefaultColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          elevation: 2.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(96.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Tentang Pelatihan Pemerintahan\nby SUHU',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF0F4C89),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: ServiceFetchCall.call(),
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
                      final wrapServiceFetchResponse = snapshot.data!;
                      return Builder(
                        builder: (context) {
                          final dataService = ServiceFetchCall.data(
                                wrapServiceFetchResponse.jsonBody,
                              )?.toList() ??
                              [];
                          return Wrap(
                            spacing: 20.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(dataService.length,
                                (dataServiceIndex) {
                              final dataServiceItem =
                                  dataService[dataServiceIndex];
                              return TentangPelatihanCardComponentWidget(
                                key: Key(
                                    'Keyduk_${dataServiceIndex}_of_${dataService.length}'),
                                titleCardComponent: getJsonField(
                                  dataServiceItem,
                                  r'''$.title''',
                                ).toString(),
                                descriptionCardComponent: getJsonField(
                                  dataServiceItem,
                                  r'''$.description''',
                                ).toString(),
                                imageUrl:
                                    functions.addBaseUrlImage(getJsonField(
                                  dataServiceItem,
                                  r'''$.image''',
                                ).toString()),
                              );
                            }),
                          );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            94.0, 0.0, 0.0, 12.0),
                        child: Text(
                          'Cari Pelatihan',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFDDB439),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            94.0, 0.0, 0.0, 46.0),
                        child: Text(
                          'Jadwal Pelatihan Terdekat',
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Inter',
                                color: const Color(0xFF0F4C89),
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 350.0,
                            height: 626.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEFF3FF),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 36.0),
                                          child: Text(
                                            'Tingkatkan Kompetensi\nSumber Daya Manusia',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: const Color(0xFF0F4C89),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Kami telah mempersiapkan program pelatihan terbaik untuk Anda',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color: const Color(0xFF364153),
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('KalenderPage');
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pelatihan Lainnya',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .buttomPrimaryDefaultColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 550.0,
                                    decoration: const BoxDecoration(),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: TrainingFetchCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final carouselTrainingFetchResponse =
                                            snapshot.data!;
                                        return Builder(
                                          builder: (context) {
                                            final dataTraining =
                                                TrainingFetchCall
                                                        .dataResponseTraining(
                                                      carouselTrainingFetchResponse
                                                          .jsonBody,
                                                    )?.toList() ??
                                                    [];
                                            return SizedBox(
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: CarouselSlider.builder(
                                                itemCount: dataTraining.length,
                                                itemBuilder: (context,
                                                    dataTrainingIndex, _) {
                                                  final dataTrainingItem =
                                                      dataTraining[
                                                          dataTrainingIndex];
                                                  return JadwalTerkaitCardComponentWidget(
                                                    key: Key(
                                                        'Key87x_${dataTrainingIndex}_of_${dataTraining.length}'),
                                                    title: getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.title''',
                                                    ).toString(),
                                                    jumlahPertemuan:
                                                        getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.session''',
                                                    ).toString(),
                                                    endTime: getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.end_date''',
                                                    ).toString(),
                                                    startTime: getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.start_date''',
                                                    ).toString(),
                                                    content: getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.description''',
                                                    ).toString(),
                                                    price: getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.price''',
                                                    ).toString(),
                                                    imagePath: functions
                                                        .addBaseUrlImage(
                                                            getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.thumbnail''',
                                                    ).toString()),
                                                    slug: getJsonField(
                                                      dataTrainingItem,
                                                      r'''$.slug''',
                                                    ).toString(),
                                                  );
                                                },
                                                carouselController: _model
                                                        .carouselController1 ??=
                                                    CarouselController(),
                                                options: CarouselOptions(
                                                  initialPage: min(1,
                                                      dataTraining.length - 1),
                                                  viewportFraction: 0.33,
                                                  disableCenter: true,
                                                  enlargeCenterPage: false,
                                                  enlargeFactor: 0.0,
                                                  enableInfiniteScroll: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  autoPlay: false,
                                                  onPageChanged: (index, _) =>
                                                      _model.carouselCurrentIndex1 =
                                                          index,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ],
                            ),
                          ),
                        ].addToStart(const SizedBox(width: 94.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 60.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF8FAFF),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 350.0,
                                height: 420.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F3FF),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Text(
                                                'Kisah Sukses',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              const Color(0xFFDDB439),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 36.0),
                                              child: Text(
                                                'Apa Kata Mereka?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              const Color(0xFF0F4C89),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              'Temukan pengalaman baru dan kisah sukses dengan program pelatihan & sertifikasi terbaik kami',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF364153),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lihat Testimoni',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .buttomPrimaryDefaultColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 350.0,
                                        decoration: const BoxDecoration(),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: TestimoniFetchCall.call(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final carouselTestimoniFetchResponse =
                                                snapshot.data!;
                                            return Builder(
                                              builder: (context) {
                                                final dataTestimoni =
                                                    TestimoniFetchCall
                                                            .dataTestimoni(
                                                          carouselTestimoniFetchResponse
                                                              .jsonBody,
                                                        )?.toList() ??
                                                        [];
                                                return SizedBox(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  child: CarouselSlider.builder(
                                                    itemCount:
                                                        dataTestimoni.length,
                                                    itemBuilder: (context,
                                                        dataTestimoniIndex, _) {
                                                      final dataTestimoniItem =
                                                          dataTestimoni[
                                                              dataTestimoniIndex];
                                                      return Builder(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
                                                                  insetPadding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  alignment: const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                                  child:
                                                                      WebViewAware(
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          YoutubeDialogPlayerWidget(
                                                                        youtubeUrl:
                                                                            getJsonField(
                                                                          dataTestimoniItem,
                                                                          r'''$.youtube_url''',
                                                                        ).toString(),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));
                                                          },
                                                          child:
                                                              KisahSuksesCardComponentWidget(
                                                            key: Key(
                                                                'Keyc5v_${dataTestimoniIndex}_of_${dataTestimoni.length}'),
                                                            title: getJsonField(
                                                              dataTestimoniItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            description:
                                                                getJsonField(
                                                              dataTestimoniItem,
                                                              r'''$.description''',
                                                            ).toString(),
                                                            imagePath: functions
                                                                .getYoutubeThumbnail(
                                                                    getJsonField(
                                                              dataTestimoniItem,
                                                              r'''$.youtube_url''',
                                                            ).toString()),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    carouselController: _model
                                                            .carouselController2 ??=
                                                        CarouselController(),
                                                    options: CarouselOptions(
                                                      initialPage: min(
                                                          1,
                                                          dataTestimoni.length -
                                                              1),
                                                      viewportFraction: 0.33,
                                                      disableCenter: true,
                                                      enlargeCenterPage: false,
                                                      enlargeFactor: 0.0,
                                                      enableInfiniteScroll:
                                                          true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      autoPlay: false,
                                                      onPageChanged: (index,
                                                              _) =>
                                                          _model.carouselCurrentIndex2 =
                                                              index,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    const Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ].addToStart(const SizedBox(width: 94.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Text(
                          'Pelatihan Pemerintah by SUHU Updates',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context)
                                    .buttomPrimaryDefaultColor,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 64.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: BlogHomeCall.call(),
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
                                final pelatihanDataHome =
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
                                      List.generate(pelatihanDataHome.length,
                                          (pelatihanDataHomeIndex) {
                                    final pelatihanDataHomeItem =
                                        pelatihanDataHome[
                                            pelatihanDataHomeIndex];
                                    return PelatihanPemerintahCardWidgetWidget(
                                      key: Key(
                                          'Keyvt3_${pelatihanDataHomeIndex}_of_${pelatihanDataHome.length}'),
                                      title: getJsonField(
                                        pelatihanDataHomeItem,
                                        r'''$.title''',
                                      ).toString(),
                                      content: getJsonField(
                                        pelatihanDataHomeItem,
                                        r'''$.content''',
                                      ).toString(),
                                      imagePath: functions
                                          .addBaseUrlImage(getJsonField(
                                        pelatihanDataHomeItem,
                                        r'''$.photo''',
                                      ).toString()),
                                      slug: getJsonField(
                                        pelatihanDataHomeItem,
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
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 96.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pelatihan Lainnya',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context)
                                      .buttomPrimaryDefaultColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Text(
                            'Dipercaya lebih dari 100 Instansi Pemerintah dan Perusahaan lainnya',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFFDDB439),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      Text(
                        'Klien Kami\n',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context)
                                      .buttomPrimaryDefaultColor,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 100.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: PatnershipFetchCall.call(),
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
                            final carouselPatnershipFetchResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final dataListPartner =
                                    PatnershipFetchCall.dataPartnership(
                                          carouselPatnershipFetchResponse
                                              .jsonBody,
                                        )?.toList() ??
                                        [];
                                return SizedBox(
                                  width: double.infinity,
                                  height: 174.0,
                                  child: CarouselSlider.builder(
                                    itemCount: dataListPartner.length,
                                    itemBuilder:
                                        (context, dataListPartnerIndex, _) {
                                      final dataListPartnerItem =
                                          dataListPartner[dataListPartnerIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            functions
                                                .addBaseUrlImage(getJsonField(
                                              dataListPartnerItem,
                                              r'''$.logo''',
                                            ).toString()),
                                            height: 100.0,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      );
                                    },
                                    carouselController:
                                        _model.carouselController3 ??=
                                            CarouselController(),
                                    options: CarouselOptions(
                                      initialPage:
                                          min(0, dataListPartner.length - 1),
                                      viewportFraction: 0.2,
                                      disableCenter: true,
                                      enlargeCenterPage: false,
                                      enlargeFactor: 0.0,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: true,
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayInterval:
                                          const Duration(milliseconds: (800 + 4000)),
                                      autoPlayCurve: Curves.linear,
                                      pauseAutoPlayInFiniteScroll: true,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex3 = index,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/CTA_Konsultasi.png',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: Text(
                          'FAQ',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context)
                                    .buttomPrimaryDefaultColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 100.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: FaqFetchCall.call(),
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
                            final wrapFaqFetchResponse = snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final faq = FaqFetchCall.data(
                                      wrapFaqFetchResponse.jsonBody,
                                    )?.toList() ??
                                    [];
                                return Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children:
                                      List.generate(faq.length, (faqIndex) {
                                    final faqItem = faq[faqIndex];
                                    return FaqCardComponentWidget(
                                      key: Key(
                                          'Keyzmm_${faqIndex}_of_${faq.length}'),
                                      titleCard: getJsonField(
                                        faqItem,
                                        r'''$.question''',
                                      ).toString(),
                                      descriptionCard: getJsonField(
                                        faqItem,
                                        r'''$.answer''',
                                      ).toString(),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                wrapWithModel(
                  model: _model.footerComponentModel,
                  updateCallback: () => setState(() {}),
                  child: const FooterComponentWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
