import 'package:flutter/material.dart';
import 'package:group_lesson_app/utils/utils.dart';

class MessageTile extends StatelessWidget {
  final String photoUrl;
  final String name;
  final String time;
  final String message;

  const MessageTile(
      {Key? key,
      required this.photoUrl,
      required this.name,
      required this.time,
      required this.message})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Utils.blockWidth * 5),
      child: Container(
        width: double.infinity,
        height: Utils.blockHeight * 9,
        constraints: BoxConstraints(
          maxHeight: 200,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: Utils.blockWidth * 15,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    photoUrl,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        name,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyText2!.copyWith(
                          // fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            message,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyText1!.copyWith(
                              color: Utils.subtitleAndfontColor,
                            ),
                          ),
                          Text(
                            time,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyText1!.copyWith(
                              color: Utils.subtitleAndfontColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
