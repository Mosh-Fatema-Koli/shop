import 'package:flutter/material.dart';
import 'package:shop/src/view/screen/product/dtls.dart';

class NickPerProduct extends StatefulWidget {
  const NickPerProduct({Key? key}) : super(key: key);

  @override
  State<NickPerProduct> createState() => _NickPerProductState();
}

class _NickPerProductState extends State<NickPerProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      physics: AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
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
                height: 250,
                width: 157,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex:1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)),


                        child: Image.asset("images/Frame 294.png",height: 100,width: 150,fit: BoxFit.cover,),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 65,
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
                            )),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            Positioned(
                right: 15,
                bottom: 10,
                child: Image.asset("images/plus.png",height: 34,width: 35,))
          ],
        ),
      ),);
  }
}
