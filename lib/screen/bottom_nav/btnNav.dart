import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evtq/screen/home/cart/cart.dart';
import 'package:evtq/screen/home/homescreen/home.dart';
import 'package:evtq/screen/home/like/like.dart';
import 'package:evtq/screen/home/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


ValueNotifier<int> indexChangeBtmNav= ValueNotifier(0);//cration of key used to the index of bottomnavigation bar 

//we also create valuelisenarable builder for getting index


class BtnNavBar extends StatefulWidget {
  BtnNavBar({super.key});

  @override
  State<BtnNavBar> createState() => _BtnNavBarState();
}

class _BtnNavBarState extends State<BtnNavBar> {
  

  @override
  Widget build(BuildContext context) {
   
      return ValueListenableBuilder(valueListenable: indexChangeBtmNav, builder:(context,int newIndex, _) {
        return Container(
           child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
           color: Color.fromARGB(255, 212, 213, 213),
           
            
            items: [
                  Icon(Icons.home),
                  Icon(Icons.shopping_cart),
                  Icon(Icons.favorite),
                  Icon(Icons.account_circle),

              ],
              index: newIndex,
              onTap: (index) {
                indexChangeBtmNav.value=index;
                print(index);
              
             }, 
              height: 57,
             
            animationDuration: const Duration(milliseconds: 300),
              

              
              
           ),


          
          

        );
      },
    );
    
  }


}
