import 'package:bmi_calc/pages/bki_calculate_screen.dart';
import 'package:bmi_calc/pages/bmh_calculate_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class CalculatePage extends StatefulWidget {
  @override
  _CalculatePage createState() => _CalculatePage();

}

class _CalculatePage extends State<CalculatePage> {

  @override
  Widget build(BuildContext context) {
    final screenSize= MediaQuery.of(context).size;
    //banner part
    final AdSize adSize = AdSize(width:screenSize.width.toInt(), height: 50);
    final BannerAd myBanner = BannerAd(
      adUnitId: 'ca-app-pub-9674377801597724/6371733359',
      size: adSize,
      request: AdRequest(),
      listener: BannerAdListener(),
    );
    myBanner.load();
    //adWidget
    final AdWidget adWidget = AdWidget(ad: myBanner);

    //adContainer
    final Container adContainer = Container(
      alignment: Alignment.center,
      child: adWidget,
      width: screenSize.width.toDouble(),
      height: 50,
    );

    // TODO: implement build
    return  Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/medical.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          bottomNavigationBar:BottomAppBar(
            child: adContainer,
            color: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leading: Icon(Icons.home),
            title: Text("Hesaplama Ekranı"),
          ),
          body: Column(
            children: [
              Container(
                  width: screenSize.width,
                  height: screenSize.height*0.5,
                  child: Column(
                    children: [
                      SizedBox(height: 150,),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                          child:bkiButton(context)
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                          child: bmhButton(context)
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

  Widget bkiButton(BuildContext context)
  {
    return  ElevatedButton(
        onPressed: (){

          Navigator.push(context,MaterialPageRoute(builder: (context) => BKI()));

        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(10)),
            minimumSize: MaterialStateProperty.all<Size>(Size(400,80)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color : Colors.blue)
                )
            )
        ),
        child: Text("BKI(Beden Kitle Indexi)",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)
    );
  }
  Widget bmhButton(BuildContext context)
  {
    return  ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => BMHCalculate()));

        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(10)),
            minimumSize: MaterialStateProperty.all<Size>(Size(400,80)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color : Colors.blue)
                )
            )
        ),
        child: Text("BMH(Bazal Metobolizma Hızı)",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)
    );
  }
}


