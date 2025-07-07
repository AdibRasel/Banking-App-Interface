import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:banking_app_interface/Screen/Payment.dart';
import 'package:banking_app_interface/Screen/Settings.dart';
import 'package:banking_app_interface/Screen/TransactionList.dart';
import 'package:banking_app_interface/Screen/YourAccount.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  // const Home({super.key});


  final List<Map<String, dynamic>> transactions = [
    {
      "icon": Icons.shopping_cart,
      "title": "Grocery Store",
      "subtitle": "Paid via card",
      "balance": "- \$120.50",
    },
    {
      "icon": Icons.attach_money,
      "title": "Salary",
      "subtitle": "Monthly salary",
      "balance": "+ \$3,000.00",
    },
    {
      "icon": Icons.fastfood,
      "title": "Restaurant",
      "subtitle": "Dinner with friends",
      "balance": "- \$45.00",
    },
    {
      "icon": Icons.local_gas_station,
      "title": "Gas Station",
      "subtitle": "Fuel expenses",
      "balance": "- \$60.75",
    },
    {
      "icon": Icons.movie,
      "title": "Cinema",
      "subtitle": "Movie night",
      "balance": "- \$15.00",
    },
  ];



  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color(0xFF1A3D73),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Get.toNamed("/TransactionList");
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Get.toNamed("/Settings");
            },
          ),
        ],
      ),


      drawer: CustomDrawer(),



      body: Column(

        children: [
          
          // ================= Start Top Section > Background color ================
          Container(
            color:  const Color(0xFF1A3D73),
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: Column(
              children: [

                ClipOval(
                  child: Image.asset(
                    "Assets/Rasel.jpeg",
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                
                SizedBox(height: 10,),

                Text("Rasal Hossain", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                Text("rasal.com@gmail.com", style: TextStyle(fontSize: 16, color: Colors.white),),

                SizedBox(height: 10,),


                // =================== Balance Box Start =================
                Container(
                  width: 260,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5), 
                     boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 0,
                        offset: Offset(0, 0), // shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("BALANCE", style: TextStyle(color: Color(0xFF57A9C0), fontSize: 18, height: 0,),),
                      Text(" \$42,380.20", style: TextStyle(color: Color(0xFF1A3D73), fontSize: 35, fontWeight: FontWeight.bold, height: 0),),
                      
                      SizedBox(height: 10,),

                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                        // color: Colors.white,
                        color: Color(0xFF1A3D73),
                        borderRadius: BorderRadius.circular(5), 
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF1A3D73),
                            blurRadius: 0,
                            offset: Offset(0, 0), // shadow position
                          ),
                        ],
                      ),
                        child: InkWell(
                          onTap: (){
                            Get.toNamed("/TransactionList");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: Text("TRANSFER", style: TextStyle(color: Colors.white, fontSize: 14),)),
                          ),
                        ),
                      ),
                      

                    ],
                  ),
                )
                // =================== Balance Box End =================


              ],
            ),
          ),
          // ================= End Top Section > Background color ================

          SizedBox(height: 20,),

          // ================ Transaction List Start ======================
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text("LATEST TRANSACTIONS", style: TextStyle(fontSize: 20,  wordSpacing: 10, color:  Color(0xFF57A9C0), ), ),
            ],
          ),
          // Transaction List
          Expanded(
            child:
            ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final tx = transactions[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue.shade100,
                    child: Icon(tx['icon'], color: Colors.blue),
                  ),
                  title: Text(tx['title'], style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(tx['subtitle']),
                  trailing: Text(
                    tx['balance'],
                    style: TextStyle(
                      color: tx['balance'].startsWith('+') ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                );
              },
            ),
          ),
          // ================ Transaction List End ======================


        ],

      ),



      
    );
  }
}