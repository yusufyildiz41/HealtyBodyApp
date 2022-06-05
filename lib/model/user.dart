import 'package:flutter/services.dart';

final String tableUser = 'userInfo';

class UserFields{

  static final List<String> values = [
    userName,email,weight,height,bki,bmh,uniqueId
  ];


  static final String userName = 'userName';
  static final String email = 'email';
  static final String weight = 'weight';
  static final String height = 'height';
  static final String bki = 'bki';
  static final String bmh = 'bmi';
  static final String uniqueId = 'uniqueId';


}


class User{

  final String userName;
  final String email;
  final String weight;
  final String height;
  final String uniqueId;


  const User({
    required this.userName,
    required this.email,
    required this.weight,
    required this.height,
    required this.uniqueId

  });

  static User fromJson(Map<String,Object?> json) => User(

    userName: json[UserFields.userName] as String,
    email: json[UserFields.email] as String,
    weight: json[UserFields.weight] as String,
    height: json[UserFields.height] as String,
    uniqueId: json[UserFields.uniqueId] as String

  );

  Map<String,Object?> toJson() => {

    UserFields.userName : userName,
    UserFields.email : email,
    UserFields.weight : weight,
    UserFields.height : height,
    UserFields.uniqueId : uniqueId

  };

  User copy({

    String? userName,
    String? email,
    String? weight,
    String? height,
    String? uniqueId,
}) => User(

      userName : userName ?? this.userName,
      email: email ?? this.email,
      weight : weight ?? this.weight,
      height : height ?? this.height,
      uniqueId: uniqueId ?? this.uniqueId

    );

}