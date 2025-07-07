import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color(0xFF1A3D73),
        elevation: 0,
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       UserAccountsDrawerHeader(
      //         accountName: Text("Rasal Hossain"), 
      //         accountEmail: Text("1083475010780"),
      //        currentAccountPicture: CircleAvatar(
      //           backgroundImage: AssetImage("Assets/Rasel.jpeg"),
      //         ),
      //         decoration: BoxDecoration(
      //           color: const Color(0xFF1A3D73),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text("Home"),
      //         onTap: (){
      //           Get.toNamed("/Home");
      //         },
      //       )
      //     ],
      //   ),
      // ),
      drawer: CustomDrawer(),


      
    );
  }
}