import 'package:film2movie/labels.dart';
import 'package:film2movie/widgets/left_side_of_site.dart';
import 'package:film2movie/widgets/news_section.dart';
import 'package:film2movie/widgets/right_side_of_site.dart';
import 'package:flutter/material.dart';
import 'advertising.dart';
import 'maniHomePageReturn.dart';
import 'contactUs.dart';
import 'package:film2movie/movies.dart';

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
                  LeftSideOfSite(),
                  //News  and movies list side of home page
                  Column(
                    children: [
                      NewsSection(),
                      SizedBox(width: 900, height: 14000, child: MoviesList()),
                    ],
                  ),
                  //Right side of site
                  RightSideOfSite()
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff26872b).withOpacity(0.95),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تمامی حقوق مادی و معنوی قالب، تصاویر و مطالب متعلق به فیلم تو مووی بوده و کپی برداری از آن پیگرد قانونی دارد.سئو و بهینه سازی توسط :',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Far_Dinar_Two_Medium',
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(onPressed: (){}, child: Text(
                      'فیلم تو مووی',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Color(0xffc1c1c1),
                          fontFamily: 'Far_Dinar_Two_Medium',
                          fontSize: 24,
                          fontWeight: FontWeight.w400),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration:BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.white ,width: 3)
                          ) ,
                          child: Center(
                            child: Text('Alexa' , style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          width: 100,
                          height: 50,
                          decoration:BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Colors.white ,width: 3)
                          ) ,
                          child: Center(
                            child: Text('Search' , style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          width: 100,
                          height: 50,
                          decoration:BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Colors.white ,width: 3)
                          ) ,
                          child: Center(
                            child: Text('Cache' , style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          width: 100,
                          height: 50,
                          decoration:BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Colors.white ,width: 3)
                          ) ,
                          child: Center(
                            child: Text('Atom' , style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          width: 100,
                          height: 50,
                          decoration:BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Colors.white ,width: 3)
                          ) ,
                          child: Center(
                            child: Text('sitemap' , style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        SizedBox(width: 8,),
                        TextButton(onPressed: (){}, child: Text(
                          'فیلم تو مووی',
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Color(0xffc1c1c1),
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontSize: 24,
                              fontWeight: FontWeight.w400),)),
                        TextButton(onPressed: (){}, child: Text(
                          'فیلم تو مووی',
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Color(0xffc1c1c1),
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontSize: 24,
                              fontWeight: FontWeight.w400),)),
                        TextButton(onPressed: (){}, child: Text(
                          'فیلم تو مووی',
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Color(0xffc1c1c1),
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontSize: 24,
                              fontWeight: FontWeight.w400),)),
                        TextButton(onPressed: (){}, child: Text(
                          'فیلم تو مووی',
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Color(0xffc1c1c1),
                              fontFamily: 'Far_Dinar_Two_Medium',
                              fontSize: 24,
                              fontWeight: FontWeight.w400),)),

                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
