import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("PAYMENT"),
      ),
      drawer: CustomDrawer(),

      body: Column(
        children: [


          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            color:  const Color(0xFF1A3D73),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    child: ClipOval(
                      child: Image.asset(
                        "Assets/Rasel.jpeg",
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("BALANCE", style: TextStyle(fontSize: 18, color: Color(0xFF57A9C0)),),
                      Text("\$40,580", style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w600),)
                    ],
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),



          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [



                Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/water.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Water", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),


                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/electricity.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Electricity", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),



                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/gas.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Gas", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),
                  ],
                ),


                SizedBox(height: 30,),






                Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/shopping.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Shopping", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),


                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/phone.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Phone", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),



                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/card.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Credit Card", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),
                  ],
                ),
                






                SizedBox(height: 30,),






                Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/insurance.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Insurance", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),


                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/mortgage.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Mortgage", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),



                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/document.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Other Bils", style: TextStyle(fontSize: 17))
                        ],
                      )
                    ),
                  ],
                ),
                




              ],
            ),
          )






        ],
      ),
      
    );
  }
}