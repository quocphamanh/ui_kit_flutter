import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:izi_flutter_ui_kit/muvi/screens/flix_faq_screen.dart';
import 'package:izi_flutter_ui_kit/muvi/utils/flix_app_localizations.dart';
import 'package:izi_flutter_ui_kit/muvi/utils/flix_app_widgets.dart';
import 'package:izi_flutter_ui_kit/muvi/utils/flix_widget_extensions.dart';
import 'package:izi_flutter_ui_kit/muvi/utils/resources/flix_colors.dart';
import 'package:izi_flutter_ui_kit/muvi/utils/resources/flix_images.dart';

class HelpScreen extends StatefulWidget {
  static String tag = '/HelpScreen';

  @override
  HelpScreenState createState() => HelpScreenState();
}

class HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: muvi_appBackground,
      appBar: appBarLayout(context, keyString(context, "help")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            subType(context, "report_problem", () {}, ic_report),
            subType(context, "help_center", () {}, ic_help),
            subType(context, "faq", () {
              launchScreen(context, FaqScreen.tag);
            }, ic_faq),
          ],
        ),
      ),
    );
  }
}
