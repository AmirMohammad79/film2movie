  import 'dart:convert';
import 'dart:math';

  import 'package:flutter/material.dart';

import 'model/movies.dart';
  import 'package:http/http.dart' as http;

  class MoviesList extends StatefulWidget {

    const MoviesList({Key? key}) : super(key: key);

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
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
     final response = await http.get(Uri.parse('https://api.example.com/movies'));

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
      List<String> moviesName = ['BloodRayne',
        'Inspector Gadget 2',
        'The Visitors: Bastille Day',
        'The Adventures of Rocky & Bullwinkle',
        'Jaws: The Revenge',
        'French Fried Vacations 3: Friends Forever',
        'Gigli',
       ' Meet the Spartans',
        'The Room',
        'Wounds',
'        Baby Geniuses'
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
                  String name = moviesName[Random().nextInt(moviesName.length)];
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
                                '${name}دانلود  ',
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
                                    '1080p WEB-DL, 720p WEB-DL,480p WEB-DL',
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'با لینک مستقیم',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'tahoma',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                 Text(
                                  '${name}',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'tahoma',
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'دانلود',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.blue[400],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'کیفیت ۴۸۰p اضافه شد',
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'tahoma',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff800000),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'کیفیت ۷۲۰p اضافه شد',
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'tahoma',
                                fontSize: 16,
                                color: Color(0xff800080),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'کیفیت ۱۰۸۰p اضافه شد',
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'tahoma',
                                fontSize: 16,
                                color: Color(0xff333399),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Visibility(
                              visible: Random().nextInt(10) >= 5 ? false : true,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                margin: const EdgeInsets.only(left: 16, right: 16),
                                width: 900,
                                height: 30,
                                color: Colors.orange[600],
                                child: const Center(
                                  child: Text(
                                    'نسخه دوبله  فارسی اضافه شد',
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'tahoma',
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Visibility(
                              visible: Random().nextInt(10) >= 5 ? true : false,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                margin: const EdgeInsets.only(left: 16, right: 16),
                                width: 900,
                                height: 30,
                                color: Colors.green[700],
                                child: const Center(
                                  child: Text(
                                    'نسخه زیرنویس چسبیده فارسی اضافه شد',
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'tahoma',
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 400,
                              margin:
                              const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
                              padding:
                              const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 8),
                              decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
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
                                          Container(
                                            height: 24,
                                            width: 60,
                                            margin: EdgeInsets.only(top: 58.8),
                                            color: Color(0xff00CCCC),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      const Row(
                                        children: [
                                          Text('Film2Movie',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.orange)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'منتشر کننده فایل:',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('درام , خانوادگی , اجتماعی',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.orange)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'ژانر:',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          height: 24,
                                          width: 450,
                                          color: Color(0xff00CCCC),
                                          child:  Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text('۶٫۴/۱۰ از ۱۹K رای' , textAlign: TextAlign.right,
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      fontFamily: 'tahoma',
                                                      fontSize: 14,
                                                      color: Colors.white)),
                                              SizedBox(width: 2,),
                                              Image.asset('assets/images/imdb.png')
                                            ],
                                          )),
                                      const Row(
                                        children: [
                                          Text('۱۲۴ دقیقه',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'مدت زمان :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('انگلیسی',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'زبان :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/3stars.png'),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'کیفیت : ',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('MP4',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'فرمت :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('MKV',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'انکودر :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('متفاوت با کیفیت',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'حجم :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('ایالات متحده آمریکا,',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'محصول :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('Jack Black, Awkwafina, Viola Davis',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.orange)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'ستارگان :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('Mike Mitchell, Stephanie Stine',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.orange)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'کارگردان :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('کیفیت‌های دیگر',
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'tahoma',
                                                  fontSize: 14,
                                                  color: Colors.orange)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'لینک‌های مرتبط :',
                                            textAlign: TextAlign.right,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'tahoma',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
                              padding:
                              const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 8),
                              decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('خلاصه داستان :' ,  textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'tahoma',
                                      fontSize: 16,
                                      color: Color(0xff00ced1),
                                    ), )
                                ],
                              ),
                            ),
                            Container(
                              height: 150,
                              margin:
                              const EdgeInsets.only(top: 4, bottom: 8, left: 16, right: 16),
                              padding:
                              const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 8),
                              decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                              child: Wrap(
                                children: [
                                  Text( texts[Random().nextInt(texts.length)],  textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      height: 3,
                                      fontFamily: 'tahoma',
                                      fontSize: 14,
                                      color: Colors.black,
                                    ), )
                                ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  if (_currentPage > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              Text('Page ${_currentPage + 1} of $totalPages'),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  if (_currentPage < totalPages - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ],
      );
    }
}
