import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/product.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
      color: Colors.teal,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w800);

  static const hintText =
      TextStyle(fontFamily: 'Irs', fontSize: 14, color: Colors.black45);

  int _selectIndex = 0;
  int _value = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Product> items = [
    Product(
        '1',
        'فرش چکاوک 700 شانه',
        'https://www.bfarsh.com/wp-content/uploads/2022/11/%DA%86%DA%A9%D8%A7%D9%88%DA%A9-%D8%AF%D9%88%D8%AF%DB%8C.jpeg',
        '2550000',
        'فرش 700 شانه ارزان قیمت, فرش کاشان'),
    Product(
        '2',
        'فرش  دستباف اصیل ',
        'https://dl.amirkabircarpet.ir/wp-uploads/2022/11/nobel-colaris-kashan-carpet.jpg',
        '8110000',
        'کد 100903 شرابی'),
    Product(
        '3',
        'فرش  فیروزه ای طرح دستباف',
        'https://dl.amirkabircarpet.ir/wp-uploads/2022/06/IMG_1718.jpg',
        '7770000',
        'کد 1056409شرابی'),
    Product(
        '4',
        'فرش کرشمه نسکافه ای',
        'https://dl.amirkabircarpet.ir/wp-uploads/2021/12/kereshme-1200-neskafe.jpg',
        '4980000',
        'کد 16580903 شرابی'),
  ];

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
        body: mainUI(),
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

  Widget mainUI() {
    return Builder(builder: (context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            ImageSlideshow(
              width: double.infinity,
              height: 160,
              initialPage: _value,
              indicatorBackgroundColor: Colors.teal,
              indicatorColor: Colors.white,
              children: <Widget>[
                Image.asset(
                  'slider1.jpeg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'slider2.jpeg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'slider3.jpeg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'slider4.jpeg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'slider5.jpeg',
                  fit: BoxFit.fill,
                ),
              ],
              autoPlayInterval: 6000,
              isLoop: true,
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                margin: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.arrow_back_ios_new_rounded),
                    Text(
                      'پرفروش ترین محصولات',
                      style: titleStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 320,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(items.length, (int position) {
                    return generateItems(items[position], context);
                  }),
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  Widget generateItems(Product product, BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 10,
      child: InkWell(
          onTap: () {},
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 190,
                    height: 170,
                    child: Image.network(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 220,
                    height: 50,
                    child: Text(
                      product.name,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          color: Colors.black, fontSize: 18, fontFamily: 'Irs'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1.4,
                    color: Colors.grey,
                    endIndent: 15,
                    indent: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,

                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text('تومان',
                              style: TextStyle(
                                  fontFamily: 'Irs',
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text(product.price,
                              style: const TextStyle(
                                  fontFamily: 'Irs',
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ]),
                  )
                ]),
          )),
    );
  }
}
