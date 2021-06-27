part of '../course_info.dart';

class _TopcourseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Hero(
      tag: 2,
      child: SingleChildScrollView(
        child: Container(
          height: Utils.blockHeight * 40,
          width: double.infinity,
          padding: EdgeInsets.only(
            top: mediaQuery.padding.top,
            left: 20,
            right: 20,
            // bottom: 30,
          ),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Utils.spacePsy),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: Utils.blockWidth * 3.5 > 25
                          ? 25
                          : Utils.blockWidth * 3.5,
                    ),
                    child: Box(
                      size: Utils.blockWidth * 10,
                      shouldHaveImageBackground: false,
                      child: Center(
                        child: Icon(
                          CupertinoIcons.back,
                          size: Utils.blockWidth * 4,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Utils.blockWidth * 3.5 > 25
                          ? 25
                          : Utils.blockWidth * 3.5,
                    ),
                    child: Box(
                      size: Utils.blockWidth * 10,
                      shouldHaveImageBackground: false,
                      child: Transform.rotate(
                        angle: -math.pi / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: Utils.blockWidth * 1.5,
                              width: Utils.blockWidth * 1.5,
                              decoration: BoxDecoration(
                                color: theme.iconTheme.color,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Container(
                              height: Utils.blockWidth * 1.5,
                              width: Utils.blockWidth * 1.5,
                              decoration: BoxDecoration(
                                color: theme.iconTheme.color,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Utils.blockHeight * 7.3),
              Container(
                width: double.infinity,
                child: Text("Health", style: theme.textTheme.bodyText1),
              ),
              SizedBox(height: Utils.blockHeight * 1.5),
              Container(
                // color: Colors.red,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Introduction to psychology",
                        textAlign: TextAlign.left,
                        textScaleFactor: .85,
                        style: theme.textTheme.headline2!.copyWith(
                          color: Colors.white,
                          fontSize: Utils.blockWidth * 9.3,
                        ),
                      ),
                    ),
                    Positioned(
                      left:
                          (Utils.blockWidth * 50) - Utils.blockWidth * 10 / 10,
                      bottom: 10,
                      child: Container(
                        width: Utils.blockWidth * 12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: Utils.blockWidth * 5,
                            ),
                            Text(
                              "5.0",
                              style: theme.textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Utils.blockHeight * 1.5),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Utils.blockWidth * 32,
                      child: Row(
                        children: [
                          Text("11 lessons", style: theme.textTheme.bodyText1),
                          Expanded(child: SizedBox()),
                          Text("6 Hours", style: theme.textTheme.bodyText1),
                        ],
                      ),
                    ),
                    Container(
                      height: Utils.blockWidth * 11,
                      width: Utils.blockWidth * 11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Utils.backgroundColor,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Utils.profileImage),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
