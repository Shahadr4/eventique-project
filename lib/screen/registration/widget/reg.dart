import 'package:evtq/screen/Login/login.dart';
import 'package:flutter/material.dart';

import '../../home/mainpage.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _userNameController=TextEditingController();

  final _passwordController=TextEditingController();

  final _userEmailController=TextEditingController();

  final _repasswordController=TextEditingController();

  bool _isVisible=true;
//obscure true ayal password hideakopm
  void updateStatus(){
    //
    setState(() {
      _isVisible=!_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
                    
                    
                   
          children: [
                   
                    
                    TextFormField(
                      controller: _userEmailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.white,

                        
                        border: OutlineInputBorder()
                      ),
                    ),
                     SizedBox(height: 20,),

                    TextFormField(
                      controller: _userNameController,
                      decoration: InputDecoration(
                        hintText: "Username",
                        filled: true,
                        fillColor: Colors.white,
                        
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 20,),

                   TextFormField(
                    controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.white,
                        
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 20,),

                   TextFormField(
                    controller:_repasswordController,
                    obscureText: _isVisible? true:false,
                      decoration: InputDecoration(
                        hintText: "Confirm",
                         suffixIcon: IconButton(
                          onPressed: (
                            () => updateStatus()//call cheytho
                            ), icon:Icon(_isVisible ? Icons.visibility_off: Icons.visibility)),
                        filled: true,
                        fillColor: Colors.white,
                        
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

                   }, 
                   icon:const Icon(Icons.login),label: const Text("Register"),
                   ),

                   TextButton(onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx1)=>const Login()));
                   } , child:const Text("Login",
                   style: TextStyle( color: Colors.black),
                   )
                   )
                  ]
                     

    );
  }
}