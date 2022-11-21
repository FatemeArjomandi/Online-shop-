import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const inputTitle = TextStyle(
      fontFamily: 'Irs',
      fontSize: 16,
      color: Colors.blueAccent,
      fontWeight: FontWeight.w800);

  static const titleStyle = TextStyle(
      fontFamily: 'Irs',
      fontSize: 24,
      color: Colors.blueAccent,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w800);

  static const hintText =
      TextStyle(fontFamily: 'Irs', fontSize: 14, color: Colors.black45);

  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'جیک جیک کالا',
            style: titleStyle,
          ),
          backgroundColor: Colors.white,
          elevation: 5,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket, color: Colors.black45),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 20,
            selectedFontSize: 14,
            selectedItemColor: Colors.teal,
            selectedIconTheme:
                const IconThemeData(color: Colors.teal, size: 27),
            selectedLabelStyle: inputTitle,
            unselectedIconTheme: const IconThemeData(size: 27),
            unselectedLabelStyle:
                const TextStyle(fontFamily: 'Irs', fontWeight: FontWeight.bold),
            onTap: _onItemTapped,
            currentIndex: _selectIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'تنظیمات ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'صفحه اصلی',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket),
                label: 'سبد خرید',
              ),
            ]),
      ),
    );
  }
}
