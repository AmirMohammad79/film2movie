import 'package:film2movie/labels.dart';
import 'package:film2movie/widgets/left_side_of_site.dart';
import 'package:film2movie/widgets/right_side_of_site.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBar(
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
                      padding: const EdgeInsets.only(right: 8),
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
                            duration: const Duration(milliseconds: 500),
                            child: _isHovered
                                ? RotationTransition(
                                    turns: const AlwaysStoppedAnimation(0.25),
                                    child: Icon(Icons.search_rounded,
                                        key: UniqueKey(),
                                        color: const Color(0xFF1D943C)),
                                  )
                                : Icon(Icons.search_rounded,
                                    key: UniqueKey(),
                                    color: const Color(0xFF1D943C)),
                          ),
                          iconColor: Colors.black,
                          hintText: '... جست و جو',
                          hintStyle: const TextStyle(
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
                  const SizedBox(width: 16), // Add some space before words
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReturnHomePage()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('تبلیغات',
                          style: TextStyle(
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(width: 24), // Add some space between words
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactUs()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('برچسب ها',
                          style: TextStyle(
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(width: 24), // Add some space between words
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Labels()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('تماس با ما',
                          style: TextStyle(
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(width: 24), // Add some space between words
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Advertising()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('صفحه اصلی',
                          style: TextStyle(
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(width: 16), // Add some space at the end
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/images/banner.png",
                        ))),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Left side of site
                  const LeftSideOfSite(),
                  //movies list side of home page
                  Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(16),
                            margin: const EdgeInsets.only(
                                left: 8, right: 8, top: 8),
                            width: 900,
                            height: 80,
                            decoration: BoxDecoration(
                              color: const Color(0xffEFEEEE),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(4),
                                topLeft: Radius.circular(4),
                              ),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff337ab7),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('آخرین اخبار جهان',
                                        style: TextStyle(
                                            fontFamily: 'Far_Dinar_Two_Medium',
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400))),
                              ),
                            ),
                          ),
                          Container(
                            width: 900,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                                border: Border.all(color: Colors.grey)),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.all(8),
                                        padding: const EdgeInsets.all(4),
                                        color: Colors.grey[50],
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '۱۵ دی ۱۴۰۰',
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    fontFamily: 'tahoma',
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  size: 12,
                                                  color: Colors.black,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                const Text(
                                                  '۲۰ فیلم برتر سال ۲۰۲۱ به انتخاب فیلم تو مووی',
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    fontFamily: 'tahoma',
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const Icon(
                                                      Icons
                                                          .keyboard_double_arrow_left_rounded,
                                                      color: Color(0xff337ab7),
                                                      size: 9,
                                                    ),
                                                    TextButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'مشاهده ادامه متن',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'tahoma',
                                                            fontSize: 9,
                                                            color: Color(
                                                                0xff337ab7),
                                                          ),
                                                        )),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(8),
                                              width: 250,
                                              height: 125,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  image: const DecorationImage(
                                                    fit: BoxFit.fitWidth,
                                                    image: AssetImage(
                                                      'assets/images/1 (2).png',
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  color: Colors.grey,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(8),
                                            padding: const EdgeInsets.all(4),
                                            color: Colors.grey[50],
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '۱۵ دی ۱۴۰۰',
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        fontFamily: 'tahoma',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .watch_later_outlined,
                                                      size: 12,
                                                      color: Colors.black,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 62.5,
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 38),
                                            width: 120,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                                color: Color(0xff1D943C),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(16),
                                                  topRight: Radius.circular(16),
                                                )),
                                            child: const Center(
                                              child: Text('آرشیو آخبار',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Far_Dinar_Two_Medium',
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                const Text(
                                                  'نگاهی به عملکرد پلتفرم‌های دیجیتال در سال کابوس‌وار ۲۰۲۱',
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    fontFamily: 'tahoma',
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const Icon(
                                                      Icons
                                                          .keyboard_double_arrow_left_rounded,
                                                      color: Color(0xff337ab7),
                                                      size: 9,
                                                    ),
                                                    TextButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'مشاهده ادامه متن',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'tahoma',
                                                            fontSize: 9,
                                                            color: Color(
                                                                0xff337ab7),
                                                          ),
                                                        )),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(8),
                                              width: 250,
                                              height: 125,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  image: const DecorationImage(
                                                    fit: BoxFit.fitWidth,
                                                    image: AssetImage(
                                                      'assets/images/2 (2).png',
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  //Right side of site
                  const RightSideOfSite()
                ],
              )
            ],
          ),
        ));
  }
}


