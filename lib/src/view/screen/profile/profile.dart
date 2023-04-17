
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
              ),
             SizedBox(height: 20,),
             Container(
                 height: 100,
                 child: Column(
                   children: [
                     Text("Name :"),
                     Text("Customer ID :"),
                   ],
                 )),



              ExpansionTile(title: Text("Dashboard"),
              children: [
                ListTile(
                  title: Text("Product Review"),
                ),
                ListTile(
                  title: Text("App Review"),
                ),
                ListTile(
                  title: Text("Settings"),
                ),
              ],

              ),
              ExpansionTile(title: Text("My Order"),
                  children: [
                  ListTile(
                  title: Text("Recent Order"),

                    ),
                    ListTile(
                      title: Text("Previous Order"),
                    ),
                    ],
                          ),
              ExpansionTile(title: Text("Profile"),
                children: [
                  ListTile(
                    title: Text("Profile Edit"),
                  ),
                ],
              ),
              ListTile(
                title: Text("About Us"),
            //    leading: Icon(Icons.arrow_right_rounded),
                trailing:Icon(Icons.arrow_forward_ios_rounded,size: 15,),

              ),
              ListTile(
                title: Text("Contact Us"),
                trailing:Icon(Icons.arrow_forward_ios_rounded,size: 15,),
              ),
              ListTile(
                title: Text("Sign Out"),

              )

            ],
          ),
        ),
      ),
    );
  }
}