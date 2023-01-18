import 'package:evtq/screen/Login/login.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   Future<void> gotoLogin() async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const Login())));
  }
  
  
  
  @override
  void initState() {
    // TODO: implement initState
    gotoLogin();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Image.asset("assets/app_logo.png"))
      ),

    );
    
  }
 
}