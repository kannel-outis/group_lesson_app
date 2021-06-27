part of '../home_page.dart';

class _Recommended extends StatelessWidget {
  final ThemeData theme;

  const _Recommended({Key? key, required this.theme}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 330,
      height: Utils.blockHeight * 24.5,
      constraints: BoxConstraints(
          // maxHeight: 350,
          // minHeight: 250,
          ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => CoursePageInfo(),
                  ),
                );
              },
              child: Hero(
                tag: 2,
                child: Container(
                  width: Utils.blockWidth * 41,
                  constraints: BoxConstraints(
                    // maxWidth: 350,
                    minWidth: 160,
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: Utils.blockWidth * 3.3 > 25
                          ? 25
                          : Utils.blockWidth * 3.3,
                      vertical: Utils.blockWidth * 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Utils.spacePsy),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            bottom: Utils.blockWidth * 3.3 > 25
                                ? 25
                                : Utils.blockWidth * 3.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Health",
                              style: theme.textTheme.bodyText1,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.orange,
                                      size: Utils.blockWidth * 5),
                                  SizedBox(width: 7),
                                  Text(
                                    "5.0",
                                    style: theme.textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            bottom: Utils.blockWidth * 3.3 > 25
                                ? 25
                                : Utils.blockWidth * 3.3),
                        child: Text(
                          "Introduction    to psychology",
                          textScaleFactor: .85,
                          style: theme.textTheme.headline4!.copyWith(
                            fontSize: Utils.blockWidth * 5.7,
                            fontWeight: FontWeight.bold,
                            color: Utils.backgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                            "What are people more afraid of? what do our dreams mean?",
                            style: theme.textTheme.bodyText1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              width: Utils.blockWidth * 41,
              constraints: BoxConstraints(
                // maxWidth: 350,
                minWidth: 160,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Utils.blockWidth * 3.3 > 25 ? 25 : Utils.blockWidth * 3.3,
                  vertical: Utils.blockWidth * 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        bottom: Utils.blockWidth * 3.3 > 25
                            ? 25
                            : Utils.blockWidth * 3.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Self Education",
                          style: theme.textTheme.bodyText2,
                        ),
                        Container(
                          // height: 35,
                          height: Utils.blockHeight * 2.7,
                          // width: 70,
                          width: Utils.blockWidth * 11.8,
                          constraints: BoxConstraints(
                            maxHeight: 45,
                            maxWidth: 80,
                            minHeight: 28,
                            minWidth: 50,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              stops: [0.5, 0.9],
                              colors: [
                                theme.primaryColor,
                                Color(0xff5d2fb3),
                              ],
                            ),
                          ),
                          child: Center(
                            child:
                                Text("New", style: theme.textTheme.bodyText1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // 20
                    padding: EdgeInsets.only(
                        bottom: Utils.blockWidth * 3.3 > 25
                            ? 25
                            : Utils.blockWidth * 3.3),
                    child: Text(
                      "The Science of Well-Being",
                      textScaleFactor: .85,
                      style: theme.textTheme.headline4!.copyWith(
                        fontSize: Utils.blockWidth * 5.7,
                        fontWeight: FontWeight.bold,
                        color: theme.textTheme.bodyText2!.color,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                        "What are people more afraid of? what do our dreams mean?",
                        style: theme.textTheme.bodyText2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
