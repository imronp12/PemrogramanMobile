

import 'package:flutter/material.dart';
import 'package:projek_mobile/register.dart';
import 'package:projek_mobile/screens/beranda.dart';
import 'package:projek_mobile/screens/loginView.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Lihat google",
    initialRoute: "/",
    routes: {
    "/":(context)=>LoginPage(),
    RegisterPage.routename: (context)=>RegisterPage(),
    Beranda.routename: (context)=>Beranda(),
    // Profilepage.routename:(context)=>Profilepage()
    },
  ));
}


