import 'package:bmi_calc/pages/bki_calculate_screen.dart';
import 'package:bmi_calc/pages/bki_info_screen.dart';
import 'package:bmi_calc/pages/bmh_calculate_screen.dart';
import 'package:bmi_calc/pages/bmh_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppInfo extends StatefulWidget {
  @override
  _AppInfo createState() => _AppInfo();

}

class _AppInfo extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack( // Using a Stack you can position widgets over one another.
      children: <Widget>[
        Image.asset(
          "assets/images/info_image.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("Uygulama Hakkında"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    width: 400,
                    height: 500,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                            child:bkiButton(context)
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                            child: bmhButton(context)
                        ),
                      ],
                    )
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  Widget bkiButton(BuildContext context)
  {
    return  ElevatedButton(
        onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context) => BKIInfo()));

        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(10)),
            minimumSize: MaterialStateProperty.all<Size>(Size(400,100)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color : Colors.blue)
                )
            )
        ),
        child: Text("BKI(Beden Kitle Indexi)")
    );
  }
  Widget bmhButton(BuildContext context)
  {
    return  ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => BMHInfo()));

        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(10)),
            minimumSize: MaterialStateProperty.all<Size>(Size(400,100)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color : Colors.blue)
                )
            )
        ),
        child: Text("BMH(Bazal Metobolizma Hızı)")
    );
  }

}