import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QRRransaction extends StatelessWidget {
  const QRRransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("QR Transaction"),
      ),

      drawer: CustomDrawer(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            color: const Color(0xFF1A3D73),
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [

                  SizedBox(height: 20,),
                  Text("SCAN THIS QR CODE", style: TextStyle(color: Colors.white, fontSize: 18),),

                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "Assets/QR_Code_Web.png",
                        width: 220,
                        // height: 130,
                        fit: BoxFit.cover, 
                      ),
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text("Rasal Hossain", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("rasal.hossain@gmail.com", style: TextStyle(color: Colors.white, fontSize: 18),),


                  

                ],
              ),
            ),
          ),


          SizedBox(
            height: 50,
          ),


          Text("Try Barcode", style: TextStyle(color: Colors.black, fontSize: 18),),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                "Assets/BarCodeName.jpg",
                width: 300,
                // height: 130,
                fit: BoxFit.cover, 
              ),
            ),
          ),

          SizedBox(
            height: 50,
          ),

          Text("Can't scan the QR or Barcode?", style: TextStyle(color: Colors.black, fontSize: 16),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Try ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed("/YourAccount");
                },
                child: const Text(
                  "Bank Account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF57A9C0),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),


        ],
      ),


    );
  }
}