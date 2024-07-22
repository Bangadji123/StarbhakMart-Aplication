import 'package:aplikasi_pemesan_makanan/Pages/CartPage.dart';
import 'package:aplikasi_pemesan_makanan/Pages/InputPage.dart';   
import 'package:aplikasi_pemesan_makanan/Pages/ListPage.dart';
// import 'package:aplikasi_pemesan_makanan/Pages/Profile.dart';
import 'package:aplikasi_pemesan_makanan/Screen/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Starbhak Mart",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      home: SplashScreen(),

      routes: {
        "SplashScreen" :(context) => HomePage(),
        "homePage" :(context) => HomePage(),
        "cartPage" :(context) => CartPage(),
        "inputPage" :(context) => InputPage(),
        "listPage" :(context) => ListData(),
        // "profile" :(context) => Profile(),
      },
    );
  }
}