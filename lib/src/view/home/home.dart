
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/services/configs/app_colors.dart';


import 'package:shop/src/services/configs/app_utils.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/home/nike_brand%20product.dart';
import 'package:shop/src/view/home/tab_bar.dart';
import 'package:shop/src/view/widget/appbar.dart';
import 'package:shop/src/view/widget/custom_TextField.dart';
import 'package:shop/src/view/widget/drawerService.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

          backgroundColor:HexColor("F8F9FA") ,
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                CustomTextField(

                  hintText: "Looking for shoes",

                  prefixIcon: Icon(Icons.search),

                ),

                Container(
                  height: 60,
                  width: double.infinity,
                  child:  TabBar(

                  padding: EdgeInsets.all(10),

                    indicator: BoxDecoration(
                      
                        color: Colors.blue,
                        borderRadius:  BorderRadius.circular(20)
                    ) ,
                    labelColor: Colors.white,
                   // unselectedLabelColor: Colors.black,

                    tabs:  [
                      Tab(
                        child: Image.asset("images/Group 6.png"),
                      ),
                      Tab(
                          child: Image.asset("images/Frame8.png"),
                        ),

                      Tab(
                        child: Image.asset("images/Frame9.png"),
                      ),
                      Tab(
                        child: Image.asset("images/Frame 10.png"),
                      ),
                      Tab(
                        child: Image.asset("images/Frame 11.png"),
                      ),

                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      children:  [
                        Center(child: Nick(),),
                        Center(child: Text("Status Pages"),),
                        Center(child: Text('Calls Page'),),
                        Center(child: Text('Settings Page'),),
                        Center(child: Text('last Page'),)
                      ],
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}