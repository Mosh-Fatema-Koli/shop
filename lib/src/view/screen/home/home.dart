
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/view/widget/app_colors.dart';


import 'package:shop/src/view/widget/app_utils.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/screen/home/nike_brand%20product.dart';

import 'package:shop/src/view/screen/appbar.dart';
import 'package:shop/src/view/widget/custom_TextField.dart';
import 'package:shop/src/view/screen/drawerService.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 20,),
            child: Column(
              children: [

                CustomTextField(

                  hintText: "Looking for shoes",

                  prefixIcon: Icon(Icons.search),

                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 75,
                  width: double.infinity,
                  child:  TabBar(

                    isScrollable: true,

                    padding: EdgeInsets.all(10),
                  // indicatorPadding: const EdgeInsets.only(top: 33, bottom: 2),
                    indicator: BoxDecoration(

                        color: Colors.blue,
                        borderRadius:  BorderRadius.circular(30)
                    ) ,

                    labelColor: Colors.white,
                   unselectedLabelColor: Colors.blue,

                   // unselectedLabelColor: Colors.black,

                    tabs:  [
                      Tab(

                        child: Row(
                          children: [
                            Image.asset("images/Group 6.png",height: 45,width: 45,),
                           SizedBox(width: 5,),
                            Text("Nike")
                          ],
                        ),
                      ),
                      Tab(
                          child: Row(
                            children: [
                              Image.asset("images/Frame8.png",height: 44,width: 44,),
                              SizedBox(width: 5,),
                              Text("Puma")
                            ],
                          ),
                        ),

                      Tab(
                        child: Row(
                          children: [
                            Image.asset("images/Frame9.png",height: 44,width: 44,),
                             SizedBox(width: 5,),
                            Text("Under Armour")
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("images/Frame 10.png",height:44,width: 44,),
                         SizedBox(width: 5,),
                            Text("adidas")

                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("images/Frame 11.png",height: 44,width: 44,),
                            SizedBox(width: 5,),
                            Text("Converse")
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      children:  [
                        Center(child: Nick(),),
                        Center(child: Text("PumaPages"),),
                        Center(child: Text('Under Armour Page'),),
                        Center(child: Text('adidas Page'),),
                        Center(child: Text('Converse'),)
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