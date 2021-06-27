part of '../home_page.dart';

class _CardSec extends StatelessWidget {
  const _CardSec({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      // height: 270,
      height: Utils.blockHeight * 20,
      constraints: BoxConstraints(
          // maxHeight: 320,
          // minHeight: 250,
          ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Utils.jellyfish),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nature",
                        style: theme.textTheme.bodyText1,
                      ),
                      Text(
                        "10:00 AM",
                        style: theme.textTheme.bodyText1!
                            .copyWith(fontSize: Utils.blockWidth * 3.4),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Undersea world",
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headline3!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          ///
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Box(
                  shouldHaveImageBackground: false,
                  size: Utils.blockWidth * 8.5,
                  // size: 50,
                  child: Center(
                    child: Icon(
                      Icons.arrow_right,
                      color: theme.textTheme.bodyText2!.color,
                      size: Utils.blockWidth * 7,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Box(
                        shouldHaveImageBackground: true,
                        // size: 50,
                        size: Utils.blockWidth * 8.5,

                        assetImageUrl: Utils.profileImage1,
                      ),
                      SizedBox(width: 7),
                      Box(
                        shouldHaveImageBackground: true,
                        // size: 50,
                        size: Utils.blockWidth * 8.5,

                        assetImageUrl: Utils.profileImage2,
                      ),
                      SizedBox(width: 7),
                      Box(
                        shouldHaveImageBackground: true,
                        // size: 50,
                        size: Utils.blockWidth * 8.5,

                        assetImageUrl: Utils.profileImage3,
                      ),
                      SizedBox(width: 7),
                      Box(
                        shouldHaveImageBackground: false,
                        // size: 50,
                        size: Utils.blockWidth * 8.5,

                        child: Center(
                          child: Text(
                            "+17",
                            style: theme.textTheme.bodyText1!.copyWith(
                              color: theme.textTheme.bodyText2!.color,
                              height: 1.3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
