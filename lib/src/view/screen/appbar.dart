
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/screen/cart/cart.dart';
import 'package:shop/src/view/screen/home/location.dart';


class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

              Scaffold.of(context).openDrawer();


      },

        child: Image.asset("images/menuicon.png",height: 44,width: 44,));
  }
}


class CartWidget extends StatelessWidget {
  const CartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Get.to(CartPage());
        },
        child: Image.asset("images/topercart.png",height: 44,width: 44,));
  }
}

setAppBar() {
  // ignore: unnecessary_new
  return new AppBar(
    elevation: 0,
    backgroundColor: HexColor("#F8F9FA"),
   leading:Padding(
     padding: const EdgeInsets.only(left: 10),
     child: IconWidget(),
   ) ,
    title: GestureDetector(
      onTap: (){
        Get.to(CurrentLocationScreen());
      },
      child: Center(
        child: Column(
          children: [
            Text("Store location",style: TextStyle(color: Colors.grey,fontSize: 10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on,color: Colors.red,size: 15,),
                Text("Mondolibug, Sylhet",style: TextStyle(color: Colors.black,fontSize: 14),),
              ],
            )
          ],
        ),
      ),
    ),
  actions: [Padding(
    padding: const EdgeInsets.only(right: 10),
    child: CartWidget(),
  )],
  );
}
