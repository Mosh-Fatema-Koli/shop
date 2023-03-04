
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/home/home.dart';

class ServiceDrawer extends StatefulWidget {
  const ServiceDrawer({Key? key}) : super(key: key);

  @override
  State<ServiceDrawer> createState() => _ServiceDrawerState();
}

class _ServiceDrawerState extends State<ServiceDrawer> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#1E1E1E'),


        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: ListTile(
                trailing: IconButton(
                  onPressed: () => Scaffold.of(context).closeDrawer(),
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),

                    child: Image.asset("images/soha.png",height: 64,width: 64,)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),
                child: Text("Hey, 👋",style: TextStyle(
                    color: HexColor('#707B81'),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 20
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("alisson becker",  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  fontFamily: "Airbnb Cereal",
                ),),
              ),
            ],
          ),
            SizedBox(height: 15),
            ListTile(
                leading: Image.asset("images/user.png",height: 24,width: 24,),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 16,
                  ),
                ),
                onTap: () => Get.to(HomePage())),

            ListTile(
              leading: Image.asset("images/home.png",height: 24,width: 24,),
              title: Text(
                'Home Page',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                    fontSize: 16,
                  fontFamily: "Airbnb Cereal",
                ),
                
              ),

              onTap: () {},
            ),

            ListTile(
              leading: Image.asset("images/cart.png",height: 24,width: 24,),
              title: Text(
                'My Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                    fontSize: 16,
                  fontFamily: "Airbnb Cereal",
                ),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Image.asset("images/heart.png",height: 24,width: 24,),
              title: Text(
                'Fovourite',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 16
                ),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Image.asset("images/orders.png",height: 24,width: 24,),
              title: Text(
                'Orders',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                    fontSize: 16,
                  fontFamily: "Airbnb Cereal",
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("images/Notifications.png",height: 24,width: 24,),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                    fontFamily: "Airbnb Cereal",
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height:30),
        Divider(
          height: 2,
          color: HexColor("#2D3B48"),
          thickness: 1,
          indent: 20,
          endIndent:60 ,
        ),
            SizedBox(height:30),
            ListTile(
              leading: Image.asset("images/SignOut.png",height: 24,width: 24,),
              title: Text(
                'Sign Out',
                style: TextStyle(
                  fontFamily: "Airbnb Cereal",
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
