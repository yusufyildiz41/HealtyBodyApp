import 'package:bmi_calc/pages/home.dart';
import 'package:bmi_calc/pages/login.dart';
import 'package:bmi_calc/service/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDhBA_FcqL5fqGtR0WCTYuWg6IhTKZ2oD8",
          appId: "1:665662953630:android:7e17d2e5776f8131c8838f",
          messagingSenderId: "",
          projectId: "newbmi-c3226"));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  //admob
  //app id = ca-app-pub-9674377801597724~8846116789
  //admob banner
  //banner real ad id = ca-app-pub-9674377801597724/6371733359
  //banner test ad id = ca-app-pub-3940256099942544/6300978111

  var auth = AuthService();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homeOrLogInPage(),
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








