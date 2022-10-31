import 'dart:ui';

import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ورود',
            style: TextStyle(
              fontFamily: 'Irs',
              fontSize: 20,
              color: Colors.black45,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black45,
          ),
        ),
        body: LoginUI(),
      ),
    );
  }

  Widget LoginUI() {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Text(
            'فروشگاه آنلاین من',
            style: titleStyle,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              elevation: 4,
              child: Center(
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 30,
                    ),

                    //نام کاربری
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'نام کاربری',
                          style: inputTitle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextField(
                        maxLength: 11,
                        keyboardType: TextInputType.phone,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: inputTitle,
                        decoration: InputDecoration(
                            hintText: 'شماره موبایل',
                            hintStyle: hintText,
                            suffixIcon: Icon(Icons.phone_iphone)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //کلمه عبور
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'کلمه عبور',
                          style: inputTitle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextField(
                        maxLength: 11,
                        keyboardType: TextInputType.none,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: inputTitle,
                        decoration: InputDecoration(
                            hintText: 'کلمه عبور',
                            hintStyle: hintText,
                            suffixIcon: Icon(Icons.lock)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
              onPressed: () {},
              child: const Text('ورود'),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blueAccent,
                  fixedSize: const Size(330, 60),
                  primary: Colors.white,
                  textStyle: const TextStyle(
                    fontFamily: 'Irs',
                    fontSize: 22,
                  ))),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'حساب کاربری ندارم',
            style: inputTitle,
          )
        ],
      ),
    );
  }
}
