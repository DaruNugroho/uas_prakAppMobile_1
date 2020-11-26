import 'package:flutter/material.dart';
import 'package:ujian_akhir_semester/halaman/HalamanLogin.dart';
import 'package:ujian_akhir_semester/halaman/HalamanHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/login': (BuildContext context) => HalamanLogin()
      },
    );
  }
}
