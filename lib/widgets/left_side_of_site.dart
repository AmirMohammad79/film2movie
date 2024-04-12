import 'package:flutter/material.dart';

import 'categories_box.dart';

class LeftSideOfSite extends StatelessWidget {
  const LeftSideOfSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        CategoryBox(
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
        CategoryBox(
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
        CategoryBox(
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
        CategoryBox(
            title: 'لینک های مهم',
            icon: Icons.note,
            texts: [
              ' دانلود رایگان فیلم',
              ' دانلود سریال عاشقانه قسمت ۱۷ هفدهم'
            ],
            height: 80,
            visible: true),
        CategoryBox(
            title: 'تبلیغات',
            icon: Icons.note,
            texts: [],
            height: 16,
            visible: false)
      ],
    );
  }
}
