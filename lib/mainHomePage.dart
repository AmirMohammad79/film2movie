import 'package:film2movie/labels.dart';
import 'package:film2movie/widgets/categories_box.dart';
import 'package:flutter/material.dart';
import 'advertising.dart';
import 'maniHomePageReturn.dart';
import 'contactUs.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: SizedBox(
            width: _isHovered
                ? MediaQuery.of(context).size.width / 4
                : MediaQuery.of(context).size.width /
                    6, // Adjusted width when hovered
            height: MediaQuery.of(context).size.height / 23,
            child: MouseRegion(
              onEnter: (_) => setState(() => _isHovered = true),
              onExit: (_) => setState(() => _isHovered = false),
              child: Container(
                padding: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    icon: AnimatedSwitcher(
                      duration: Duration(milliseconds: 500),
                      child: _isHovered
                          ? RotationTransition(
                              turns: AlwaysStoppedAnimation(0.25),
                              child: Icon(Icons.search_rounded,
                                  key: UniqueKey(), color: Color(0xFF1D943C)),
                            )
                          : Icon(Icons.search_rounded,
                              key: UniqueKey(), color: Color(0xFF1D943C)),
                    ),
                    iconColor: Colors.black,
                    hintText: '... جست و جو',
                    hintStyle: TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                        fontFamily: 'Far_Dinar_Two_Medium',
                        fontWeight: FontWeight.w400),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    // Perform search functionality here
                  },
                ),
              ),
            ),
          ),
          actions: <Widget>[
            SizedBox(width: 16), // Add some space before words
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReturnHomePage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('تبلیغات',
                    style: TextStyle(
                        fontFamily: 'Far_Dinar_Two_Medium',
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(width: 24), // Add some space between words
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('برچسب ها',
                    style: TextStyle(
                        fontFamily: 'Far_Dinar_Two_Medium',
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(width: 24), // Add some space between words
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Labels()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('تماس با ما',
                    style: TextStyle(
                        fontFamily: 'Far_Dinar_Two_Medium',
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(width: 24), // Add some space between words
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Advertising()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('صفحه اصلی',
                    style: TextStyle(
                        fontFamily: 'Far_Dinar_Two_Medium',
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(width: 16), // Add some space at the end
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/banner.png",
                      ))),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                //Left side of site
                CategoryBox(
                  title: 'اخبار سایت',
                  texts: [
                    'آموزش هماهنگ کردن زیر نویس با هر فرمتی',
                    'انواع کیفیت فیلم ها',
                   ' آموزش تعویض صدا در فیلم های دوبله'
                  ],
                )
              ],
            )
          ],
        ));
  }
}
