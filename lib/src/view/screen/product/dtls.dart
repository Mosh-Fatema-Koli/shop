import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/screen/product/shoe_size.dart';
import 'package:shop/src/view/widget/appbar.dart';


class ProductDtls extends StatefulWidget {
  const ProductDtls({Key? key}) : super(key: key);

  @override
  State<ProductDtls> createState() => _ProductDtlsState();
}

class _ProductDtlsState extends State<ProductDtls> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor("F8F9FA") ,
      // appBar: AppBar(
      //   leading: Image.asset("Image/"),
      //   title: Text("Men's Shoe"),
      //   actions: [Padding(
      //     padding: const EdgeInsets.only(right: 10),
      //     child: CartWidget(),
      //   )],
      //
      // ),
      body: Stack(
        children: [


          Container(
            height: double.infinity,
            color: HexColor("F8F9FA") ,

          ),
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: Container(
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
                    child: Center(child: Text("Man's Shoes",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Airbnb Cereal",
                      fontSize: 14,)),)),
                Expanded(
                    flex:1,
                    child: Image.asset("images/cart.png",height: 24,width: 24,)),

              ],
            ),

          ),),
          Positioned(
              top: 100,
              right: 0,
              left: 0,
              child: Image.asset("images/Imag.png",height: 200,)),
          Positioned(
              top: 300,
              right: 0,
              left: 0,
              child:Container(
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20), ),
              color: Colors.white

            ),

            child:Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("BEST SELLER",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Airbnb Cereal",
                        fontSize: 14,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Nike Jordan", style: TextStyle(

                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 24,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("\$849.69",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 20,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 16,
                    color: Colors.grey
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Gallery",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 18,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                 //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#F8F9FA"),
                          ),
                          child: Center(child: Image.asset("images/nike1.png",height: 23,width: 36,))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            color: HexColor("#F8F9FA"),
                          ),
                          height: 56,
                          width: 56,
                          child: Center(child: Image.asset("images/nike2.png",height: 23,width: 45,))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            color: HexColor("#F8F9FA"),
                          ),
                          height: 56,
                          width: 56,
                          child: Center(child: Image.asset("images/nike3.png",height:23,width:45,)))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Size",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Airbnb Cereal",
                        fontSize: 18,
                      )),
                      Row(

                        children: [
                          Text("EU",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Airbnb Cereal",
                            fontSize: 14,)),
                          SizedBox(
                            width: 10,
                          ),
                          Text("US",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Airbnb Cereal",
                            fontSize: 14,)),
                          SizedBox(
                            width: 10,
                          ),
                          Text("UK",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Airbnb Cereal",
                            fontSize: 14,)),


                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: SizeComponet(),
                  )


                ],
              ),
            ),
          )),

          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Card(

                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey, //New
                          blurRadius: 10.0,
                        )
                      ],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30), ),
                    //  color:HexColor("EEECECFF") ,
                  color: Colors.white

                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Price", style: TextStyle(

                              fontWeight: FontWeight.w500,
                              fontFamily: "Airbnb Cereal",
                              fontSize: 16,
                              color: Colors.grey,
                            )),
                            SizedBox(
                              height: 10,
                            ),
                            Text("\$849.69",style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Airbnb Cereal",
                              fontSize: 20,
                            )),

                          ],
                        ),



                     Container(
                          padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                          ),

                          child: Center(
                            child: Text("Add To Cart",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Airbnb Cereal",
                              fontSize: 16,
                              color: Colors.white
                            ),textAlign: TextAlign.center),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              )),

        ],
      ),
    );
  }
}
