import 'package:evtq/const/style.dart';
import 'package:evtq/screen/Login/widgets/inpLogin.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child:   ListView(
           physics: NeverScrollableScrollPhysics(),
          
          children: [
            Image.asset("assets/app_logo.png",),
             Container(
              
              child: Text("Welcome!",style: TextStyle(fontFamily: semibold,
                
                
                fontSize: 50,
                
              ),),
            ),
            
            ClipRRect(
                
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                 
                ),
                child: Container(
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,

                  
                  
                  
                  color: Color.fromARGB(255, 222, 222, 222),
                  child: InpLogin(),
                ),
              )
          ],
        ),

        
      
        
        
      ),
      
    );
  }
}


      