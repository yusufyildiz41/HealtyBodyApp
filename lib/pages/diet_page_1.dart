import 'package:bmi_calc/pages/info_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/indicator.dart';

class DietPage1 extends StatefulWidget{

  @override
  _DietPage1 createState() => _DietPage1();


}
class _DietPage1 extends State<DietPage1>{

  InfoText infoText = new InfoText();
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zayıflar İçin Beslenme Programı"
        ),
      ),
      body:  ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height:size.height * 0.13,
            color: Colors.white12,
            child: infoText.infoGraphic(),
          ),
          Container(
              height: size.height * 0.4,
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: PieChart(
                            PieChartData(
                                pieTouchData: PieTouchData(touchCallback:
                                    (FlTouchEvent event, pieTouchResponse) {
                                  setState(() {
                                    if (!event.isInterestedForInteractions ||
                                        pieTouchResponse == null ||
                                        pieTouchResponse.touchedSection ==
                                            null) {
                                      touchedIndex = -1;
                                      return;
                                    }
                                    touchedIndex = pieTouchResponse
                                        .touchedSection!.touchedSectionIndex;
                                  });
                                }),
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                sectionsSpace: 0,
                                centerSpaceRadius: 40,
                                sections: showingSections()),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Indicator(
                            color: Color(0xff0293ee),
                            text: 'Karbonhidrat',
                            isSquare: true,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Indicator(
                            color: Color(0xfff8b250),
                            text: 'Yağ',
                            isSquare: true,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Indicator(
                            color: Color(0xff845bef),
                            text: 'Protein',
                            isSquare: true,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                    ],
                  ),
                ),
              )
          ),


          Container(
            height:size.height * 0.04,
            color: Colors.white12,
            child: infoText.info_19(),
          ),
          Container(
            height:size.height * 0.6,
            color: Colors.white12,
            child: Center(child:infoText.info_20()),
          ),
          Container(
            height:size.height * 0.05,
            color: Colors.white12,
            child: infoText.info_21(),
          ),
          Container(
              height: size.height * 0.4,
              color: Colors.white12,
              child: Center(child: infoText.info_22())
          ),
          Container(
            height: size.height * 0.05,
            color: Colors.white12,
            child: Center(child:infoText.info_23()),
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.white12,
            child: Center(child:infoText.info_24()),
          ),
          Container(
            height: size.height * 0.05,
            color: Colors.white12,
            child: Center(child:infoText.info_25()),
          ),
          Container(
            height: size.height * 0.18,
            color: Colors.white12,
            child: Center(child:infoText.info_26()),
          ),
          Container(
            height: size.height * 0.05,
            color: Colors.white12,
            child: Center(child:infoText.info_27()),
          ),
          Container(
            height: size.height * 0.5,
            color: Colors.white12,
            child: Center(child:infoText.info_28()),
          ),
          Container(
            height: size.height * 0.05,
            color: Colors.white12,
            child: Center(child:infoText.info_29()),
          ),
          Container(
            height: size.height * 1.04,
            color: Colors.white12,
            child: Center(child:infoText.info_30()),
          ),
          Container(
            height: size.height * 0.03,
            color: Colors.white12,
            child: Center(child:infoText.info_31()),
          ),
          Container(
            height: size.height * 0.16,
            color: Colors.white12,
            child: Center(child:infoText.info_32()),
          ),
          Container(
            height: size.height * 0.04,
            color: Colors.white12,
            child: Center(child:infoText.info_33()),
          ),
          Container(
            height: size.height * 0.34,
            color: Colors.white12,
            child: Center(child:infoText.info_34()),
          ),
          Container(
            height: size.height * 0.04,
            color: Colors.white12,
            child: Center(child:infoText.info_35()),
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.white12,
            child: Center(child:infoText.info_36()),
          ),
          Container(
            height: size.height * 0.04,
            color: Colors.white12,
            child: Center(child:infoText.info_37()),
          ),
          Container(
            height: size.height * 1,
            color: Colors.white12,
            child: Center(child:infoText.info_38()),
          ),
          Container(
            height: size.height * 0.04,
            color: Colors.white12,
            child: Center(child:infoText.info_39()),
          ),
          Container(
            height: size.height * 0.5,
            color: Colors.white12,
            child: Center(child:infoText.info_40()),
          ),
          Container(
            height: size.height * 0.04,
            color: Colors.white12,
            child: Center(child:infoText.info_41()),
          ),
          Container(
            height: size.height * 0.7,
            color: Colors.white12,
            child: Center(child:infoText.info_42()),
          ),
          Container(
            height: size.height * 0.04,
            color: Colors.white12,
            child: Center(child:infoText.info_43()),
          ),
          Container(
            height: size.height * 0.65,
            color: Colors.white12,
            child: Center(child:infoText.info_44()),
          ),
          Container(
            height: size.height * 0.04,
            color: Colors.white12,
            child: Center(child:infoText.info_45()),
          ),
          Container(
            height: size.height * 0.7,
            color: Colors.white12,
            child: Center(child:infoText.info_46()),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:

          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 72,
            title: '72%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 16.03,
            title: '16.03%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 11.97,
            title: '11.97%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          throw Error();
      }
    });
  }


}