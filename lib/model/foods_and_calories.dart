import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodsAndCalories
{
  //Milk Products
  Widget ayran(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Ayran"),
            SizedBox(width: size.width * 0.3),
            Text("34 kcal")
          ],
        )
    );
  }
  Widget azYagliSut(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Az Yağlı Süt"),
            SizedBox(width: size.width * 0.19),
            Text("35 kcal"),
          ],
        )
    );
  }
  Widget bademSutu(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Badem Sütü"),
            SizedBox(width: size.width * 0.18),
            Text("17 kcal"),
          ],
        )
    );
  }
  Widget cacik(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Cacık"),
            SizedBox(width: size.width * 0.30),
            Text("117 kcal"),
          ],
        )
    );
  }

  Widget eksiKrema(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Ekşi Krema"),
            SizedBox(width: size.width * 0.20),
            Text("181 kcal"),
          ],
        )
    );
  }

  // Oil Products

  Widget avakadoYagi(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Avakado Yağı"),
            SizedBox(width: size.width * 0.22),
            Text("857 kcal")
          ],
        )
    );
  }
  Widget aycicegiYagi(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Ayçiçeği Yağı"),
            SizedBox(width: size.width * 0.23),
            Text("884 kcal"),
          ],
        )
    );
  }
  Widget bademYagi(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Badem Yağı"),
            SizedBox(width: size.width * 0.25),
            Text("882 kcal"),
          ],
        )
    );
  }
  Widget balikYagi(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Balık Yağı"),
            SizedBox(width: size.width * 0.28),
            Text("1000 kcal"),
          ],
        )
    );
  }

  Widget cevizYagi(var context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        color: Colors.white30,
        child: Row(
          children: [
            Text("Ceviz Yağı"),
            SizedBox(width: size.width * 0.28),
            Text("889 kcal"),
          ],
        )
    );
  }

}