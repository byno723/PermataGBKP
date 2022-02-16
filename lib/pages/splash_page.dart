import 'dart:async';

import 'package:flutter/material.dart';
import 'package:permata/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 200,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'PERMATA GBKP',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
          )
        ],
      )),
    );
  }
}
