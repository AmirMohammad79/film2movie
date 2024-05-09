import 'package:flutter/material.dart';

import '../pages/news_page.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewsPage()),
                                );
                              },
                              child: Container(
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
    );
  }
}
