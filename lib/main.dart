import 'package:evtq/const/style.dart';
import 'package:evtq/screen/splash/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  Future main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eventique',
      theme: ThemeData(
        primaryColor: Colors.black38,
        
      
        fontFamily: regular
      ),
      home: SplashScreen(),
    );
  }
}