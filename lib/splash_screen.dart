


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sraven/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
 Timer(Duration(seconds: 20), () {
  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) =>LoginScreen()), (Route<dynamic> route) => false, );
 });
   
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.network("https://1.bp.blogspot.com/-p9ghpMOeCTg/XoJSrBpZlgI/AAAAAAAADs4/uObOZacP2cgQQLL-hy_lkn7eCu-2hDj3QCLcBGAsYHQ/s1600/WhatsApp%2Bsplashsreen.jpg"),
          
        ],
      ),
    );
  }
}