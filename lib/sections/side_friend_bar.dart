part of '../lesson_page.dart';

class _SideFriendBar extends StatelessWidget {
  final double memberBoxSize;

  const _SideFriendBar({Key? key, required this.memberBoxSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Column(
            children: [
              Box(
                size: memberBoxSize,
                shouldHaveImageBackground: false,
                child: Center(
                  child: Text(
                    "+12",
                    style: theme.textTheme.subtitle1!.copyWith(
                        fontSize: theme.textTheme.bodyText1!.fontSize,
                        height: 1.5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Box(
                size: memberBoxSize,
                shouldHaveImageBackground: true,
                assetImageUrl: Utils.profileImage1,
              ),
              SizedBox(height: 20),
              Box(
                size: memberBoxSize,
                shouldHaveImageBackground: true,
                assetImageUrl: Utils.profileImage2,
              ),
              SizedBox(height: 20),
              Box(
                size: memberBoxSize,
                shouldHaveImageBackground: true,
                assetImageUrl: Utils.profileImage3,
              ),
              SizedBox(height: 20),
              Box(
                size: memberBoxSize,
                shouldHaveImageBackground: false,
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: Utils.blockWidth * 6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
