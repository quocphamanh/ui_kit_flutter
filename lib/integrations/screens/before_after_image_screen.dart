import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:izi_flutter_ui_kit/integrations/utils/colors.dart';
import 'package:izi_flutter_ui_kit/integrations/utils/common.dart';
import 'package:izi_flutter_ui_kit/main/utils/beforeAfter/BeforeAfter.dart';

class BeforeAfterImageScreen extends StatefulWidget {
  static String tag = '/BeforeAfterImageScreen';

  @override
  BeforeAfterImageScreenState createState() => BeforeAfterImageScreenState();
}

class BeforeAfterImageScreenState extends State<BeforeAfterImageScreen> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(primaryColor);
    return Scaffold(
      appBar: getAppBar(context, "Before After Image"),
      body: Center(
        child: BeforeAfter(
          beforeImage: Image.asset('images/integrations/img/after.jpg'),
          afterImage: Image.asset('images/integrations/img/before.jpg'),
        ),
      ),
    );
  }
}
