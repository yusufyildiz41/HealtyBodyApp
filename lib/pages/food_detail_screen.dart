import 'dart:async';
import 'dart:convert';


import 'package:bmi_calc/model/foods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

import '../model/food_info_model.dart';

class FoodDetailScreen extends StatefulWidget{

  final int? id;
  String name;
  FoodDetailScreen(this.id,this.name);

  @override
  _FoodDetailScreen createState() => _FoodDetailScreen();

}

class _FoodDetailScreen extends State<FoodDetailScreen>{

  late FoodDetails foodData;


  bool loading = true;
  
  @override
  void initState() {
    // TODO: implement initState

    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    var url = "https://api.nal.usda.gov/fdc/v1/food/${widget.id.toString()}?api_key=5RwEf1plXOl9LKSGaBG9tk3j9uuKH4nJtSsTq9yV";

    var response = await http.get(Uri.parse(url));
    var decodeResponse = jsonDecode(response.body);
    foodData = FoodDetails.fromJson(decodeResponse);
    setState(() {
      loading = false;
    });
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: loading?
        SizedBox.shrink() : Text("${widget.name.toString()}",style: TextStyle(fontSize: 24),),
      ),
      body: Container(
        child: loading ?
        Center(child: CircularProgressIndicator()):Column(
          children: [
            Text("Porsiyon: 100g",
              style: TextStyle(
              fontSize: 22,
                  color: HexColor('#2E5AC9'),
                fontWeight: FontWeight.bold
            ),),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: foodData.foodNutrients?.length,
                    itemBuilder: (context,index){

                    return  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "${foodData.foodNutrients?[index].nutrient?.name} :"
                          " ${foodData.foodNutrients?[index].amount}: ${foodData.foodNutrients?[index].amount == null ? "":foodData.foodNutrients?[index].nutrient?.unitName} "
                        ,style: TextStyle(
                            fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#979494')),),
                    );
                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}