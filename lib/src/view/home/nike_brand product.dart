import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/home/product.dart';

class Nick extends StatefulWidget {
  const Nick({Key? key}) : super(key: key);

  @override
  State<Nick> createState() => _NickState();
}

class _NickState extends State<Nick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor("F8F9FA") ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Shoes ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 16,
                  ),),
                Text("See all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 12,
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 220,
                child: Product()),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Arrivals ", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Airbnb Cereal",
                  fontSize: 16,
                ),),
                Text("See all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Airbnb Cereal",
                    fontSize: 12,
                  ),),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BEST CHOICE",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Airbnb Cereal App",
                                fontSize: 16,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Nike Air Jordan", style: TextStyle(

                            fontWeight: FontWeight.w500,
                            fontFamily: "Airbnb Cereal App",
                            fontSize: 20,
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text("\$ 849.69",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Airbnb Cereal App",
                            fontSize: 16,
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Image.asset("images/Frame 294.png",height: 80,width: 150,fit: BoxFit.cover,),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
