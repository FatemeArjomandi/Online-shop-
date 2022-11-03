import 'package:flutter/material.dart';
import 'package:flutter_application_5/login.dart';
import 'package:flutter_application_5/signup.dart';

void main() {
  runApp(const Selector());
}

class Selector extends StatefulWidget {
  const Selector({Key? key}) : super(key: key);

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  static const titlestyle = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.w800,
      fontFamily: 'Irs',
      fontSize: 22,
      letterSpacing: 0.5);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(children: <Widget>[
            const SizedBox(height: 100),
            const Text('خوش آمدید', style: titlestyle),
            const SizedBox(height: 50),
            Image.asset(
              'welcome.gif',
              height: 250,
              width: 250,
            ),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const MyLogin())));
              },
              child: const Text('ورود'),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                fixedSize: const Size(330, 60),
                primary: Colors.white,
                backgroundColor: Colors.blueAccent,
                elevation: 10,
                textStyle: const TextStyle(fontSize: 22, fontFamily: 'Irs'),
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>const Signup())));
              },
              child: const Text('ثبت نام'),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fixedSize: const Size(330, 60),
                  primary: Colors.blue,
                  backgroundColor: Colors.white,
                  elevation: 10,
                  textStyle: const TextStyle(fontSize: 22, fontFamily: 'Irs')),
            )
          ]),
        ),
      ),
    );
  }
}
