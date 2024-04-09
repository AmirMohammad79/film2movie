import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String title;
  final List<String> texts;
  final double height;
  final bool visible;
  const CategoryBox({
    Key? key,
    required this.title,
    required this.texts,
    required this.height, required this.visible,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 280,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffFCFCFC),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.note,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    VerticalDivider(
                      width: 10,
                    )
                  ],
                ),
                Text(title,
                    style: TextStyle(
                        fontFamily: 'Far_Dinar_Two_Medium',
                        fontSize: 20,
                        fontWeight: FontWeight.w400))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: 280,
            height: height,
            decoration: BoxDecoration(
              color: Color(0xffEFEEEE),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8)),
              border: Border.all(color: Colors.grey),
            ),
            child: ListView.builder(
              itemCount: texts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        texts[index],
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'tahoma',
                          fontSize: 12,
                          color: Color(0xff337ab7),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Visibility(
                        visible: visible,
                          child: Icon(
                        Icons.circle_sharp,
                        color: Colors.grey,
                        size: 6,
                      )),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
