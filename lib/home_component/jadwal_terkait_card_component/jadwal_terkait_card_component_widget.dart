import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'jadwal_terkait_card_component_model.dart';
export 'jadwal_terkait_card_component_model.dart';

class JadwalTerkaitCardComponentWidget extends StatefulWidget {
  const JadwalTerkaitCardComponentWidget({
    super.key,
    this.title,
    String? jumlahPertemuan,
    this.endTime,
    this.startTime,
    String? content,
    this.price,
    required this.imagePath,
    required this.slug,
  })  : jumlahPertemuan = jumlahPertemuan ?? ' ',
        content = content ?? ' ';

  final String? title;
  final String jumlahPertemuan;
  final String? endTime;
  final String? startTime;
  final String content;
  final String? price;
  final String? imagePath;
  final String? slug;

  @override
  State<JadwalTerkaitCardComponentWidget> createState() =>
      _JadwalTerkaitCardComponentWidgetState();
}

class _JadwalTerkaitCardComponentWidgetState
    extends State<JadwalTerkaitCardComponentWidget> {
  late JadwalTerkaitCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JadwalTerkaitCardComponentModel());

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
        width: 360.0,
        height: 640.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        widget.imagePath!,
                        width: double.infinity,
                        height: 154.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Container(
                      height: 70.0,
                      decoration: const BoxDecoration(),
                      child: Text(
                        widget.title!,
                        maxLines: 2,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF111729),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 8.0, 0.0),
                          child: Icon(
                            Icons.access_time,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          widget.jumlahPertemuan,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Text(
                          'Sesi pertemuan',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 8.0, 0.0),
                          child: Icon(
                            Icons.calendar_month,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          widget.startTime!,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Text(
                          's/d ',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Text(
                          widget.endTime!,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Visibility(
                            visible: responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Html(
                                data: widget.content,
                                onLinkTap: (url, _, __, ___) => launchURL(url!),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    thickness: 1.0,
                    color:
                        FlutterFlowTheme.of(context).bottonPrimaryDisableColor,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rp ',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context)
                                    .buttomPrimaryDefaultColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          widget.price!,
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context)
                                    .buttomPrimaryDefaultColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'DetailPelatihanPage',
                        queryParameters: {
                          'slug': serializeParam(
                            widget.slug,
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    text: 'Lihat Detail',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context)
                          .buttomPrimaryDefaultColor,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
