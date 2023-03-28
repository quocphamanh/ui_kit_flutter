import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:izi_flutter_ui_kit/shophop/screens/ShCartFragment.dart';
import 'package:izi_flutter_ui_kit/shophop/utils/ShColors.dart';
import 'package:izi_flutter_ui_kit/shophop/utils/ShConstant.dart';
import 'package:izi_flutter_ui_kit/shophop/utils/ShStrings.dart';
import 'package:izi_flutter_ui_kit/shophop/utils/ShWidget.dart';

class ShCartScreen extends StatefulWidget {
  static String tag = '/ShCartScreen';

  @override
  ShCartScreenState createState() => ShCartScreenState();
}

class ShCartScreenState extends State<ShCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sh_white,
        title: text(sh_lbl_account,
            textColor: sh_textColorPrimary,
            fontSize: textSizeNormal,
            fontFamily: fontMedium),
        iconTheme: IconThemeData(color: sh_textColorPrimary),
      ),
      body: ShCartFragment(),
    );
  }
}
