import 'package:evtq/screen/home/bottom_nav/btnNav.dart';
import 'package:evtq/screen/home/cart/cart.dart';
import 'package:evtq/screen/home/homescreen/home.dart';
import 'package:evtq/screen/home/like/like.dart';
import 'package:evtq/screen/home/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final _pages =[
    Home(),
    CartPage(),
    Like(),
    Profile()


  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ValueListenableBuilder(valueListenable:indexChangeBtmNav , builder: (context,int index, child) {
      return _pages[index];
      
    },),
    bottomNavigationBar: BtnNavBar(),

  ) ;
  }
}