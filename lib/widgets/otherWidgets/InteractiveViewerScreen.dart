import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:izi_flutter_ui_kit/main/utils/AppConstant.dart';
import 'package:izi_flutter_ui_kit/main/utils/AppWidget.dart';

class InteractiveViewerScreen extends StatefulWidget {
  static String tag = '/InteractiveViewerScreen';

  @override
  InteractiveViewerScreenState createState() => InteractiveViewerScreenState();
}

class InteractiveViewerScreenState extends State<InteractiveViewerScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Interactive Viewer'),
      body: InteractiveViewer(
        child: CachedNetworkImage(
            imageUrl: SampleImageUrl,
            placeholder: (_, s) => placeholderWidget()).center(),
        boundaryMargin: EdgeInsets.all(5.0),
        minScale: 0.1,
        maxScale: 5.0,
        onInteractionEnd: (s) {
          print(s);
        },
        panEnabled: true,
        scaleEnabled: true,
      ),
    );
  }
}
