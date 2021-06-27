import 'package:flutter/material.dart';
import 'package:group_lesson_app/utils/utils.dart';

class TasksTile extends StatelessWidget {
  final String imageUri;
  final String? subtitle;
  final String? title;

  const TasksTile({Key? key, required this.imageUri, this.subtitle, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      // height: 150,
      height: Utils.blockHeight * 15,
      // constraints: BoxConstraints(
      //   maxHeight: 170,
      //   minHeight: 120,
      // ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            // width: 100,
            width: Utils.blockWidth * 25,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUri,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                      subtitle ?? "Architecture. XV Century",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyText1!.copyWith(
                        color: Utils.subtitleAndfontColor,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      title ?? "Homework 2. Essay",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline4!.copyWith(
                        color: theme.textTheme.headline3!.color,
                        fontSize: Utils.blockWidth * 5.7,
                        // fontWeight: FontWeight.bold,
                        height: 1,
                      ),
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
