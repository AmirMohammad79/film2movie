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
                  Column(
                    children: <Widget>[
                      const CategoryBox(
                        title: 'اخبار سایت',
                        icon: Icons.note,
                        visible: false,
                        height: 125,
                        texts: [
                          'آموزش هماهنگ کردن زیر نویس با هر فرمتی',
                          'انواع کیفیت فیلم ها',
                          ' آموزش تعویض صدا در فیلم های دوبله'
                        ],
                      ),
                      const CategoryBox(
                        title: 'آخرین مطالب',
                        icon: Icons.note,
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
                      const CategoryBox(
                        title: 'متفرقه',
                        icon: Icons.note,
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
                      const CategoryBox(
                          title: 'لینک های مهم',
                          icon: Icons.note,
                          texts: [
                            ' دانلود رایگان فیلم',
                            ' دانلود سریال عاشقانه قسمت ۱۷ هفدهم'
                          ],
                          height: 80,
                          visible: true),
                      const CategoryBox(
                          title: 'تبلیغات',
                          icon: Icons.note,
                          texts: [],
                          height: 16,
                          visible: false)
                    ],
                  ),
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
                   Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        width: 275,
                        height: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/tele.png'))),
                      ),
                      const CategoryBox(
                        title: 'تفکیک سال انتشار',
                        icon: Icons.local_movies_outlined,
                        visible: true,
                        height: 2830,
                        texts: [
                          '1921',
                          '1930',
                          '1931',
                          '1932',
                          '1933',
                          '1934',
                          '1935',
                          '1936',
                          '1937',
                          '1938',
                          '1939',
                          '1940',
                          '1941',
                          '1942',
                          '1944',
                          '1946',
                          '1947',
                          '1948',
                          '1949',
                          '1950',
                          '1951',
                          '1953',
                          '1954',
                          '1955',
                          '1956',
                          '1957',
                          '1958',
                          '1959',
                          '1960',
                          '1961',
                          '1962',
                          '1963',
                          '1964',
                          '1965',
                          '1966',
                          '1967',
                          '1968',
                          '1969',
                          '1970',
                          '1971',
                          '1972',
                          '1973',
                          '1974',
                          '1975',
                          '1976',
                          '1977',
                          '1978',
                          '1979',
                          '1980',
                          '1981',
                          '1982',
                          '1983',
                          '1984',
                          '1985',
                          '1986',
                          '1987',
                          '1988',
                          '1989',
                          '1990',
                          '1991',
                          '1992',
                          '1993',
                          '1994',
                          '1995',
                          '1996',
                          '1997',
                          '1998',
                          '1999',
                          '2000',
                          '2001',
                          '2002',
                          '2003',
                          '2004',
                          '2005',
                          '2006',
                          '2007',
                          '2008',
                          '2009',
                          '2010',
                          '2011',
                          '2012',
                          '2013',
                          '2014',
                          '2015',
                          '2016',
                          '2017',
                          '2018',
                          '2019',
                          '2020',
                          '2021',
                          '2022',
                          '2023',
                          '2024',
                        ],
                      ),
                      const CategoryBox(
                          title: 'تفکیک کیفیت',
                          icon: Icons.local_movies_outlined,
                          visible: true,
                          height: 800,
                          texts: [
                            '۱۰۸۰p HDRip',
                            '۱۰۸۰p WEB-DL',
                            '۱۰۸۰p WEB-DL Full HD',
                            '۱۰۸۰p WEBRip',
                            '۳D',
                            '۴۸۰p HDTV',
                            '۴K 2160p',
                            '۷۲۰p DVDRip',
                            '۷۲۰p HDRip',
                            '۷۲۰p HDTV',
                            '۷۲۰p WEB-DL',
                            '۷۲۰p WEBRip',
                            'BDRip',
                            ' Bluray 1080p',
                            '  Bluray 1080p Full HD',
                            '   Bluray 480p',
                            'Bluray 720p',
                            'DVDRip',
                            'DVDSCR',
                            'HDCam',
                            'HDRip',
                            'HDTV',
                            'Mobile',
                            'TS',
                            'WEBRip',
                            'x265',
                          ]
                      ),
                      const CategoryBox(
                          title: 'تفکیک ژانر',
                          icon: Icons.local_movies_outlined,
                          visible: true,
                          height: 860,
                          texts: [
                            'اجتماعی',
                            'اکشن',
                            'انیمیشن',
                            'بیوگرافی',
                            'تاریخی',
                            'ترسناک',
                            'جنایی',
                            'جنگی',
                            'خانوادگی',
                            'درام',
                            'رئالیتی شو',
                            'رازآلود',
                            'رزمی',
                            'علمی تخیلی',
                            'غم انگیز',
                            'فانتزی',
                            'فیلم نوآر',
                            'کمدی',
                            'کوتاه',
                            'ماجراجویی',
                            'مراسم',
                            'مستند',
                            'معمایی',
                            'موزیکال',
                            'موسیقی',
                            'هیجانی',
                            'ورزشی',
                            'وسترن',
                          ]
                      ),
                      const CategoryBox(
                          title: 'کالکشن',
                          icon: Icons.local_movies_outlined,
                          texts: [
                            'Ace Ventura',
                            'Against The Wild',
                            'Alice in Wonderland',
                            'Alien',
                            'Alien Vs. Predator',
                            'Almighty',
                            'Along With The Gods',
                            'Alvin And The Chipmunks',
                            'An Inconvenient Truth',
                            'Anchorman',
                            'Angry Birds',
                            'Annabelle',
                            'Ant-Man',
                            'Antboy',
                            ' Attack On Titan',
                            ' Avengers',
                            'Back To The Future',
                            'Backdraft',
                            'Bad Boys',
                            'Batman',
                            'Belle And Sebastian',
                            'Best Friends',
                            'Beverly Hills Cop',
                            'Blade',
                            'Born To Race',
                            'Brother Bear',
                            'Brotherhood Of Blades',
                            'Captain America',
                            'Cars',
                            'Cats And Dogs',
                            'Cloudy With A Chance Of Meatballs',
                            'Cloverfield',
                            'Coconut The Little Dragon',
                            'Cold War',
                            'Creed',
                            'Cub',
                            'Daddys Home',
                            'Dead Snow',
                            'Deadpool',
                            'Despicable Me',
                            'Detective Dee',
                            'Dhoom',
                            ' Diary Of A Wimpy Kid',
                            ' Die Hard',
                            'District 13',
                            ' Doctor Dolittle',
                            'Dolphin Tale',
                            ' Don',
                            ' Dragon Ball Z',
                            ' Dumb And Dumber',
                            'Easy Money',
                            'Escape Plan',
                            'Fantastic Beasts',
                            'Fantastic Four',
                            'Fast And Furious',
                            'Final Destination',
                            'Frozen',
                            'G.I. Joe',
                            'Garfield',
                            'Generation Iron',
                            'Ghost Rider',
                            'Ghostbusters',
                            'Gintama',
                            'Godzilla',
                            'Gogol',
                            'Goosebumps',
                            'Grown Ups',
                            'Guardians Of The Galaxy',
                            'Happy Death Day',
                            ' Happy Feet',
                            ' Harry Potter',
                            ' Hellboy',
                            'Hitman',
                            ' Home Alone',
                            ' Hoodwinked',
                            ' Horrible Bosses',
                            ' Hotel Transylvania',
                            ' How To Train Your Dragon',
                            ' Hulk',
                            'Ice Age',
                            'Iceman',
                            'Incredibles',
                            'Independence Day',
                            'Indiana Jones',
                            'Inside Out',
                            'Insidious',
                            'Ip Man',
                            'Iron Man',
                            'Iron Sky',
                            'Ironclad',
                            'It',
                            'Jeepers Creepers',
                            'Jingle All The Way',
                            'Johan Falk',
                            'John Wick',
                            'Johnny English',
                            'Journey',
                            'Jumanji',
                            'Jump Street',
                            'Jurassic Park',
                            'Kickboxer',
                            'Kill Bill',
                            'Kingsman',
                            ' Kung Fu Panda',
                            ' Lazer Team',
                            ' Mad Max',
                            ' Madagascar',
                            ' March Of The Penguins',
                            ' Maze Runner',
                            'Men in Black',
                            'Mission Impossible',
                            'Monster Hunt',
                            ' Monsters',
                            ' Monsters Inc',
                            ' Muppets',
                            ' Mythica',
                            ' Nanny McPhee',
                            ' National Treasure',
                            ' Night At The Museum',
                            'Ninja Turtles',
                            ' Norm Of The North',
                            'Now You See Me',
                            'Oceans',
                            ' Ong-Bak',
                            ' Open Season',
                            'Outpost',
                            ' Outrage',
                            ' Overheard',
                            'Pacific Rim',
                            'Paddington',
                            'Paranormal Activity',
                            'Paul Blart : Mall Cop',
                            'Percy Jackson',
                            'Pirates Of The Caribbean',
                            'Planes',
                            'Police Story',
                            'Predator',
                            'Puss in Boots',
                            'Queen Of Spades',
                            'Rambo',
                            'Rampage',
                            'RED',
                            'Red Cliff',
                            'Red Dog',
                            'Ride Along',
                            'Rocky',
                            'Rurouni Kenshin',
                            'Rush Hour',
                            'Saints And Soldiers',
                            'Shaft',
                            'Shanghai',
                            'Sheep And Wolves',
                            'Sherlock Holmes',
                            'Shrek',
                            'Sicario',
                            'Silent Hill',
                            'Sin',
                            'Singham',
                            'Sinister',
                            'Snow White And The Huntsman',
                            'Snowtime',
                            'Spider Man',
                            'Star Trek',
                            'Star Wars',
                            'Starship',
                            'Taken',
                            'Tangled',
                            'Taxi',
                            'Terminator',
                            'The Bourne',
                            'The Chronicles Of Narnia',
                            'The Condemned',
                            'The Conjuring',
                            'The Croods',
                            'The Dead',
                            'The Divergent Series',
                          ],
                          height: 5300,
                          visible: true),
                      const CategoryBox(
                          title: '۲۵۰ فیلم برتر',
                          icon: Icons.local_movies_outlined,
                          texts: ['۲۵۰ فیلم برتر'],
                          height: 50,
                          visible: true),
                      const CategoryBox(
                          title: 'فیلم ایرانی',
                          icon: Icons.local_movies_outlined,
                          texts: ['دانلود فیلم ایرانی'],
                          height: 50,
                          visible: true),
                      const CategoryBox(
                          title: 'فیلم دوبله فارسی',
                          icon: Icons.local_movies_outlined,
                          texts: ['فیلم دوبله فارسی'],
                          height: 50,
                          visible: true),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
