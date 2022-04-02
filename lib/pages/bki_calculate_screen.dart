import 'package:bmi_calc/service/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/globals.dart' as globals;

class BKI extends StatefulWidget {
  @override
  _BKICalculate createState() => _BKICalculate();
}

class _BKICalculate extends State<BKI> {

  var status = "";
  bool value = false;
  int val = -1;
  var result = "";

  //final FirebaseAuth auth = FirebaseAuth.instance;
  //final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("BKI HESAPLAYICI"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    color: Colors.blueGrey,
                    height: 380,
                    width: size.width,

                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ageInput(),
                            SizedBox(height: 10,),
                            heightInput(),
                            SizedBox(height: 10,),
                            weightInput(),
                            SizedBox(height: 10,),
                            calculateButton(),
                            SizedBox(width: size.width,height: 10),
                            SizedBox(
                              width: size.width,
                              height: 30,
                              child:  Row(
                                children: [
                                  Text(
                                      "BKİ DEĞERİ : ${double.tryParse(result)?.toStringAsFixed(2).toString()} ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  redOrGreen(),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 250,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                             child: Row(
                               children: [
                                 Text(
                                   "SONUÇLAR",
                                   style: TextStyle(
                                     fontStyle: FontStyle.normal,
                                     fontWeight: FontWeight.bold,
                                     decoration: TextDecoration.underline,
                                     decorationColor: Colors.white,
                                     color: Colors.blueAccent,
                                     fontSize: 18,
                                   ),
                                 ),
                               ],
                             ),
                            ),
                            SizedBox(height: 10,width: size.width),


                            Container(
                              color: Colors.grey,
                              child: Column(
                                children: [
                                  sizedBox(Colors.deepPurple,size, "Zayıf                                   ","0 - 18,4 BKI"),
                                  sizedBox(Colors.green,size, "Normal                               ","18.5 - 24.9 BKI"),
                                  sizedBox(Colors.yellow,size, "Fazla Kilolu                        ","25 - 29.9 BKI"),
                                  sizedBox(Colors.orange,size, "Şişman(1.derece obez)   ","30 - 34.9 BKI"),
                                  sizedBox(Colors.redAccent,size, "Şişman(2.derece obez)   ","35 - 44.9 BKI"),
                                  sizedBox(Colors.red,size, "Aşırı Şişman(3.derece obez)","45+ BKI")
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget ageInput() {
    return TextField(
      controller: _ageController,
      style: TextStyle(color: Colors.black),
      keyboardType: TextInputType.number,
      decoration:InputDecoration(
        hintText: 'Yaş',
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none
        ),
      ),
    );
  }

  Widget heightInput() {
    return TextField(
      controller: _heightController,
      style: TextStyle(color: Colors.black),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Boy(cm)',
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none
          ),
      )
    );
  }

  Widget weightInput() {
    return TextField(
      controller: _weightController,
      style: TextStyle(color: Colors.black),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'Ağırlık(kg)',
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none
        ),
      ),
    );
  }

  Widget calculateButton() {
    return FlatButton(
      onPressed: () {


        var height = _heightController.text.toString();
        var cmToMeter = double.parse(height) / 100;
        var weight = double.parse(_weightController.text.toString());
        var total = weight / (cmToMeter * cmToMeter);
        globals.bkiResultList.add(total);


        setState(() {
          result = total.toString();
          if(double.parse(result) >0 && double.parse(result)<18.4)
            {
              status = "Zayıf";
            }
          else if(double.parse(result) >18.5 && double.parse(result)<24.9)
          {
            status = "Normal";
          }
          else if(double.parse(result) >25 && double.parse(result)<29.9)
          {
            status = "Fazla Kilolu";
          }
          else if(double.parse(result) >30 &&double.parse(result)<34.9)
          {
            status = "Şişman(1.derece obez)";
          }
          else if(double.parse(result) >35 &&double.parse(result)<44.9)
          {
            status = "Şişman(2.derece obez)";
          }
          else if(double.parse(result) >45)
          {
            status = "Aşırı Şişman(3.derece obez)";
          }

        });
      },
      textColor: Colors.blue,
      child: Text(
        "HESAPLA",
        style: TextStyle(
          color: Colors.white
        ),
      ),
      color: Colors.green,
    );
  }


  Widget sizedBox(var color ,var size,var status,var range)
  {
    return SizedBox(
      height: 20,
      width: size.width,
      child: Container(

        child: Row(
          children: [
            Icon(Icons.square,color: color,size: 20),
            SizedBox(width: 10),
            Text(status),
            SizedBox(width: 50),
            Text(range)
          ],
        ),
      ),
    );
  }

  Widget redOrGreen()
  {
    if(status.toString() == "Zayıf")
      {
        return Text(
          "Durum : ${status.toString()}",
          style: TextStyle(
              fontSize: 15,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold
          ),
        );
      }
    else if (status.toString() == "Normal")
      {
        return Text(
          "Durum : ${status.toString()}",
          style: TextStyle(
              fontSize: 15,
              color: Colors.green,
              fontWeight: FontWeight.bold
          ),
        );
      }
    else if (status.toString() == "Fazla Kilolu")
    {
      return Text(
        "Durum : ${status.toString()}",
        style: TextStyle(
            fontSize: 15,
            color: Colors.yellow,
            fontWeight: FontWeight.bold
        ),
      );
    }
    else if (status.toString() == "Şişman(1.derece obez)")
    {
      return Text(
        "Durum : ${status.toString()}",
        style: TextStyle(
            fontSize: 15,
            color: Colors.orange,
            fontWeight: FontWeight.bold
        ),
      );
    }
    else if (status.toString() == "Şişman(2.derece obez)")
    {
      return Text(
        "Durum : ${status.toString()}",
        style: TextStyle(
            fontSize: 15,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold
        ),
      );
    }
    else if (status.toString() == "Aşırı Şişman(3.derece obez)")
    {
      return Text(
        "Durum : ${status.toString()}",
        style: TextStyle(
            fontSize: 11,
            color: Colors.red,
            fontWeight: FontWeight.bold
        ),
      );
    }
    else
      {
        return Text(
          "Durum : ${status.toString()}",
          style: TextStyle(
              fontSize: 13,
              color: Colors.red,
              fontWeight: FontWeight.bold
          ),
        );
      }


  }


}

