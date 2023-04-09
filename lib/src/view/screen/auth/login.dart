import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop/src/view/screen/auth/registration.dart';
import 'package:shop/src/view/screen/main_screen.dart';
import 'package:shop/src/view/widget/button.dart';
import 'package:shop/src/view/widget/custom_TextField.dart';
import 'package:shop/src/view/widget/text_style.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Card(
        child: Container(
          height: 500,
          width: MediaQuery.of(context).size.width*50/2,

          child: Padding(
            padding: const EdgeInsets.all(30),

            child: Column(
                children: [
                  Text("Log In",style: myStyles20(),),
                  SizedBox(
                    height: 20,
                  ),
                  SignUpTextField(
                    controller: _email,
                    hintText: "email",
                    suffixIcon: Icon(Icons.email,size: 20,),
                  ),
                  TextboxWidget(
                    controller: _password,
                    hintText: "password",
                    isPassword: true,

                  ),

                  SizedBox(
                    height: 5,
                  ),
                 MaterialButton(onPressed: (){

                   Get.off(BottomNavBarV2());
                 },

                   minWidth: MediaQuery.of(context).size.width,
                   height: 45,
                   color: Colors.blue,
                   child: Text("Login",style: myStyles16(),),

                 ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Sign In With",style: myStyles14(),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/facebook.png'),

                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/twitter.png'),

                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/google.png'),

                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/apple.png'),

                      ),


                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(RegisterPage());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account? ",style: myStyles14(),),
                        Text("Sign Up",style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),


                ],
            ),
          ),
        ),
      )),

    );
  }
}
