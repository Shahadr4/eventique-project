import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



ValueNotifier<int> indexChangeBtmNav= ValueNotifier(0);//cration of key used to the index of bottomnavigation bar 

//we also create valuelisenarable builder for getting index

class BtnNavBar extends StatelessWidget {
  const BtnNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeBtmNav, builder:(context,int newIndex, _) {
      return Padding(
      
      padding: EdgeInsets.all(20),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
        
        ),
        color: Color.fromARGB(0, 0, 0, 0).withOpacity(1),


        child: ClipRRect(//it used to curving
            borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomLeft:  Radius.circular(15.0),
                  bottomRight:  Radius.circular(15.0)
                 
                ),
           
        
          child: BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeBtmNav.value=index;
              
            },
            type: BottomNavigationBarType.fixed,

            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme:IconThemeData(
              color: Color.fromARGB(255, 255, 255, 255)

            ),
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            backgroundColor: Colors.black,

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Like",),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "profile")

            ],
          ),

        ),
        
        ),
    );
      
    },);
  }
}

