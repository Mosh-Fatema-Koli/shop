
import 'package:flutter/material.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("My Cart",style: TextStyle(color: Colors.blue),)),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("NameNameName"),
                            Text("1200"),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(

                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_rounded)),
                            Text("2"),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_rounded)),

                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Container(
              height:70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("500 /=",style: TextStyle(color: Colors.blue,fontSize: 16),)
                      ],
                    ),
                    MaterialButton(onPressed: (){},color: Colors.blue,

                      child: Text("Check Out"),)
                  ],
                ),
              ),
            ),
          )



        ],
      ),

    );
  }
}
