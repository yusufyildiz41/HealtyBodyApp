import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../service/auth.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final TextEditingController passwordAgainController = TextEditingController();

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Center(
              child: Container(
                height: size.height * 0.8,
                width: size.width * .85,
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(1),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.75),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                            controller: nameController,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: 'Kullanıcı adı',
                              prefixText: ' ',
                              hintStyle: TextStyle(color: Colors.white),
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                            )),
                        TextField(
                            controller: weightController,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.line_weight,
                                color: Colors.white,
                              ),
                              hintText: 'Kilo(kg)',
                              prefixText: ' ',
                              hintStyle: TextStyle(color: Colors.white),
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                            )),
                        TextField(
                            controller: heightController,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.height,
                                color: Colors.white,
                              ),
                              hintText: 'Boy(cm)',
                              prefixText: ' ',
                              hintStyle: TextStyle(color: Colors.white),
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        TextField(
                            controller: emailController,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              hintText: 'E-Mail',
                              prefixText: ' ',
                              hintStyle: TextStyle(color: Colors.white),
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.white,
                              ),
                              hintText: 'Parola',
                              prefixText: ' ',
                              hintStyle: TextStyle(color: Colors.white),
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            controller: passwordAgainController,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.white,
                              ),
                              hintText: 'Parola Tekrar',
                              prefixText: ' ',
                              hintStyle: TextStyle(color: Colors.white),
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if(nameController.text.toString().isNotEmpty &&
                                  weightController.text.toString().isNotEmpty &&
                              heightController.text.toString().isNotEmpty &&
                              emailController.text.toString().isNotEmpty &&
                              passwordController.text.toString().isNotEmpty &&
                              passwordAgainController.text.toString().isNotEmpty) {
                                if (passwordController.text.toString() ==
                                    passwordAgainController.text.toString()) {
                                  if (passwordController.text.length >= 6) {
                                    authService.signUp(
                                        emailController.text.toString(),
                                        passwordController.text.toString());

                                    authService.createUser(
                                      nameController.text.toString(),
                                      emailController.text.toString(),
                                      passwordController.text.toString(),
                                      weightController.text.toString(),
                                      heightController.text.toString(),
                                    );

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  }
                                  else {
                                    var alert = AlertDialog(
                                      actions: [
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("OK")
                                        )
                                      ],
                                      title: Text("UYARI !"),
                                      content: Text(
                                          "Şifre en az 6 karakter olmalıdır!!"),
                                    );
                                    showDialog(context: context,
                                        builder: (BuildContext context) {
                                          return alert;
                                        });
                                  }
                                }

                                else {
                                  var alert2 = AlertDialog(
                                    actions: [
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("OK"))
                                    ],
                                    title: Text("UYARI"),
                                    content: Text("Şifreler Uyuşmuyor!"),
                                  );

                                  showDialog(context: context,
                                      builder: (BuildContext context) {
                                        return alert2;
                                      });
                                }
                              }
                              else
                                {
                                  var alert3 = AlertDialog(
                                    actions: [
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("OK"))
                                    ],
                                    title: Text("UYARI"),
                                    content: Text("Boş bırakılan yerler var!"),
                                  );

                                  showDialog(context: context,
                                      builder: (BuildContext context) {
                                        return alert3;
                                      });
                                }
                            });

                            //create user part


                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                //color: colorPrimaryShade,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                  child: Text(
                                "KAYDET",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: size.height * .05, left: size.width * .02),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.blue.withOpacity(.75),
                      size: 26,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  ),
                  Text(
                    "Kayıt ol",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.withOpacity(.75),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
