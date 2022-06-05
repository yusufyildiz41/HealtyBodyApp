import 'package:flutter/material.dart';
import '../model/menu_item.dart';

class MenuItems{

  //Sign Out
  static const List<MenuItem> itemSecond =[itemSignOut];
  static const itemSignOut = MenuItem(   //From MenuItem Class
    text: 'Çıkış Yap',
    icon: Icons.logout
  );

}