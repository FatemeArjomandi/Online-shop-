import 'dart:ui';

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  static const inputTitle = TextStyle(
      fontFamily: 'Irs',
      fontSize: 16,
      color: Colors.blueAccent,
      fontWeight: FontWeight.w800);

  static const titleStyle = TextStyle(
      fontFamily: 'Irs',
      fontSize: 24,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w800,
      color: Colors.blueAccent);

  static const hintText =
      TextStyle(fontFamily: 'Irs', fontSize: 14, color: Colors.black45);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ثبت نام',
            style: TextStyle(
                fontFamily: 'Irs', fontSize: 20, color: Colors.black54),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
        body: Center(
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
              height: 420,
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                elevation: 4,
                child: Center(
                  child: Column(children: const <Widget>[
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
                        keyboardType: TextInputType.phone,
                        style: inputTitle,
                        obscureText: true,
                        maxLength: 11,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'شماره موبایل',
                          hintStyle: hintText,
                          suffixIcon: Icon(
                            Icons.phone_iphone,
                          ),
                        ),
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
                            ))),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextField(
                        keyboardType: TextInputType.none,
                        maxLength: 11,
                        textAlign: TextAlign.center,
                        style: inputTitle,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'کلمه عبور',
                            hintStyle: hintText,
                            suffixIcon: Icon(Icons.lock)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //تکرار کلمه عبور
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'تکرار کلمه عبور',
                          style: inputTitle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextField(
                        keyboardType: TextInputType.none,
                        maxLength: 11,
                        textAlign: TextAlign.center,
                        style: inputTitle,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'تکرار کلمه عبور',
                            hintStyle: hintText,
                            suffixIcon: Icon(Icons.lock)),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'ثبت نام',
              ),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.blueAccent,
                fixedSize: const Size(330, 60),
                primary: Colors.white,
                textStyle: const TextStyle(
                  fontFamily: 'Irs',
                  fontSize: 22,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
