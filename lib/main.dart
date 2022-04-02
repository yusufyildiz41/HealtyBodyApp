import 'package:bmi_calc/pages/home.dart';
import 'package:bmi_calc/pages/login.dart';
import 'package:bmi_calc/service/auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'globals.dart' as globals;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var auth = AuthService();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }

  Widget homeOrLogInPage()
  {
    if(auth.auth.currentUser != null)
      {
        return HomePage();
      }
    else
      {
        return LoginPage();
      }
  }

}








