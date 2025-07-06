import 'package:banking_app_interface/Screen/AddCard.dart';
import 'package:banking_app_interface/Screen/Exchange.dart';
import 'package:banking_app_interface/Screen/Home.dart';
import 'package:banking_app_interface/Screen/Login.dart';
import 'package:banking_app_interface/Screen/Payment.dart';
import 'package:banking_app_interface/Screen/QRTransaction.dart';
import 'package:banking_app_interface/Screen/Registration.dart';
import 'package:banking_app_interface/Screen/SendMonay.dart';
import 'package:banking_app_interface/Screen/TransactionList.dart';
import 'package:banking_app_interface/Screen/YourAccount.dart';
import 'package:banking_app_interface/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Banking App Interface',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF1A3D73),

        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1A3D73),
          foregroundColor: Colors.white, 
          elevation: 0,
        ),

        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1A3D73),
        ).copyWith(
          primary: Color(0xFF1A3D73),
        ),
      ),


      initialRoute: "/",

      getPages: [
        GetPage(name: "/Home", page: ()=> Home(), transition: Transition.rightToLeft),
        GetPage(name: "/AddCard", page: ()=> AddCard(), transition: Transition.rightToLeft),
        GetPage(name: "/Exchange", page: ()=> Exchange(), transition: Transition.rightToLeft),
        GetPage(name: "/Login", page: ()=> Login(), transition: Transition.rightToLeft),
        GetPage(name: "/Payment", page: ()=> Payment(), transition: Transition.rightToLeft),
        GetPage(name: "/QRRransaction", page: ()=> QRRransaction(), transition: Transition.rightToLeft),
        GetPage(name: "/Registration", page: ()=> Registration(), transition: Transition.rightToLeft),
        GetPage(name: "/SendMonay", page: ()=> SendMonay(), transition: Transition.rightToLeft),
        GetPage(name: "/TransactionList", page: ()=> TransactionList(), transition: Transition.rightToLeft),
        GetPage(name: "/YourAccount", page: ()=> YourAccount(), transition: Transition.rightToLeft),
      
        GetPage(name: "/SplashScreen", page: ()=> SplashScreen(), transition: Transition.rightToLeft),
      
      ],


      home: const SplashScreen(),
    );
  }
}


