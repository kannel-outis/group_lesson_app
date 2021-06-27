import 'package:flutter/material.dart';
import 'package:group_lesson_app/home_page.dart';
import 'package:group_lesson_app/utils/utils.dart';

import 'course_info.dart';
import 'lesson_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: Utils.themeData(context),
        builder: (context, child) {
          // Utils.getBlockWidthAndHeight(context);
          return child!;
        },
        home: HomePage(),
      ),
    );
  }
}
