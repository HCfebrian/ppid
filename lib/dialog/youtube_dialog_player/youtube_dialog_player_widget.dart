import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'youtube_dialog_player_model.dart';
export 'youtube_dialog_player_model.dart';

class YoutubeDialogPlayerWidget extends StatefulWidget {
  const YoutubeDialogPlayerWidget({
    super.key,
    this.youtubeUrl,
  });

  final String? youtubeUrl;

  @override
  State<YoutubeDialogPlayerWidget> createState() =>
      _YoutubeDialogPlayerWidgetState();
}

class _YoutubeDialogPlayerWidgetState extends State<YoutubeDialogPlayerWidget> {
  late YoutubeDialogPlayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YoutubeDialogPlayerModel());

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
      width: MediaQuery.sizeOf(context).width * 0.7,
      decoration: const BoxDecoration(),
      child: FlutterFlowYoutubePlayer(
        url: widget.youtubeUrl!,
        autoPlay: false,
        looping: true,
        mute: false,
        showControls: true,
        showFullScreen: true,
        strictRelatedVideos: false,
      ),
    );
  }
}
