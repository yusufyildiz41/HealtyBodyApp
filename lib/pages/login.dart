import 'package:bmi_calc/pages/home.dart';
import 'package:bmi_calc/pages/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../service/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  AuthService authService = AuthService();

  //Firebase auth

  FirebaseAuth auth = FirebaseAuth.instance;
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Giriş Ekranı",
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        )),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: size.height * .5,
              width: size.width * .85,
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.80),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueGrey.withOpacity(.75),
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
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
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
                          authService
                              .signIn(emailController.text,
                                  passwordController.text)
                              .then((value) {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          });
                        },

                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              //color: colorPrimaryShade,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                                child: Text(
                              "Giriş Yap",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            )),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Kayıt ol",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
