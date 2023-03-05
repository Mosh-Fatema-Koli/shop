
import 'package:flutter/material.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor("F8F9FA") ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(child: Text("Favourite"))
        ],
      ),
    );
  }
}
