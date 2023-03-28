import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:izi_flutter_ui_kit/Quiz/Screens/quizEmailRequest.dart';
import 'package:izi_flutter_ui_kit/Quiz/model/QuizModels.dart';
import 'package:izi_flutter_ui_kit/Quiz/utils/QuizColors.dart';
import 'package:izi_flutter_ui_kit/Quiz/utils/QuizConstant.dart';
import 'package:izi_flutter_ui_kit/Quiz/utils/QuizDataGenerator.dart';
import 'package:izi_flutter_ui_kit/Quiz/utils/QuizExtension.dart';
import 'package:izi_flutter_ui_kit/Quiz/utils/QuizStrings.dart';
import 'package:izi_flutter_ui_kit/Quiz/utils/QuizWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class QuizContactUs extends StatefulWidget {
  static String tag = '/QuizContactUs';

  @override
  _QuizContactUsState createState() => _QuizContactUsState();
}

class _QuizContactUsState extends State<QuizContactUs> {
  List<QuizContactUsModel> mList;

  @override
  void initState() {
    super.initState();
    mList = quizContactUsData();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(quiz_app_background);
    return Scaffold(
        backgroundColor: quiz_app_background,
        appBar: AppBar(
          title: text(quiz_lbl_contact_us,
              fontSize: textSizeNormal, fontFamily: fontMedium),
          leading: Icon(
            Icons.arrow_back,
            color: quiz_colorPrimary,
            size: 30,
          ).onTap(() {
            Navigator.of(context).pop();
          }),
          centerTitle: true,
          backgroundColor: quiz_app_background,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: quiz_app_background,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      itemCount: mList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          print(index);
                          if (index == 0) {
                            setState(() async {
                              var phone = "+00 356 646 234";
                              launch("tel:$phone");
                            });
                          } else {
                            setState(() {
                              launchScreen(context, QuizEmailRequest.tag);
                            });
                          }
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  text(mList[index].title,
                                      textColor: quiz_textColorPrimary,
                                      fontSize: textSizeLargeMedium,
                                      fontFamily: fontSemibold),
                                  text(mList[index].subtitle,
                                      textColor: quiz_textColorSecondary,
                                      fontSize: textSizeMedium,
                                      fontFamily: fontRegular),
                                ],
                              ).paddingOnly(left: 16, right: 16),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                              color: blackColor,
                            ).paddingOnly(right: 16),
                          ],
                        ),
                      ).paddingOnly(top: 16, bottom: 16),
                    )
                  ]),
            ),
          ),
        ));
  }
}
