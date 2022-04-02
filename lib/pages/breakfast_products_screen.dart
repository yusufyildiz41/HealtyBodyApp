
import 'package:bmi_calc/model/foods_and_calories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DairyAndEggProducts extends StatefulWidget {
  @override
  _BreakfastProductsState createState() => _BreakfastProductsState();
}

class _BreakfastProductsState extends State<DairyAndEggProducts> {
  @override
  Widget build(BuildContext context) {
    var foodsAndCalories = FoodsAndCalories();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Süt ve Süt Ürünleri"),
      ),
      body: ListView(

          padding: EdgeInsets.all(3),
          children: [
            Card(
              child: ListTile(
                title: foodsAndCalories.ayran(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.azYagliSut(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.bademSutu(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.eksiKrema(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.cacik(context),
              ),
            ),

          ]),
    );
  }
}
