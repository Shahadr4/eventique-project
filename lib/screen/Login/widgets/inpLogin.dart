
import 'package:evtq/screen/Login/widgets/squareTile.dart';
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
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("forgot password?",
                        style: TextStyle(color: Colors.grey),
                        
                        ),
                      ],
                    ),


                    SizedBox(height: 20,),
                   ElevatedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 48, 48, 48)
                       ),
                    onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx1)=>MainPage()));
                   }, icon:const Icon(Icons.login),label: const Text("Login"),),

                    

                    


                   SizedBox(height:  30,),
                    Row(
                      children: [
                        Expanded(child:   Divider(thickness: 0.7,
                        color: Colors.grey,
                        ),),
                        Text("Or Continue with"),
                         Expanded(child:   Divider(thickness: 0.7,
                        color: Colors.grey,
                        ),)
                      ],
                    ),
                    SizedBox(height:  30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SquareBox(imagepath: 'https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1'),
                      SizedBox(width: 25,),
                      SquareBox(imagepath: "https://imageio.forbes.com/dam/imageserve/5c13d14731358e5b4339c564/0x0.png?cropX1=-1&cropY1=-1&cropX2=-1&cropY2=-1&quality=75&fit=&background=000000&uri=")


                    ],),

                    SizedBox(height:  70,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('not a member?',
                        style: TextStyle(color: Colors.grey),
                        ),
                       TextButton(
                       
                      onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx1)=>regPage()));
                    } , child: Text("Register Now",
                    style: TextStyle(color: Colors.black),
                    )),

                      ],
                    )
                  
                    
                  ]



                     
                  

                  );
  }

  void checkLogin(){
    final userName=_userNameController;
    final password=_passwordController; 
    
    }
} 