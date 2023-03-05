import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/screen/home/home.dart';
import 'package:shop/src/view/widget/appbar.dart';
import 'package:shop/src/view/widget/drawerService.dart';



class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final items = [

    Image.asset("images/home.png",height: 30,width:30,),
    Image.asset("images/heart.png",height: 30,width:30,),
    Image.asset("images/cart.png",height: 30,width: 30,),
    Image.asset("images/Notifications.png",height: 30,width: 30,),
    Image.asset("images/user.png",height: 30,width:30,),


  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor("F8F9FA") ,
      appBar: setAppBar(),
      drawer: ServiceDrawer(),

      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        buttonBackgroundColor: Colors.blue,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex ;


          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        color: Colors.white,

        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)
      ),
    );
  }
  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const HomePage();
        break;
      case 1:
        widget = const HomePage();
        break;
      case 2:
        widget = const HomePage();
        break;
      case 3:
        widget = const HomePage();
        break;
      default:
        widget = const HomePage();
        break;
    }
    return widget;
  }
}


