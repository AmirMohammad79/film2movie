import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF1D943C),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 200,
          height: 30,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.white,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration:  InputDecoration(
                icon:Icon(Icons.search_rounded , color: Color(0xFF1D943C),) ,
                iconColor: Colors.black,
                hintText: '... جست و جو',
                hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Far_Dinar_Two_Medium',fontWeight: FontWeight.w400  ),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                // Perform search functionality here
              },
            ),
          ),
        ),
        actions: <Widget>[
          SizedBox(width: 16), // Add some space before words
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageA()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('تبلیغات' ,  style: TextStyle( fontFamily: 'Far_Dinar_Two_Medium',fontWeight: FontWeight.w400)),
            ),
          ),
          SizedBox(width: 24), // Add some space between words
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageB()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('برچسب ها' ,  style: TextStyle( fontFamily: 'Far_Dinar_Two_Medium',fontWeight: FontWeight.w400)),
            ),
          ),
          SizedBox(width: 24), // Add some space between words
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageC()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('تماس با ما' ,  style: TextStyle( fontFamily: 'Far_Dinar_Two_Medium',fontWeight: FontWeight.w400)),
            ),
          ),
          SizedBox(width: 24), // Add some space between words
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageD()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('صفحه اصلی' ,  style: TextStyle( fontFamily: 'Far_Dinar_Two_Medium',fontWeight: FontWeight.w400)),
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

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page A'),
      ),
      body: Center(
        child: Text('Page A Content'),
      ),
    );
  }
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page B'),
      ),
      body: Center(
        child: Text('Page B Content'),
      ),
    );
  }
}

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page C'),
      ),
      body: Center(
        child: Text('Page C Content'),
      ),
    );
  }
}

class PageD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page D'),
      ),
      body: Center(
        child: Text('Page D Content'),
      ),
    );
  }
}
