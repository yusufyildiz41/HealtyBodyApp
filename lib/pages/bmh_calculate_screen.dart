import 'package:bmi_calc/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/globals.dart' as globals;
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';

class BMHCalculate extends StatefulWidget {
  @override
  _BMHCalculate createState() => _BMHCalculate();
}

class _BMHCalculate extends State<BMHCalculate> {
  var status = "";
  bool value = false;
  int val = -1;
  var result = "";

  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("BMH Hesaplayıcı"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 120),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  color: Colors.grey,
                  height: 400,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(height: 30, width: 130, child: male()),
                            Container(height: 30, width: 140, child: female())
                          ],
                        ),
                        SizedBox(
                          height: 20,
                          width: size.width,
                        ),
                        ageInput(),
                        SizedBox(height: 10,),
                        heightInput(),
                        SizedBox(height: 10,),
                        weightInput(),
                        SizedBox(height: 10,),
                        calculateButton(),
                        SizedBox(width: size.width, height: 10),
                        SizedBox(
                          width: size.width,
                          height: 30,
                          child: Row(
                            children: [
                              Text(
                                "BMR DEĞERİ : ${double.tryParse(result)?.toStringAsFixed(2).toString()} ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget ageInput() {
    return TextField(
      controller: _ageController,
      style: TextStyle(color: Colors.black),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'Yaş',
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none),
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
            borderSide: BorderSide.none),
      ),
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
            borderSide: BorderSide.none),
      ),
    );
  }

  Widget male() {
    return ListTile(
      title: Text("Bay"),
      contentPadding: EdgeInsets.all(0),
      leading: Radio(
        value: 1,
        groupValue: val,
        onChanged: (value) {
          setState(() {
            val = value as int;
          });
        },
        activeColor: Colors.green,
      ),
    );
  }

  Widget female() {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        "Bayan",
      ),
      leading: Radio(
        value: 2,
        groupValue: val,
        onChanged: (value) {
          setState(() {
            val = value as int;
          });
        },
        activeColor: Colors.green,
      ),
    );
  }

  Widget calculateButton() {
    return RaisedButton(
      onPressed: () {
        setState(() {
          var age = _ageController.text.toString();
          var ageInt = int.parse(age);
          var height = _heightController.text.toString();
          var cm = int.parse(height);
          var cmToMeter = double.parse(height) / 100;
          var weight = double.parse(_weightController.text.toString());

          if (val == 1) //Male
          {
            var total =
                88.362 + (13.397 * weight) + (4.799 * cm) - (5.677 * ageInt);

            globals.bmhResultList.add(total);

            result = total.toString();
            setState(() {
              if (ageInt > 20 && ageInt < 40 && total > 1200 && total < 1600) {
                status = "Sağlıklı";
              } else {
                status = "Sağlıksız";
              }
            });
          } else if (val == 2) //Female
          {
            var total =
                447.593 + (9.247 * weight) + (3.098 * cm) - (4.330 * ageInt);
            globals.bmhResultList.add(total);
            result = total.toString();
            setState(() {
              if (ageInt > 20 && ageInt < 40 && total > 1000 && total < 1400) {
                status = "Sağlıklı";
              } else {
                status = "Sağlıksız";
              }
            });
          }
        });
      },
      child: Text(
        "HESAPLA",
      ),
      color: Colors.green,
    );
  }


  /*
  Widget genderPicker()
  {
    return GenderPickerWithImage(
      showOtherGender: true,
      verticalAlignedText: false,
      selectedGender: Gender.Male,
      selectedGenderTextStyle: TextStyle(
          color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
      unSelectedGenderTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.normal),
      onChanged: (Gender? gender) {
        print(gender);
      },
      equallyAligned: true,
      animationDuration: Duration(milliseconds: 300),
      isCircular: true,
      // default : true,
      opacityOfGradient: 0.4,
      padding: const EdgeInsets.all(3),
      size: 50, //default : 40
    );
  }
*/

/*
  Widget redOrGreenText()
  {
    if(status == "Sağlıklı")
      {
        return Text(
            " Durum : ${status.toString()}",
            style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold
            ),
        );
      }
    else if (status == "Sağlıksız")
      {
        return Text(
          " Durum : ${status.toString()}",
          style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold
          ),
        );
      }
    else{
      return Text("");
    }
  }
  */

}

