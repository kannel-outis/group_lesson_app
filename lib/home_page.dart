import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_lesson_app/course_info.dart';
import 'package:group_lesson_app/lesson_page.dart';
import 'package:group_lesson_app/widgets/tasks_tile.dart';

import 'utils/utils.dart';
import 'widgets/box.dart';
part 'sections/top_level.dart';
part 'sections/card_sec.dart';
part 'sections/recommended.dart';
part 'sections/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(
          //     left: 40, right: 40, top: media.padding.top + 40, bottom: 20),
          padding: EdgeInsets.only(
            left: Utils.blockWidth * 6.5 > 45 ? 45 : Utils.blockWidth * 6.5,
            right: Utils.blockWidth * 6.5 > 45 ? 45 : Utils.blockWidth * 6.5,
            top: media.padding.top + 40,
            bottom: 20,
          ),
          child: Column(
            children: [
              _TopLevel(theme: theme),
              // SizedBox(height: 70),
              SizedBox(
                  height:
                      Utils.blockHeight * 5 > 75 ? 75 : Utils.blockHeight * 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearest",
                    style: theme.textTheme.bodyText2!.copyWith(
                      // fontSize: 30,
                      fontSize: Utils.blockWidth * 5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: theme.textTheme.bodyText2!.copyWith(
                      color: Utils.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              // SizedBox(height: 15),
              SizedBox(height: Utils.blockHeight > 20 ? 20 : Utils.blockHeight),
              _CardSec(theme: theme),
              // SizedBox(height: 40),
              SizedBox(
                  height:
                      Utils.blockHeight * 3 > 45 ? 45 : Utils.blockHeight * 3),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: theme.textTheme.bodyText2!.copyWith(
                      fontSize: Utils.blockWidth * 5,
                      // fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: theme.textTheme.bodyText2!.copyWith(
                      color: Utils.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              // SizedBox(height: 30),
              SizedBox(
                  height: Utils.blockHeight * 2.2 > 35
                      ? 35
                      : Utils.blockHeight * 2.2),
              _Recommended(theme: theme),
              // SizedBox(height: 40),
              SizedBox(
                  height:
                      Utils.blockHeight * 3 > 45 ? 45 : Utils.blockHeight * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tasks for today",
                    style: theme.textTheme.bodyText2!.copyWith(
                      fontSize: Utils.blockWidth * 5,
                      // fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: theme.textTheme.bodyText2!.copyWith(
                      color: Utils.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              // SizedBox(height: 30),
              SizedBox(
                  height: Utils.blockHeight * 2.2 > 35
                      ? 35
                      : Utils.blockHeight * 2.2),
              TasksTile(imageUri: Utils.castle),
              // SizedBox(height: 20),
              SizedBox(height: Utils.blockHeight * 1.6),
              TasksTile(imageUri: Utils.cognition),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _BottomNavBar(theme),
    );
  }
}
