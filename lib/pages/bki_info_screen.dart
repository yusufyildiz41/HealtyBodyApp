import 'package:bmi_calc/pages/info_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BKIInfo extends StatefulWidget {
  @override
  _BkiInfo createState() => _BkiInfo();
}

class _BkiInfo extends State<BKIInfo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    InfoText infoText = new InfoText();
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("BKI Hakkında"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height:30,
              color: Colors.white12,
              child: infoText.info_1(),
            ),
            Container(
              height:950,
              color: Colors.white12,
              child: Center(child:infoText.info_2()),
            ),
            Container(
              height:40,
              color: Colors.white12,
              child: infoText.info_3(),
            ),
            Container(
                height: 1700,
                color: Colors.white12,
                child: Center(child: infoText.info_4())
            ),
            Container(
              height: 50,
              color: Colors.white12,
              child: Center(child:infoText.info_5()),
            ),
            Container(
              height: 1100,
              color: Colors.white12,
              child: Center(child:infoText.info_6()),
            ),
          ],
        )
    );
  }
}
