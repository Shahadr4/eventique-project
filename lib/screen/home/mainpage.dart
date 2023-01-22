

import 'package:evtq/screen/home/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';


import '../bottom_nav/btnNav.dart';
import 'cart/cart.dart';
import 'homescreen/home.dart';
import 'like/like.dart';

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