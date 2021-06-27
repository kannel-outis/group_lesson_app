import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_lesson_app/utils/utils.dart';
import 'package:group_lesson_app/widgets/box.dart';
import 'dart:math' as math;

import 'package:group_lesson_app/widgets/message_tile.dart';
part 'sections/textfield_sec.dart';
part 'sections/side_friend_bar.dart';
part 'sections/call_control_sec.dart';

class LessonPage extends StatelessWidget {
  final double memberBoxSize =
      Utils.blockWidth * 12 > 80 ? 80 : Utils.blockWidth * 12;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Utils.blockHeight * 70,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: mediaQuery.padding.top,
              horizontal:
                  Utils.blockWidth * 3.5 > 25 ? 25 : Utils.blockWidth * 3.5,
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Utils.profileImage),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: Utils.blockWidth * 3.5 > 25
                            ? 25
                            : Utils.blockWidth * 3.5,
                      ),
                      child: Box(
                        size: Utils.blockWidth * 10,
                        shouldHaveImageBackground: false,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.back,
                            size: Utils.blockWidth * 4,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Utils.blockHeight * 4),
                _SideFriendBar(memberBoxSize: memberBoxSize),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _CallControl(memberBoxSize: memberBoxSize),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MessageTile(
                    photoUrl: Utils.profileImage2,
                    name: "Emirdilony Taiye",
                    time: "9:17",
                    message: "Hi",
                  ),
                  SizedBox(height: Utils.blockHeight),
                  MessageTile(
                    photoUrl: Utils.profileImage1,
                    name: "Roland Richard",
                    time: "9:19",
                    message: "Thank you for your lessons",
                  ),
                  SizedBox(height: Utils.blockHeight),
                ],
              ),
            ),
          ),
          _TextfieldSec(theme),
        ],
      ),
    );
  }
}
