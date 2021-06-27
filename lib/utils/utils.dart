import 'package:flutter/material.dart';

class Utils {
  static final Color primaryColor = Color(0xFF110f92);
  static final Color fontColor = Color(0xFF27282E);
  static final Color backgroundColor = Color(0xFFF5F6FC);
  static final Color subtitleAndfontColor = Color(0xFF9EA2BF);

  static final String profileImage = "assets/images/profile_image.jpg";
  static final String profileImage1 = "assets/images/profile_image_2.jpg";
  static final String profileImage2 = "assets/images/profile_image_3.jpg";
  static final String profileImage3 = "assets/images/profile_image_4.jpg";
  static final String spacePsy = "assets/images/space_psy.jpg";
  static final String jellyfish = "assets/images/jelly_fish.jpg";
  static final String foundation = "assets/images/foundation.jpg";
  static final String selfAndOthers = "assets/images/self_and_others.jpg";
  static final String castle = "assets/images/castle.jpg";
  static final String cognition = "assets/images/cognition.jpg";

  static late double blockHeight;
  static late double blockWidth;

  static void getBlockWidthAndHeight(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      blockHeight = MediaQuery.of(context).size.height / 100;
      blockWidth = MediaQuery.of(context).size.width / 100;
    } else {
      blockHeight = MediaQuery.of(context).size.width / 100;
      blockWidth = MediaQuery.of(context).size.height / 100;
    }
  }

  static ThemeData themeData(BuildContext context) {
    // print(blockHeight);
    getBlockWidthAndHeight(context);
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      fontFamily: "TT Firs Neue Regular",
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: backgroundColor,
          // fontSize: 20,
          fontSize: blockWidth * 3.3,
        ),
        bodyText2: TextStyle(
          color: fontColor,
          // fontSize: 20,
          fontSize: blockWidth * 3.3,
        ),
        headline3: TextStyle(
          color: fontColor,
          fontWeight: FontWeight.bold,
          fontSize: blockWidth * 7.5,
        ),
        subtitle1: TextStyle(
          color: subtitleAndfontColor,
          fontSize: blockWidth * 2.65,
          // fontSize: 16,
        ),
      ),
      iconTheme: IconThemeData(color: subtitleAndfontColor),
    );
  }
}
