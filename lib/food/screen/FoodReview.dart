import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:izi_flutter_ui_kit/food/model/FoodModel.dart';
import 'package:izi_flutter_ui_kit/food/utils/FoodConstant.dart';
import 'package:izi_flutter_ui_kit/food/utils/FoodDataGenerator.dart';
import 'package:izi_flutter_ui_kit/food/utils/FoodString.dart';
import 'package:izi_flutter_ui_kit/food/utils/FoodWidget.dart';
import 'package:izi_flutter_ui_kit/food/utils/FoodExtension.dart';

import '../utils/FoodColors.dart';
import 'FoodRestaurantsDescription.dart';

class FoodReview extends StatefulWidget {
  static String tag = '/FoodReview';

  @override
  FoodReviewState createState() => FoodReviewState();
}

class FoodReviewState extends State<FoodReview> {
  List<ReviewModel> mReviewList;

  @override
  void initState() {
    super.initState();
    mReviewList = addReviewData();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(food_white);
    return Scaffold(
      backgroundColor: food_white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopBar(food_lbl_reviews),
            Container(
              margin: EdgeInsets.only(
                  left: spacing_standard_new, right: spacing_standard_new),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mReviewList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Review(mReviewList[index], index);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
