import 'package:bmi_calc/pages/info_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMHInfo extends StatefulWidget {
  @override
  _BmhInfo createState() => _BmhInfo();
}

class _BmhInfo extends State<BMHInfo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    InfoText infoText = new InfoText();
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("BMH Hakkında"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height:50,
              color: Colors.white12,
              child: infoText.info_7(),
            ),
            Container(
              height:250,
              color: Colors.white12,
              child: infoText.info_8(),
            ),
            Container(
              height:50,
              color: Colors.white12,
              child: infoText.info_9(),
            ),
            Container(
                height: 600,
                color: Colors.white12,
                child: infoText.info_10()
            ),
            Container(
              height: 70,
              color: Colors.white12,
              child: infoText.info_11(),
            ),
            Container(
              height: 550,
              color: Colors.white12,
              child: infoText.info_12(),
            ),
            Container(
              height:70,
              color: Colors.white12,
              child: infoText.info_13(),
            ),
            Container(
              height:550,
              color: Colors.white12,
              child: infoText.info_14(),
            ),
            Container(
              height:60,
              color: Colors.white12,
              child: infoText.info_15(),
            ),
            Container(
                height: 300,
                color: Colors.white12,
                child: infoText.info_16()
            ),
            Container(
              height: 70,
              color: Colors.white12,
              child: infoText.info_17(),
            ),
            Container(
              height: 500,
              color: Colors.white12,
              child: infoText.info_18(),
            ),
          ],
        )
    );
  }
}
