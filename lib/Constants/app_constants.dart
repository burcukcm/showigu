import 'dart:core';
import 'package:flutter/material.dart';

abstract class AppColors{
  //abstract class-belirli bir nesnenin ortak özellikleri
  static const firstcolor= Colors.white;
  static const buttonbg=Colors.purple;
  static const bgcolor =Color.fromRGBO(200, 200, 200, 1.0);

}

abstract class AppImages{
  static const String image2= "resimler/logo.jpeg";
  static const String image1="resimler/abc.png";
}


abstract class BorderSize {
  static const  circular30 =Radius.circular(30);
}

abstract class AppSize {
  static const double  padding20 = 20.0;
  static const double padding30 = 30.0;
}
abstract class AppStrings{
  static const String userText="Username";
  static const String lockText="lock";
  static const String loginText="login";
  static const String forgotText="Forgot Passcode ?";
}

