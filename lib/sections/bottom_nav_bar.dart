part of '../home_page.dart';

class _BottomNavBar extends StatelessWidget {
  final ThemeData theme;

  const _BottomNavBar(this.theme, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utils.blockHeight * 7,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Utils.blockWidth * 3.3 > 25 ? 25 : Utils.blockWidth * 3.3,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          // /////
          BoxShadow(
            color: theme.primaryColor.withOpacity(0.05),
            spreadRadius: 40,
            blurRadius: 7,
            offset: Offset(0, 7),
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: Utils.blockWidth * 24,
            height: Utils.blockWidth * 10,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Utils.backgroundColor,
                  spreadRadius: 20,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home,
                    size: Utils.blockWidth * 5, color: theme.primaryColor),
                SizedBox(width: 10),
                Text(
                  "Home",
                  style: theme.textTheme.bodyText2!.copyWith(
                    color: Utils.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Icon(Icons.assistant_navigation, size: Utils.blockWidth * 5),
          ),
          Expanded(
            child: Icon(Icons.book, size: Utils.blockWidth * 5),
          ),
          Expanded(
            child: Icon(Icons.message, size: Utils.blockWidth * 5),
          )
        ],
      ),
    );
  }
}
