
import 'package:flutter/material.dart';
import 'package:shop/src/services/helpers/hexcolor.dart';
import 'package:shop/src/view/widget/custom_TextField.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);
  @override
  _TabPageState createState() => _TabPageState();
}
class _TabPageState extends State<TabPage> {

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

          backgroundColor:HexColor("F8F9FA") ,
          body: Padding(
            padding: EdgeInsets.all(20),
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
                  height: 45,
                  child:  TabBar(
                    indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:  BorderRadius.circular(25.0)
                    ) ,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs:  [
                      Tab(
                        child: Image.asset("images/Group 6.png"),
                      ),
                      Tab(
                        child: Image.asset("images/Frame8.png"),
                      ),
                      Tab(
                        child: Image.asset("images/Frame9.png"),
                      ),
                      Tab(
                        child: Image.asset("images/Frame 10.png"),
                      ),
                      Tab(
                        child: Image.asset("images/Frame 11.png"),
                      ),

                    ],
                  ),
                ),
                const Expanded(
                    child: TabBarView(
                      children:  [
                        Center(child: Text("Chats Pages"),),
                        Center(child: Text("Status Pages"),),
                        Center(child: Text('Calls Page'),),
                        Center(child: Text('Settings Page'),)
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