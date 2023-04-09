import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/services/controller/base_controller.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';


class SizeComponet extends StatelessWidget  with BaseController{
  @override
  Widget build(BuildContext context) {
    return ListView.builder( physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: sizeC.size.length,
        itemBuilder: (BuildContext context, int index) {
          final item = sizeC.size[index];
          return InkWell(
              onTap: () {
            sizeC.selectedIndex.value = index;
          },
          child: Obx(() =>  Padding(
            padding: const EdgeInsets.all(5),
            child: Container(

            decoration: BoxDecoration(
            color: sizeC.selectedIndex.value== index ? Colors.blue :HexColor("#F8F9FA"),
                boxShadow: [
                  BoxShadow(
                    color: sizeC.selectedIndex.value== index ? Colors.grey: HexColor("#F8F9FA"), //New
                    blurRadius: 10.0,
                  )
                ],
            borderRadius: BorderRadius.circular(100)
            ),
            height: 45,
            width: 45,
            child: Center(child: Text("${item['title']}",style: TextStyle(

              color: sizeC.selectedIndex.value== index ? Colors.white : Colors.grey,

            ),)),
            ),
          )));



        });
  }
}