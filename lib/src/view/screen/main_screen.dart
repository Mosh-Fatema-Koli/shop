import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/screen/cart/cart.dart';
import 'package:shop/src/view/screen/favourite/favourite.dart';
import 'package:shop/src/view/screen/home/home.dart';
import 'package:shop/src/view/screen/notification/notification.dart';
import 'package:shop/src/view/screen/profile/profile.dart';
import 'package:shop/src/view/screen/appbar.dart';
import 'package:shop/src/view/screen/drawerService.dart';

class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> scrsseens = [
    HomePage(),
    FavouritePage(),
    NotificationPage(),
    ProfilePage(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor("F8F9FA") ,
      appBar: setAppBar(),
      drawer: ServiceDrawer(),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(

        child:   Image.asset("images/cart2.png",height: 30,width: 30,),
        onPressed: () {
          Get.to( CartPage());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,

     color: Colors.transparent,

       notchMargin: 30,
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/nav.png"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =HomePage(); // if user taps on this dashboard tab will be active
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home_outlined,size: 30,
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = FavouritePage();
                       // if user taps on this dashboard tab will be active
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.favorite_border,size: 30,
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Right Tab bar icons

              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = NotificationPage(); // if user taps on this dashboard tab will be active
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.notifications_none_outlined,size: 30,
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),

                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfilePage(); // if user taps on this dashboard tab will be active
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.perm_identity_outlined,size: 30,
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}