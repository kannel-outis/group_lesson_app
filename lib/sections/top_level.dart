part of '../home_page.dart';

class _TopLevel extends StatelessWidget {
  final ThemeData theme;

  const _TopLevel({Key? key, required this.theme}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome,",
                  style: theme.textTheme.headline3!.copyWith(
                    // fontSize: 45,
                    fontSize: Utils.blockWidth * 7.5,
                  ),
                ),
                Container(
                  // width: 140,
                  width: Utils.blockWidth * 23,
                  constraints: BoxConstraints(
                      // maxWidth: 155,
                      // minWidth: 110,
                      ),
                  child: Row(
                    children: [
                      Container(
                        height: Utils.blockHeight * 4,
                        width: Utils.blockWidth * 10,
                        // color: Colors.black,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Icon(
                                Icons.notifications,
                                size: Utils.blockWidth * 5,
                                // size: 30,
                              ),
                            ),
                            //////
                            Positioned(
                              top: 10,
                              right: 0,
                              child: Container(
                                height: Utils.blockWidth * 3.7,
                                width: Utils.blockWidth * 3.7,
                                constraints: BoxConstraints(
                                    // maxHeight: 30,
                                    // maxWidth: 30,
                                    // minHeight: 20,
                                    // minWidth: 20,
                                    ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    stops: [0.5, 0.8],
                                    colors: [
                                      theme.primaryColor,
                                      Color(0xff5d2fb3),
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          theme.textTheme.subtitle1!.fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => LessonPage(),
                          ),
                        ),
                        child: Container(
                          height: Utils.blockWidth * 10,
                          width: Utils.blockWidth * 10,
                          constraints: BoxConstraints(
                            maxHeight: 70,
                            maxWidth: 70,
                            minHeight: 40,
                            minWidth: 40,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(Utils.profileImage),
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
          Container(
            width: double.infinity,
            child: Text(
              "David",
              style: theme.textTheme.subtitle1!.copyWith(
                // fontSize: 45,
                fontSize: Utils.blockWidth * 7.5,

                height: .9,
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
