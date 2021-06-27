import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_lesson_app/utils/utils.dart';

class LessonTile extends StatelessWidget {
  final String chapter;
  final String title;
  final String about;
  final String photoUri;
  final String time;

  const LessonTile({
    Key? key,
    required this.chapter,
    required this.title,
    required this.about,
    required this.photoUri,
    required this.time,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: Utils.blockHeight * 12.5,
      padding: EdgeInsets.symmetric(
          vertical: Utils.blockWidth * 4.5, horizontal: 10),
      margin: EdgeInsets.only(bottom: Utils.blockWidth * 4.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: Utils.blockWidth * 18,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(photoUri),
              ),
            ),
          ),
          SizedBox(width: Utils.blockWidth),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: Utils.blockWidth),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          chapter,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.subtitle1,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.time_solid,
                                  size: Utils.blockWidth * 3.5),
                              SizedBox(width: 7),
                              Text(
                                time,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: Utils.blockWidth),
                    child: Text(
                      title,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyText2!.copyWith(
                        fontSize: Utils.blockWidth * 5,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: Utils.blockWidth, right: Utils.blockWidth * 2),
                    child: Text(
                      about,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
