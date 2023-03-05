
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/view/screen/product/dtls.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder:(context, index) => GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ProductDtls(),
            ),
          );

        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 205,
                width: 157,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)),
                              height: 100,

                      child: Image.asset("images/Frame 294.png",height: 80,width: 150,fit: BoxFit.cover,),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BEST SELLER",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Airbnb Cereal",
                                fontSize: 12,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Nike Jordan", style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontFamily: "Airbnb Cereal",
                            fontSize: 16,
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text("\$849.69",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Airbnb Cereal",
                            fontSize: 14,
                          ))
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            Positioned(
             right: 8,
                bottom: 10,
                child: Image.asset("images/plus.png",height: 34,width: 35,))
          ],
        ),
      ),);
  }
}
