import 'package:banking_app_interface/Components/CustomButton.dart';
import 'package:banking_app_interface/Components/InputField.dart';
import 'package:banking_app_interface/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Registraion"),
      ),
      
      body: Stack(

        children: [

          SingleChildScrollView(
            child: Column(
              children: [
            
                Container(
                  width: double.infinity,
                  color: const Color(0xFF1A3D73),
                  height: 170,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
            
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
            
                          Image.asset(
                            "Assets/bank.png",
                            width: 70,
                          ),
                          SizedBox(width: 20,),
                          Image.asset(
                            "Assets/Share.png",
                            width: 70,
                          ),
                          SizedBox(width: 20,),
                          Image.asset(
                            "Assets/Phone.png",
                            width: 70,
                          )
                        ],
                      ),
            
                      SizedBox(height: 20,),
            
                      Text(
                        "Connect to your bank account",
                      style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                      )
                    ],
                  ),
                ),
            
                SizedBox(height: 40),
            
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                        InputField(
                          label: "Your Name",
                          hint: "Enter Your Name",
                        ),
                        SizedBox(height: 15),
                        InputField(
                          label: "Bank Account",
                          hint: "Enter Your Bank Account",
                        ),
                        SizedBox(height: 15),
                        InputField(
                          label: "Email",
                          hint: "Enter Your Email",
                        ),
                        SizedBox(height: 15),
                        InputField(
                          label: "Password",
                          hint: "Enter Password",
                          isPassword: true,
                        ),
                        SizedBox(height: 15),

                        Text("User 6 Characters with a mix of letters numbers & symbols.", style: TextStyle(color: Color(0xFF57A9C0), fontSize: 16, fontWeight: FontWeight.w600),),
                        
                        
                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Transform.scale(
                              scale: 1.2,
                              
                              child: Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                                activeColor: Color(0xFF1A3D73),

                              ),
                            ),

                            Expanded(
                              child: Text(
                                "By signing up, you agree to Bank's Term of Use & Privacy Policy",
                                style: TextStyle(fontSize: 14, color: Colors.black54),
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height: 15),



                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                             CustomButton(
                                text: "SIGN UP",
                                backgroundColor: const Color(0xFF1A3D73),
                                onPressed: () {

                                },
                              ),

                              SizedBox(width: 5,),

                              Text("or", style: TextStyle(fontSize: 16),),

                              SizedBox(width: 5,),


                               CustomButton(
                                  text: "CANCEL",
                                  backgroundColor: const Color(0xFF15B0E6),
                                  onPressed: () {
                                    Get.toNamed("/SplashScreen");
                                  },
                                ),


                          ],
                        ),




                    ],
                  ),
                )
            
            
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
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already signed up? ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed("/Login");
                            },
                            child: const Text(
                              "Log in",
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