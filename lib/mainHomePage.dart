import 'package:film2movie/labels.dart';
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
      appBar: AppBar(
        title: SizedBox(
          width: _isHovered ? 250 : 200, // Adjusted width when hovered
          height: 30,
          child: MouseRegion(
            onEnter: (_) => setState(() => _isHovered = true),
            onExit: (_) => setState(() => _isHovered = false),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.white,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  icon: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: _isHovered
                        ? RotationTransition(
                      turns: AlwaysStoppedAnimation(0.25),
                      child: Icon(Icons.search_rounded,
                          key: UniqueKey(),
                          color: Color(0xFF1D943C)),
                    )
                        : Icon(Icons.search_rounded,
                        key: UniqueKey(),
                        color: Color(0xFF1D943C)),
                  ),
                  iconColor: Colors.black,
                  hintText: '... جست و جو',
                  hintStyle: TextStyle(
                      color: Colors.grey,
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
      body: Center(
        child: Text('Your Content Here'),
      ),
    );
  }
}