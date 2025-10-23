import 'package:flutter/material.dart';
import 'package:uts_bungadevila_2410910040023/uts/login_activity.dart';
import 'package:uts_bungadevila_2410910040023/uts/daftar_activity.dart';
import 'package:uts_bungadevila_2410910040023/uts/menu_activity.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: {
         "/" :(context)=>LoginActivity(),
         "/daftar" :(context)=>DaftarActivity(),
         "/menu" :(context)=>MenuActivity()
       },
      // initialRoute: "/",
      // home: LoginActivity()
    );
  }
}