import 'package:bmi_calc/pages/app_info.dart';
import 'package:bmi_calc/pages/calculate_screen.dart';
import 'package:bmi_calc/pages/food_screen.dart';
import 'package:bmi_calc/pages/user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold);

  void onItemTapped(int index) {

    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget child = Container();
    if (selectedIndex == 0) {
      child = CalculatePage();
    }
    else if(selectedIndex == 1)
      {
        child = FoodScreen();
      }
    else if(selectedIndex == 2)
      {
        child = AppInfo();
      }
    else if(selectedIndex == 3)
      {
        child = UserInfo();
      }

    // TODO: implement build
    return Scaffold(

        body: SizedBox.expand(
          child: SizedBox.expand(
            child: child,
          ),
        ),
        bottomNavigationBar: bottomTab()
    );
  }

  Widget bottomTab() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Hesapla'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_sharp),
            label: 'Yiyecekler'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Hakkında'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Kullanıcı'
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.green[400],
      onTap: onItemTapped,
    );
  }

}

