import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  // Sign In part

  Future<User?> signIn(var email, var password) async {
    var user =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }
  // Sign Out part
  signOut() async {
    return await auth.signOut();
  }

  Future<User?> signUp(var email, var password) async {
    var user =
    await auth.createUserWithEmailAndPassword(email: email, password: password);
    return user.user;
  }
  // Sign Out part


  Future<void> createUser(
      String name, String email, String password,String weight,String height) async {

    var users =
    fireStore.collection("users");
    return users
        .add({
      'name': name,// John Doe
      'email': email,
      'password':password,// Stokes and Sons
      'weight':weight,
      'height':height,

    })
        .then((value) => print("user added"))
        .catchError((error) =>
        print("Failed to add user: $error"));
  }



}
