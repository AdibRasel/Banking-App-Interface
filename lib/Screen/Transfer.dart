import 'package:banking_app_interface/Components/CustomButton.dart';
import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:banking_app_interface/Components/InputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Transfer"),
      ),

      drawer: CustomDrawer(),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          
          child: Column(
            children: [
        
        
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "Assets/transferTwo.png",
                      width: 170,
                      // height: 130,
                      fit: BoxFit.cover, 
                    ),
                  ),
        
                  SizedBox(width: 10,),
        
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "Assets/transfer.png",
                      width: 100,
                      // height: 130,
                      fit: BoxFit.cover, 
                    ),
                  ),
                ],
              ),
        
        
        
              InputField(
                label: "From Bank Account Name",
                hint: "Rasal Hossain",
                isPassword: false,
                placeholder: "Rasal Hossain"
              ),
        
              SizedBox(height: 20,),

                InputField(
                label: "From Bank Account",
                hint: "1083475010780",
                isPassword: false,
                placeholder: "1083475010780"
              ),
        
              SizedBox(height: 20,),
        
        
              InputField(
                label: "Bank Name",
                hint: "Bank Asia PLC",
                isPassword: false,
                placeholder: "Bank Asia PLC"
              ),
        
              SizedBox(height: 20,),
        
        
              InputField(
                label: "Branch Name",
                hint: "Dhaka Branch",
                isPassword: false,
                placeholder: "Dhaka Branch"
              ),
        
              SizedBox(height: 20,),
        
        
        
        
              InputField(
                label: "Amount",
                hint: "8,70,500",
                isPassword: false,
                placeholder: "8,70,500"
              ),
        
        
              SizedBox(height: 20,),
        
        
              InputField(
                label: "Messages",
                hint: "RTGS",
                isPassword: false,
                placeholder: "RTGS"
              ),
        
              SizedBox(height: 30,),
        
        
        
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
        
        
                  CustomButton(
                    text: "Cancel",
                    backgroundColor: const Color.fromARGB(255, 186, 32, 32),
                    onPressed: () {
                      // Get.toNamed("/Home");
                    },
                  ),
            



                  Text("or"),
                  
        
        
        
                  CustomButton(
                    text: "Send",
                    backgroundColor: const Color(0xFF1A3D73),
                    onPressed: () {
                      Get.toNamed("/Home");
                    },
                  ),
        
        
        
                ],
              )
              
        
          
            ],
          ),
        ),
      ),




    );
  }
}