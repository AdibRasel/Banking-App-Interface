import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(232, 21, 40, 70),
        child: ListView(
          children: <Widget>[

            const UserAccountsDrawerHeader(
              accountName: Text("Rasel Hossain"),
              accountEmail: Text("1083475010780"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("Assets/Rasel.jpeg"),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF1A3D73),
              ),
            ),


            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text("Home", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/Home");
              },
            ),

            ListTile(
              leading: const Icon(Icons.account_circle, color: Colors.white),
              title: const Text("Your Account", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/YourAccount");
              },
            ),

            ListTile(
              leading: const Icon(Icons.list, color: Colors.white),
              title: const Text("Transaction List", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/TransactionList");
              },
            ),

            ListTile(
              leading: const Icon(Icons.credit_card, color: Colors.white),
              title: const Text("Add Card", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/AddCard");
              },
            ),

            ListTile(
              leading: const Icon(Icons.currency_exchange, color: Colors.white),
              title: const Text("Exchange", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/Exchange");
              },
            ),

            ListTile(
              leading: const Icon(Icons.payment, color: Colors.white),
              title: const Text("Payment", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/Payment");
              },
            ),

            ListTile(
              leading: const Icon(Icons.qr_code, color: Colors.white),
              title: const Text("QR Transaction", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/QRRransaction");
              },
            ),

            ListTile(
              leading: const Icon(Icons.send, color: Colors.white),
              title: const Text("Send Money", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/SendMonay");
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/Settings");
              },
            ),

            ListTile(
              leading: const Icon(Icons.app_registration, color: Colors.white),
              title: const Text("Registration", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.toNamed("/Registration");
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: const Text("Logout", style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.defaultDialog(
                  title: "Logout",
                  middleText: "Are you sure you want to logout?",
                  confirm: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed("/Login");
                    },
                    child: const Text("Yes"),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("Cancel"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
