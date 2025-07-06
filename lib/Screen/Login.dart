import 'package:banking_app_interface/Components/CustomButton.dart';
import 'package:banking_app_interface/Components/InputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.40;

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: const Color(0xFF1A3D73),
        elevation: 0,
      ),

      body: Stack(



        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 100), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height,
                  width: double.infinity,
                  color: const Color(0xFF1A3D73),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      const Text(
                        "WELCOME",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        "Assets/bank.png",
                        width: 200,
                      ),
                    ],

                  ),
                ),

                const SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(

                    children: const [
                      InputField(
                        label: "Username or Customer ID",
                        hint: "Enter Your User Name or Customer ID",
                      ),

                      SizedBox(height: 15),

                      InputField(
                        label: "Password",
                        hint: "Password",
                        isPassword: true,
                      ),
                    ],

                  ),
                ),

                const SizedBox(height: 20),

                CustomButton(
                  text: "LOG IN",
                  backgroundColor: const Color(0xFF1A3D73),
                  onPressed: () {
                   
                  },
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),




          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          // Forgot Password Action
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF57A9C0),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "New to Bank App? ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed("/Registration");
                            },
                            child: const Text(
                              "Sign Up",
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
                ),
              ),
            ),
          ),
        
        
        
        
        ],
      
      
      
      
      ),
    );
  }
}
