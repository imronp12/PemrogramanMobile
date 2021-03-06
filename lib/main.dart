

import 'package:flutter/material.dart';
import 'package:projek_mobile/register.dart';
import 'package:projek_mobile/screens/beranda.dart';
import 'package:projek_mobile/screens/loginView.dart';
import 'package:projek_mobile/screens/profile.dart';

import 'detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Lihat google",
    initialRoute: "/",
    routes: {
    "/":(context)=>LoginPage(),
    RegisterPage.routename: (context)=>RegisterPage(),
    Beranda.routename: (context)=>Beranda(),
    ProfilPage.routename:(context)=>ProfilPage(),
    DetailsPage.routename:(context)=>DetailsPage(),
    },
  ));
}


