
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/view/screen/auth/login.dart';
import 'package:shop/src/view/widget/custom_TextField.dart';
import 'package:shop/src/view/widget/text_style.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 50,
              ),
              SignUpTextField(
                controller: _nameController,
                hintText: "name",
              ),
              SignUpTextField(
                controller: _nameController,
                hintText: "email",
              ),
              SignUpTextField(
                controller: _nameController,
                hintText: "address",
              ),
              SignUpTextField(
                controller: _nameController,
                hintText: "phone no",
              ),

              TextboxWidget(
                controller: _nameController,
                hintText: "password",
                isPassword: true,

              ),
              TextboxWidget(
                controller: _nameController,
                hintText: "Confirm Password",
                isPassword: true,

              ),

              SizedBox(
                height: 5,
              ),
              MaterialButton(onPressed: (){},

                minWidth: MediaQuery.of(context).size.width,
                height: 45,
                color: Colors.blue,
                child: Text("Sign Up",style: myStyles16(),),

              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(LoginPage());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account? ",style: myStyles14(),),
                    Text("Login",style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
