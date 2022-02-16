import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permata/pages/beranda_page.dart';
import 'package:permata/pages/buku_page.dart';
import 'package:permata/pages/acara_page.dart';
import 'package:permata/pages/home_page.dart';
import 'package:permata/pages/sign_in_page.dart';
import 'package:permata/pages/sign_up_page.dart';
import 'package:permata/pages/splash_page.dart';
import 'package:permata/pages/warta_page.dart';
import 'package:permata/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/beranda': (context) => BerandaPage(),
        '/buku': (context) => BukuPage(),
        '/warta': (context) => WartaPage(),
        '/acara': (context) => AcaraPage(),
      },
      // home: SplashPage(),
    );
  }
}
