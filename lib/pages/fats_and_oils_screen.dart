import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/foods_and_calories.dart';

class FatsAndOils extends StatefulWidget{
  @override
  _BreakfastProductsState createState() => _BreakfastProductsState();

}
class _BreakfastProductsState extends State<FatsAndOils>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                title: foodsAndCalories.avakadoYagi(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.aycicegiYagi(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.bademYagi(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.cevizYagi(context),
              ),
            ),
            Card(
              child: ListTile(
                title: foodsAndCalories.balikYagi(context),
              ),
            ),

          ]),
    );
  }

}