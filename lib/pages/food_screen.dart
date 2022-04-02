import 'package:bmi_calc/pages/breakfast_products_screen.dart';
import 'package:bmi_calc/pages/fats_and_oils_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreen createState() => _FoodScreen();
}

class _FoodScreen extends State<FoodScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Image.asset(
          "assets/images/food.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("Besinler Hakkında Bilgiler"),
          ),
          body: Column(
            children: [
              Container(
                  width: screenSize.width,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 150,),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                          child:breakfastButton(context)
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                          child: mealButton(context)
                      ),
                    ],
                  )
              ),

            ],
          ),

        )
      ],
    );
  }

  Widget breakfastButton(BuildContext context)
  {
    return  ElevatedButton(
        onPressed: (){

          Navigator.push(context,MaterialPageRoute(builder: (context) => DairyAndEggProducts()));

        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(10)),
            minimumSize: MaterialStateProperty.all<Size>(Size(400,80)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black26),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color : Colors.blue)
                )
            )
        ),
        child: Text("Süt ve Süt Ürünleri",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)
    );
  }
  Widget mealButton(BuildContext context)
  {
    return  ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FatsAndOils()));

        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(10)),
            minimumSize: MaterialStateProperty.all<Size>(Size(400,80)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black26),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color : Colors.blue)
                )
            )
        ),
        child: Text("Yağlı Ürünler",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)
    );
  }


}
