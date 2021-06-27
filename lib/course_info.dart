import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_lesson_app/utils/utils.dart';
import 'package:group_lesson_app/widgets/box.dart';
import 'dart:math' as math;

import 'package:group_lesson_app/widgets/lesson_tile.dart';
part 'sections/top_course_info.dart';

class CoursePageInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Utils.blockHeight * 100,
          child: Column(
            children: [
              _TopcourseInfo(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(Utils.blockWidth * 5),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Box(
                              size: Utils.blockWidth * 11,
                              shouldHaveImageBackground: false,
                              curveRadius: 20,
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.add,
                                  size: Utils.blockWidth * 5,
                                ),
                              ),
                            ),
                            Box(
                              size: Utils.blockWidth * 11,
                              shouldHaveImageBackground: true,
                              curveRadius: 20,
                              assetImageUrl: Utils.profileImage3,
                            ),
                            Box(
                              size: Utils.blockWidth * 11,
                              shouldHaveImageBackground: true,
                              curveRadius: 20,
                              assetImageUrl: Utils.profileImage1,
                            ),
                            Box(
                              size: Utils.blockWidth * 11,
                              shouldHaveImageBackground: true,
                              curveRadius: 20,
                              assetImageUrl: Utils.profileImage2,
                            ),
                            Box(
                              size: Utils.blockWidth * 11,
                              shouldHaveImageBackground: true,
                              curveRadius: 20,
                              assetImageUrl: Utils.profileImage1,
                            ),
                            Box(
                              size: Utils.blockWidth * 11,
                              shouldHaveImageBackground: false,
                              curveRadius: 20,
                              child: Center(
                                child: Text(
                                  "+12",
                                  style: theme.textTheme.bodyText2!.copyWith(
                                    color: Utils.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Utils.blockHeight * 2.2 > 35
                            ? 35
                            : Utils.blockHeight * 2.2,
                      ),
                      //////////////////
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: Utils.blockHeight * 4.5,
                              width: Utils.blockWidth * 28,
                              decoration: BoxDecoration(
                                color: Utils.primaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Lessons",
                                  style: theme.textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Container(
                              height: Utils.blockHeight * 4.5,
                              width: Utils.blockWidth * 28,
                              decoration: BoxDecoration(
                                color: Utils.primaryColor.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Homeworks",
                                  style: theme.textTheme.bodyText1!.copyWith(
                                    color: theme.textTheme.subtitle1!.color,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: Utils.blockHeight * 4.5,
                              width: Utils.blockWidth * 25,
                              decoration: BoxDecoration(
                                color: Utils.primaryColor.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Chats",
                                      style:
                                          theme.textTheme.bodyText1!.copyWith(
                                        color: theme.textTheme.subtitle1!.color,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: Utils.blockWidth * 4,
                                      width: Utils.blockWidth * 4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topRight,
                                          stops: [0.5, 0.8],
                                          colors: [
                                            theme.primaryColor,
                                            Color(0xff5d2fb3),
                                          ],
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: Utils.blockWidth * 2.8,
                                            color: Colors.white,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //////////////////
                      SizedBox(
                        height: Utils.blockHeight * 2.2 > 35
                            ? 35
                            : Utils.blockHeight * 2.2,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              LessonTile(
                                chapter: "lesson 1",
                                title: "Foundation",
                                about:
                                    "in this module, you will learn about fundamental thearies and findings.",
                                photoUri: Utils.foundation,
                                time: "1 h 20min",
                              ),
                              LessonTile(
                                chapter: "lesson 2",
                                title: "Cognition",
                                about:
                                    "in this module, you will learn about cognitive psychology.",
                                photoUri: Utils.cognition,
                                time: "1 h 14min",
                              ),
                              LessonTile(
                                chapter: "lesson 2",
                                title: "Self and Others",
                                about:
                                    "in this module, you will learn about psychology examining the self and others.",
                                photoUri: Utils.selfAndOthers,
                                time: "1 h 43min",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
