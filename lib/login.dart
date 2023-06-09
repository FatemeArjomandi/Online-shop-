import 'package:flutter/material.dart';
import 'package:flutter_application_5/selector.dart';
import 'package:flutter_application_5/signup.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Scaffold(
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
              leading: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Selector())));
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black45,
                ),
              ),
            ),
            body:const LoginUI(),
          );
        }
      ),
    );
  }
}

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

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
                        textAlign: TextAlign.center,
                        style: inputTitle,
                        decoration: InputDecoration(
                          labelStyle: hintText,
                          labelText: 'Number Phone',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.greenAccent, width: 2)
                          )
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
                            
                            labelStyle: hintText,
                            labelText: 'Pasvord',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.blueAccent, width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.greenAccent, width: 2)
                            )),
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
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) =>const Signup())));
            },
            child: const Text(
              'حساب کاربری ندارم',
              style: inputTitle,
            ),
          )
        ],
      ),
    );
  }
}
