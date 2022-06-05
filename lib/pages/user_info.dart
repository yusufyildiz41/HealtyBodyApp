import 'package:bmi_calc/data/menu_items.dart';
import 'package:bmi_calc/db/user_infos_database.dart';
import 'package:bmi_calc/model/menu_item.dart';
import 'package:bmi_calc/pages/diet_page_1.dart';
import 'package:bmi_calc/pages/diet_page_2.dart';
import 'package:bmi_calc/pages/diet_page_3.dart';
import 'package:bmi_calc/pages/diet_page_4.dart';
import 'package:bmi_calc/pages/login.dart';
import 'package:bmi_calc/service/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/user.dart';

class UserInfo extends StatefulWidget {
  @override
  final String email;
  UserInfo(this.email);
  _UserInfo createState() => _UserInfo();

}

class _UserInfo extends State<UserInfo> {

  late User user;
  bool isLoading = false;

  var auth = AuthService();
  var listOfUser = [];
  late UserInfoDatabase db;

  final TextEditingController bkiController = TextEditingController();
  final TextEditingController bmhController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    user = User(userName: "userName", email: "email", weight: "weight", height: "height", uniqueId: "uniqueId");
    db = UserInfoDatabase.instance;
    refreshUsers();
    super.initState();
  }

  Future refreshUsers() async{
    setState(() => isLoading = true);
    this.user = (await UserInfoDatabase.instance.readUser(widget.email.toString()));
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {



    final TextStyle headline = Theme.of(context).textTheme.headline6!;
    var size = MediaQuery.of(context).size;
    print("gelenn mail "+widget.email.toString());


    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanıcı Hakkında"),
        actions: [
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemSecond.map(buildItem).toList(),
            ],
          )
        ],

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children: [
                    cardWidget("Kullanıcının adı :",user.userName, headline),
                    cardWidget("Kullanıcının emaili :",user.email, headline),
                    cardWidget("Kullanıcının kilosu :",user.weight, headline),
                    cardWidget("Kullanıcının boyu :",user.height, headline),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          controller: bkiController,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.calculate,
                            ),
                            hintText: 'Hesapladığınız bki değerini giriniz',
                            prefixText: ' ',
                            hintStyle: TextStyle(color: Colors.grey),
                            focusColor: Colors.black,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          controller: bmhController,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.calculate,
                            ),
                            hintText: 'Hesapladığınız bmh değerini giriniz',
                            prefixText: ' ',
                            hintStyle: TextStyle(color: Colors.grey),
                            focusColor: Colors.black,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )),
                          )),
                    ),
                    ElevatedButton.icon(
                        onPressed: (){

                          setState(() {

                            if(bkiController.text.isNotEmpty && bmhController.text.isNotEmpty)
                            {
                              var bkiResult = double.parse(bkiController.text.toString());
                              if(bkiResult >0.0 && bkiResult <18.4)
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DietPage1()));
                              }
                              else if(bkiResult > 18.5 && bkiResult < 24.99)
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DietPage2()));
                              }
                              else if(bkiResult > 25 && bkiResult < 29.9)
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DietPage3()));
                              }
                              else
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DietPage4()));
                              }

                            }
                            else
                            {
                              var alert = AlertDialog(
                                actions: [
                                  FlatButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK"),

                                  )
                                ],
                                title: Text("UYARI"),
                                content: Text("Boş bırakılan yerler var !!!"),
                              );
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return alert;
                                  }
                              );
                            }
                          });


                        },
                        icon:Icon(
                          Icons.check,
                          size: 24,
                        ),
                      label: Text(
                        "BESLENME TAVSİYESİ AL"
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
        value: item,
        child: Row(
          children: [
            Icon(item.icon, color: Colors.black, size: 20),
            const SizedBox(width: 12),
            Text(item.text),
          ],
        ),
      );
  void onSelected(BuildContext context, MenuItem item) {
    if(item.text == MenuItems.itemSignOut.text)
    {
      auth.signOut();
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => LoginPage()),(e) => false);

    }
  }

  Widget cardWidget(var userTitle,var userinfo,var headline)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Row(
          children: [
            Text(
                "${userTitle.toString()}     ",
                style: GoogleFonts.oswald(textStyle: headline,fontSize: 16)),
            Text(userinfo,style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic
            ))
          ],
        ),
      ),
    );
  }


}

