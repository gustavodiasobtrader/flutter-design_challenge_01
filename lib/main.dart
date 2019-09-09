import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              // margin: EdgeInsets.only(top: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: currentPage != 2
                    ? <Widget>[
                        FlatButton(
                          child: Text('Skip'),
                          onPressed: () {
                            const duration = Duration(milliseconds: 600);
                            const curve = Curves.easeInOut;
                            this._pageController.animateToPage(
                                (this.currentPage + 1),
                                duration: duration,
                                curve: curve);
                          },
                        ),
                      ]
                    : <Widget>[Container(height: 48)],
              ),
            ),
            Container(
              height: 360,
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/barbecue.png',
                          height: 130.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 22),
                          child: Text(
                            '欢迎您！这个应用程序将帮助您更好地烹饪。更好地烹饪',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/barbecue2.png',
                          height: 130.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 22),
                          child: Text(
                            '当船尾撞到水时，水就撞到了屁股',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24, top: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/barbecue3.png',
                          height: 130.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 22),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '加入我们这个惊人的冒险!!!',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 24),
                                  child: SizedBox(
                                    height: 40,
                                    child: FlatButton(
                                      child: Text('这个惊人惊人!'),
                                      onPressed: () {},
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Container(
                        decoration: new BoxDecoration(
                            color: currentPage == 0 ? Colors.red : null,
                            borderRadius: new BorderRadius.circular(25.0),
                            border: new Border.all(
                              width: 3.0,
                              color: currentPage != 0
                                  ? Colors.red
                                  : Colors.transparent,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Container(
                        decoration: new BoxDecoration(
                            color: currentPage == 1 ? Colors.red : null,
                            borderRadius: new BorderRadius.circular(25.0),
                            border: new Border.all(
                              width: 3.0,
                              color: currentPage != 1
                                  ? Colors.red
                                  : Colors.transparent,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Container(
                        decoration: new BoxDecoration(
                            color: currentPage == 2 ? Colors.red : null,
                            borderRadius: new BorderRadius.circular(25.0),
                            border: new Border.all(
                              width: 3.0,
                              color: currentPage != 2
                                  ? Colors.red
                                  : Colors.transparent,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
