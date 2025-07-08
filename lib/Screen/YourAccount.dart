import 'package:banking_app_interface/Components/CustomButton.dart';
import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:banking_app_interface/Components/InputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourAccount extends StatelessWidget {
  const YourAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Account"),
      ),

      drawer: CustomDrawer(),
      

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
          
              ClipOval(
                child: Image.asset(
                  "Assets/Rasel.jpeg",
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
          
              SizedBox(height: 20,),
          
              InputField(
                label: "Youer Name",
                hint: "Rasal Hossain",
                isPassword: false,
                placeholder: "Rasal Hossain"
              ),
          
              SizedBox(height: 15,),
          
              InputField(
                label: "Bank Account",
                hint: "1083475010780",
                isPassword: false,
                placeholder: "1083475010780"
              ),
          
              SizedBox(height: 15,),
          
              InputField(
                label: "Email",
                hint: "rasal.hossain.com@gmail.com",
                isPassword: false,
                placeholder: "rasal.hossain.com@gmail.com"
              ),
          
              SizedBox(height: 15,),
          
              InputField(
                label: "Password",
                hint: "Password",
                isPassword: true,
                placeholder: "Pasword"
              ),
          
              SizedBox(height: 15,),
          
              InputField(
                label: "Phone Number",
                hint: "01626757897",
                isPassword: false,
                placeholder: "01626757897"
              ),
          
              SizedBox(height: 15,),
          
              InputField(
                label: "Address",
                hint: "Shibrampur, Shahapur, Chatkhil, Noakhali",
                isPassword: false,
                placeholder: "Shibrampur, Shahapur, Chatkhil, Noakhali"
              ),

              SizedBox(height: 15,),

              Text("* Nunc faucibus a pellentesque sit amet porttitor adet dolor morbi non."),
          
              SizedBox(height: 20,),
          
          
               CustomButton(
                  text: "SAVE CHANGES",
                  backgroundColor: const Color(0xFF1A3D73),
                  onPressed: () {
                    Get.toNamed("/Home");
                  },
                ),
          
          
            ],
          ),
        ),
      ),


    );
  }
}