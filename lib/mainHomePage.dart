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
                                        key: UniqueKey(),
                                        color: Color(0xFF1D943C)),
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
                        MaterialPageRoute(
                            builder: (context) => ReturnHomePage()),
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
                  Column(
                    children: <Widget>[
                      CategoryBox(
                        title: 'اخبار سایت',
                        visible: false,
                        height: 125,
                        texts: [
                          'آموزش هماهنگ کردن زیر نویس با هر فرمتی',
                          'انواع کیفیت فیلم ها',
                          ' آموزش تعویض صدا در فیلم های دوبله'
                        ],
                      ),
                      CategoryBox(
                        title: 'آخرین مطالب',
                        visible: true,
                        height: 600,
                        texts: [
                          'دانلود سریال Shogun',
                          'دانلود فیلم Kung Fu Panda 4 2024',
                          'دانلود فیلم Mission Chapter 1 2024',
                          'دانلود فیلم Napoleon 2023',
                          'دانلود فیلم The Equalizer 3 2023',
                          'دانلود فیلم Scoop 2024',
                          'دانلود سریال Fedakar',
                          'دانلود فیلم Sleeping Dogs 2024',
                          'دانلود فیلم Dune Part Two 2024',
                          'دانلود فیلم Baghead 2023',
                          'دانلود سریال A Gentleman in Moscow',
                          'دانلود سریال Renegade Nell',
                          'دانلود سریال parasyte the grey',
                          'دانلود فیلم A Long Goodbye 2019',
                          'دانلود فیلم A Paris Proposal 2023',
                          'دانلود سریال Parish',
                          'دانلود برنامه شب آهنگی',
                          'دانلود فیلم Southpaw 2015',
                          'دانلود سریال The Last Ship'
                        ],
                      ),
                      CategoryBox(
                        title: 'متفرقه',
                        visible: true,
                        height: 860,
                        texts: [
                          'All Device',
                          'Dexter',
                          'آخرین اخبار سینمای جهان',
                          'انیمه',
                          'برنامه تلویزیونی',
                          'پشت صحنه',
                          'پیش نمایش',
                          'تریلرهای جدید هفته',
                          'حیات وحش',
                          'دیالوگ ماندگار',
                          'زمین',
                          'سانسور شده',
                          'سریال',
                          'سریال ایرانی',
                          'سریال ترکی',
                          'سریال چینی',
                          'سریال ژاپنی',
                          'سریال کره ای',
                          'علم و تکنولوژی',
                          'کمیک بوک',
                          'کهکشان',
                          'ما قبل تاریخ',
                          'مسابقات',
                          'مقاله',
                          'موسیقی متن',
                          'نشنال جئوگرافیک',
                          'نقد و بررسی',
                          'هاردساب فارسی'
                        ],
                      ),
                      CategoryBox(
                          title: 'لینک های مهم',
                          texts: [
                     ' دانلود رایگان فیلم',
                     ' دانلود سریال عاشقانه قسمت ۱۷ هفدهم'
                          ],
                          height: 80,
                          visible: true),
                      CategoryBox(title: 'تبلیغات', texts: [], height: 16, visible: false)
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
