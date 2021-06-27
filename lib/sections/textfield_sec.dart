part of '../lesson_page.dart';

class _TextfieldSec extends StatelessWidget {
  final ThemeData theme;

  const _TextfieldSec(this.theme, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utils.blockHeight * 7,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: Utils.blockWidth * 5),
      child: Row(
        children: [
          Container(
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Icon(
                Icons.attach_file,
                size: Utils.blockWidth * 7,
              ),
            ),
          ),
          SizedBox(width: Utils.blockWidth * 3.5),
          Expanded(
            child: Container(
              height: Utils.blockHeight * 5,
              decoration: BoxDecoration(
                color: Utils.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Text Message",
                      style: theme.textTheme.bodyText2!
                          .copyWith(color: Utils.subtitleAndfontColor),
                    ),
                  ),
                  Container(
                    height: Utils.blockWidth * 10,
                    width: Utils.blockWidth * 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.3, 0.7],
                        colors: [
                          theme.primaryColor,
                          Color(0xff5d2fb3),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.send,
                        size: Utils.blockWidth * 6,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
