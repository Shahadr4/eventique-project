
import 'package:evtq/screen/home/mainpage.dart';
import 'package:evtq/screen/registration/registration.dart';
import 'package:flutter/material.dart';

class InpLogin extends StatefulWidget {
  InpLogin({super.key});

  @override
  State<InpLogin> createState() => _InpLoginState();
}

class _InpLoginState extends State<InpLogin> {


 
  final _userNameController=TextEditingController();
  final _passwordController=TextEditingController();


  bool _isVisible=true;//obscure true ayal password hideakopm
  void updateStatus(){
    //
    setState(() {
      _isVisible=!_isVisible;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Column(
      
                    
                    
                   
          children: [
            
                   
                    
                     TextFormField(
                      controller: _userNameController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                          fillColor: Colors.white,
                        
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 20,),
                    
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _isVisible? true:false,//obscure true ayal password hideakopm
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        suffixIcon: IconButton(
                          onPressed: (
                            () => updateStatus()//call cheytho
                            ), icon:Icon(_isVisible ? Icons.visibility_off: Icons.visibility)),
                        
                        
                        border: OutlineInputBorder()
                      ),
                     
                    ),



                    SizedBox(height: 20,),
                   ElevatedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 48, 48, 48)
                       ),
                    onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx1)=>MainPage()));
                   }, icon:const Icon(Icons.login),label: const Text("Login"),),
                    TextButton(
                       
                      onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx1)=>regPage()));
                    } , child: Text("Register",
                    style: TextStyle(color: Colors.black),
                    ))
                  ]
                     
                  

                  );
  }

  void checkLogin(){
    final userName=_userNameController;
    final password=_passwordController; 
    
    }
} 