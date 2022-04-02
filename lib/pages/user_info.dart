import 'package:bmi_calc/data/menu_items.dart';
import 'package:bmi_calc/model/menu_item.dart';
import 'package:bmi_calc/pages/login.dart';
import 'package:bmi_calc/service/auth.dart';
import 'package:bmi_calc/util/user_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfo createState() => _UserInfo();
}

class _UserInfo extends State<UserInfo> {

  var auth = AuthService();

  @override
  Widget build(BuildContext context) {

    var user = UserPreferences().myUser;
    var size = MediaQuery.of(context).size;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanıcı Hakkında"),
        actions: [
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemSecond.map(buildItem).toList(),
            ],
          )
        ],

      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Text(
            user.userName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Boy : "+user.height,
            style: TextStyle(fontSize: 16,height: 1.4),
          ),
          SizedBox(height: 4),
          Text(
              "Ağırlık : "+user.weight,
            style: TextStyle(fontSize: 16,height: 1.4),
          ),
          SizedBox(height: 4),
          Text(
              "Bki : " +user.bki,
            style: TextStyle(fontSize: 16,height: 1.4),
          ),
          SizedBox(height: 4),
          Text(
            "Bmh : " + user.bmh,
              style: TextStyle(fontSize: 16,height: 1.4),
          ),

        ],
      ),


    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
        value: item,
        child: Row(
          children: [
            Icon(item.icon, color: Colors.black, size: 20),
            const SizedBox(width: 12),
            Text(item.text),
          ],
        ),
      );
  void onSelected(BuildContext context, MenuItem item) {
    if(item.text == MenuItems.itemSignOut.text)
    {
      auth.signOut();
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => LoginPage()),(e) => false);

    }
  }


}

