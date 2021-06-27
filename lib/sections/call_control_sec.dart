part of '../lesson_page.dart';

class _CallControl extends StatelessWidget {
  final double memberBoxSize;

  const _CallControl({Key? key, required this.memberBoxSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Box(
            shouldHaveImageBackground: false,
            size: memberBoxSize,
            child: Center(
              child: Icon(Icons.mic, size: Utils.blockWidth * 5),
            ),
          ),
          SizedBox(width: 40),
          Box(
            shouldHaveImageBackground: false,
            size: memberBoxSize,
            color: Colors.red,
            child: Center(
              child: Icon(Icons.call_end,
                  size: Utils.blockWidth * 5, color: Colors.white),
            ),
          ),
          SizedBox(width: 40),
          Box(
            shouldHaveImageBackground: false,
            size: memberBoxSize,
            child: Center(
              child: Icon(Icons.videocam, size: Utils.blockWidth * 5),
            ),
          ),
        ],
      ),
    );
  }
}
