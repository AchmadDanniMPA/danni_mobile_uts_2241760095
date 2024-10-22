import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(UTS());
}

class UTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danni Mobile UTS 2241760095',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //initialRoute merujuk kepada halaman pertama yang akan ditampilkan diatur route
      initialRoute: '/',
      //routes merupakan routing yang akan memindahkan halaman ketika kode memanggil route nya
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
