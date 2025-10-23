import 'package:flutter/material.dart';
import 'package:uts_bungadevila_2410910040023/uts/login_activity.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // untuk navigasi
      // routes: {
      //   "/" :(context)=>Pages1(),
      //   "/halaman2" :(context)=>Pages2()
      // },
      // initialRoute: "/",
       home: LoginActivity()
    );
  }
}