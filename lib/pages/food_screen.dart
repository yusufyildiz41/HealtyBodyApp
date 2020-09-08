import 'dart:async';
import 'dart:convert';
import 'package:bmi_calc/db/user_infos_database.dart';
import 'package:bmi_calc/pages/food_detail_screen.dart';
import 'package:bmi_calc/pages/user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hexcolor/hexcolor.dart';
import '../model/foods.dart';
import 'package:http/http.dart' as http;
import 'package:translator/translator.dart';

import '../model/user.dart';

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreen createState() => _FoodScreen();
}

class _FoodScreen extends State<FoodScreen> {

  late User user;
  late UserInfoDatabase db;
  Foods foods = Foods();
  var foodNameTrText = "";
  bool listViewShow = false;
  List foodNameTrList2 = [];
  List foodNameTrList3 = [];
  bool loading = true;
  final TextEditingController searchTextController = TextEditingController();
  var searchText;

  Future<Translation> translateSearchText(var inputText) async {
    final translator = GoogleTranslator();
    var translation = await translator.translate("${inputText.toString()}",
        from: 'tr', to: 'en');
    return translation;
  }

  Future<Translation> translateFoodNameText(var foodNameText) async {
    final translator = GoogleTranslator();
    var translation =
        await translator.translate("${foodNameText.toString()}", to: 'tr');
    return translation;
  }

  Future<Translation> translateFoodCategoryText(var foodCategoryText) async {
    final translator = GoogleTranslator();
    var translation = await translator
        .translate("${foodCategoryText.toString()}", from: 'en', to: 'tr');
    return translation;
  }

  @override
  void initState() {
    // TODO: implement initState
    db = UserInfoDatabase.instance;

    super.initState();
  }

  Future<void> fetchFoodList(var urlString) async {
    var url = urlString.toString();
    var response = await http.get(Uri.parse(url));
    var decodeResponse = jsonDecode(response.body);
    foods = Foods.fromJson(decodeResponse);

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenSize= MediaQuery.of(context).size;
    //banner part
    final AdSize adSize = AdSize(width: screenSize.width.toInt(), height: 50);
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


    return Stack(
      children: [

        Image.asset(
          "assets/images/food_backgroundd.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),


        Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: adContainer,
          ),
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text("Besinler Hakkında Bilgiler"),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: screenSize.height * .2,
                      width: screenSize.width * .85,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                    controller: searchTextController,
                                    style: TextStyle(
                                      color: HexColor('#3B3535'),
                                        fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Besin Arayın...',
                                      prefixText: ' ',
                                      hintStyle: TextStyle(color: HexColor('#3B3535')),
                                      focusColor: Colors.white,
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.black,
                                      )),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.white,
                                      )),
                                    )),
                                RaisedButton(
                                  onPressed: () {

                                    searchText =
                                        searchTextController.text.toString();
                                    if (searchText == '') {
                                      print("textfield is empty");
                                    } else {

                                      setState(() {



                                        translateSearchText(searchText.toString())
                                            .then((value) {
                                          setState(() {

                                            var url =
                                                "https://api.nal.usda.gov/fdc/v1/foods/search?query=${value.toString()}&pageSize=15&api_key=5RwEf1plXOl9LKSGaBG9tk3j9uuKH4nJtSsTq9yV";
                                            fetchFoodList(url);
                                            searchText = "";

                                          });
                                        });


                                      });
                                    }
                                  },
                                  child: Text("ARA"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: screenSize.height * 0.55,
                      width: screenSize.width,
                      child: foodListView(),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }

  Widget foodListView() {

    if (foods.foods != null) {
        return loading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Container(
                    child: Expanded(
                      child: ListView.builder(
                          itemCount: foods.foods?.length,
                          itemBuilder: (context, index) {

                            return Card(
                              color: Colors.transparent,//HexColor('#DBDCB5'),
                              child: ListTile(
                                title: Text("${foods.foods?[index].description.toString()}",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),),
                                subtitle: Text(
                                  "Yiyecek Kategorisi : " +
                                      foods.foods?[index].foodCategory,
                                  style: TextStyle(fontSize: 16,
                                  color:Colors.black,),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FoodDetailScreen(
                                                  foods.foods![index].fdcId,
                                                  foods.foods![index]
                                                      .description)));
                                },
                              ),
                            );
                          }),
                    ),
                  )
                ],
              );
      }
      else {
        return SizedBox.shrink();
      }


  }
}
