
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/screen/home/product.dart';
import 'package:shop/src/view/screen/product/nick_card.dart';

class NickProduct extends StatefulWidget {
  const NickProduct({Key? key}) : super(key: key);

  @override
  State<NickProduct> createState() => _NickProductState();
}

class _NickProductState extends State<NickProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("F8F9FA") ,
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 40,
            color: HexColor("F8F9FA") ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: (){
                          Get.back();
                        },

                        child: Image.asset("images/back1.png",height:35,width: 35,))),
                Expanded(
                    flex: 3,
                    child: Center(child: Text("Nick Jordan Shoes",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Airbnb Cereal",
                      fontSize: 14,)),)),
                Expanded(
                    flex:1,
                    child: Image.asset("images/cart.png",height: 24,width: 24,)),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 800,
              child:  NickPerProduct(),
            ),
          )
        ]
      ),



    );
  }
}
