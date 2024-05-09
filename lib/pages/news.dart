import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

import '../model/movies.dart';
import 'package:http/http.dart' as http;

class NewsList extends StatefulWidget {

  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _MoviesListState();
}

class _MoviesListState extends State<NewsList> {
  String baseUrl = 'https://localhost/movies';
  int itemCount = 120;
  int containersPerPage = 12;
  late PageController _pageController;
  int _currentPage = 0;
  List<Movie> movies = [];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    fetchMovies();
  }
  Future<void> fetchMovies() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body);
      setState(() {
        movies = responseData.map((data) => Movie(
          name: data['name'],
          rating: data['rating'],
          votes: data['votes'],
        )).toList();
      });
    } else {
      throw Exception('Failed to load movies');
    }
  }
  @override
  Widget build(BuildContext context) {
    List<String> date = [
      '۲۴ فروردین ۱۴۰۳',
      '۲۳ فروردین ۱۴۰۳',
      '۲۰ فروردین ۱۴۰۳'
    ];
    List<String> newsTitle = ['۲۰ فیلم برتر سال ۲۰۲۱ به انتخاب فیلم تو مووی',
      'نگاهی به عملکرد پلتفرم‌های دیجیتال در سال کابوس‌وار ۲۰۲۱؛ زیان ۶۰۰ میلیون دلاری Black Widow با دانلودهای غیرقانونی',
      'واکنش لیلی کالینز به تخریب پوستر سریال Emily in Paris در نیویورک',
      'هواداران برای فیلم Arthur The King سیمو لیو و مارک والبرگ آرزوی شکست کردند؛ شرح ماجرای توییت حذف شده لیو در مورد والبرگ پس از پیوستن به فیلم',
      'پربیننده‌ترین فیلم‌های سال ۲۰۲۱ در فیلم تو مووی',
      'ثبت بالاترین امتیاز مخاطبین در تاریخ «راتن تومیتوز» برای Spider-Man: No Way Home',
      'زمین و زمان آماده رستاخیز؛ لحظه‌شماری برای انتشار Matrix Resurrections از HBO Max',
      ' رونمایی از شخصیت انسان جدید Spider در Avatar 2',
    ];
    List<String> texts = [
      'قهرمان ، یک فیلم در سبک ورزشی و مهیج محصول سال ۲۰۱۸ به کارگردانی کیم یونگ ون است. در خلاصه داستان این فیلم آمده است ، یک ورزشکار حرفه‌ای در رشته‌ی مچ‌اندازی برای مسابقات راهی کره جنوبی می‌شود. اما او در آنجا خواهرش را پیدا می‌کند که از وجودش بی‌خبر بوده است و…',
      'درخت گلابی وحشی، نام فیلمی درام محصول سال ۲۰۱۸ به کارگردانی نوری بیلگه جیلان می باشد. این فیلم داستان مردی جوان به نام سینان را دنبال می کند که به ادبیات علاقه دارد و می‌خواهد نویسنده شود. او که به سختی پولی برای انتشار کتابش فراهم کرده است، در دهکده ی زادگاهش با قرض‌های پدرش مواجه می‌شود و…',
      'ناکس می رود، نام فیلمی جنایی و هیجان انگیز محصول سال ۲۰۲۳ و به نویسندگی گرگوری پویریر و کارگردانی مایکل کیتون می باشد. وقتی یک قاتل حرفه ای با یک نوع پیشرفته از بیماری زوال عقل مواجه می شود، فرصتی برای رستگاری به او ارائه می شود تا با نجات جان پسر بزرگسال و دور افتاده اش، برای خود سرنوشت بهتری را رقم بزند…',
      'خانم نظافتچی، نام سریالی جنایی، درام و هیجان انگیز محصول سال ۲۰۲۲ و به کارگردانی میراندا کواک می باشد. یک پزشک باهوش کامبوجی برای یک معالجه پزشکی به ایالات متحده می آید تا پسرش را نجات دهد، اما وقتی سیستم شکست می خورد و او را به مخفی می کشاند، او از حیله گری و هوش خود برای مبارزه استفاده می کند و به دلایل درست قانون را زیر پا می گذارد.',
      'جاسوس مرکزی , نام فیلمی اکشن , کمدی و جنایی محصول سال ۲۰۱۶ به کارگردانی راوسون مارشال تربر می باشد.حسابداری خوش اخلاق به نام کالوین جوینر، تلاش می کند که از طریق یک شبکه اجتماعی پرطرفدار، با دوستان دوران نوجوانی خود ارتباط برقرار کند. دیری نمی گذرد که فردی به نام باب استون با کالوین تماس می گیرد و آنها با هم قرار ملاقات می گذارند. در ادامه، باب از کالوین درخواست کمک می نماید و…'
    ];
    int totalPages = (itemCount / containersPerPage).ceil();
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: totalPages,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              int startIndex = index * containersPerPage;
              int endIndex = (index + 1) * containersPerPage;
              endIndex = endIndex > itemCount ? itemCount : endIndex;

              List<Widget> containers = [];

              for (int i = startIndex; i < endIndex; i++) {
                String name = newsTitle[Random().nextInt(newsTitle.length)];
                containers.add(Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(top: 8),
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
                        child:  Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '${name} ',
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'Far_Dinar_Two_Medium',
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 900,
                      height: 40,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xffEFEEEE),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(4),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'آخرین اخبار سینمای جهان',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'tahoma',
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                  ),
                                ),
                                Icon(
                                  Icons.ad_units,
                                  color: Colors.green,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Icon(
                                  Icons.calendar_month,
                                  color: Colors.redAccent,
                                  size: 20,
                                ),
                                Text(
                                  date[Random().nextInt(date.length)],
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: const TextStyle(
                                    fontFamily: 'tahoma',
                                    fontSize: 12,
                                    color: Color(0xff717171),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 900,
                      height: 925,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 400,
                            margin:
                            const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
                            padding:
                            const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 8),
                            decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                            child: Container(
                              width: 300,
                              height: 350,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xffEFEEEE),
                                borderRadius:  BorderRadius.circular(24),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffEFEEEE),
                                    borderRadius:  BorderRadius.circular(16),
                                    border: Border.all(color: Colors.grey),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/images/${Random().nextInt(12)+1}.png')
                                    )
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 32,),
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(onPressed: (){}, child: Text('برای مشاهده ادامه مطلب و دانلود کلیک کنید',    textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'tahoma',
                                    fontSize: 16,
                                    color: Color(0xff337ab7),
                                    fontWeight: FontWeight.bold,
                                  ),),),
                                Icon(Icons.file_download_outlined , color: Color(0xff337ab7),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ));
              }
              return ListView(
                children: containers,
              );
            },
          ),
        ),
        Container(
          height: 80,
          margin: EdgeInsets.only(bottom: 1100),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black , blurStyle: BlurStyle.normal, blurRadius: 2)
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(totalPages, (index) {
              final pageNumber = index + 1;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentPage = pageNumber;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: pageNumber == _currentPage ? Color(0xfff8294e): Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: pageNumber == _currentPage ? Color(0xfff8294e): Colors.blue,
                  ),
                  child: Text(
                    pageNumber == _currentPage ?'$totalPages از $pageNumber':'$pageNumber',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color:  pageNumber == _currentPage ? Colors.white: Colors.black,
                        fontFamily:'tahoma',
                        fontSize: 10
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
