import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tentang_pelatihan_card_component_model.dart';
export 'tentang_pelatihan_card_component_model.dart';

class TentangPelatihanCardComponentWidget extends StatefulWidget {
  const TentangPelatihanCardComponentWidget({
    super.key,
    required this.titleCardComponent,
    required this.descriptionCardComponent,
    this.imageUrl,
  });

  final String? titleCardComponent;
  final String? descriptionCardComponent;
  final String? imageUrl;

  @override
  State<TentangPelatihanCardComponentWidget> createState() =>
      _TentangPelatihanCardComponentWidgetState();
}

class _TentangPelatihanCardComponentWidgetState
    extends State<TentangPelatihanCardComponentWidget> {
  late TentangPelatihanCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TentangPelatihanCardComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 276.0,
      height: 312.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.imageUrl!,
                width: 60.0,
                height: 60.0,
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.titleCardComponent,
                'Pemateri Ahli',
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Inter',
                    color:
                        FlutterFlowTheme.of(context).buttomPrimaryDefaultColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget.descriptionCardComponent,
                'Memaksimalkan pelatihan/ Bimtek Anda bersama para Pemateri ahli dan professional di bidangnya',
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Inter',
                    color: const Color(0xFF364153),
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
