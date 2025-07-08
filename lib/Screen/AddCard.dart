import 'package:banking_app_interface/Components/CustomButton.dart';
import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:banking_app_interface/Components/InputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {



  DateTime? selectedDate;
  int? selectedMonth;
  int? selectedYear;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _pickMonth() async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(now.year, selectedMonth ?? now.month),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      selectableDayPredicate: (date) => date.day == 1, // Show only months
    );
    if (picked != null) {
      setState(() {
        selectedMonth = picked.month;
      });
    }
  }

  Future<void> _pickYear() async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(selectedYear ?? now.year),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      selectableDayPredicate: (date) => date.month == 1 && date.day == 1, // Year only
    );
    if (picked != null) {
      setState(() {
        selectedYear = picked.year;
      });
    }
  }

  Widget _buildPickerField({
    required String label,
    required String? value,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AbsorbPointer(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: label,
              hintText: value ?? 'Select',
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),

      drawer: CustomDrawer(),
      

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
          
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "Assets/CreditCard.png",
                    width: 220,
                    height: 130,
                    fit: BoxFit.cover, 
                  ),
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
                label: "Card Number",
                hint: "4005 1254 6589 4569",
                isPassword: false,
                placeholder: "4005 1254 6589 4569"
              ),
          
              SizedBox(height: 15,),

              Column(
                children: [
                  Text("Expired Date")
                ]
              ),
              Row(
                children: [
                  _buildPickerField(
                    label: 'Date',
                    value: selectedDate != null ? "${selectedDate!.day}" : null,
                    onTap: _pickDate,
                  ),
                  const SizedBox(width: 8),
                  _buildPickerField(
                    label: 'Month',
                    value: selectedMonth != null ? "$selectedMonth" : null,
                    onTap: _pickMonth,
                  ),
                  const SizedBox(width: 8),
                  _buildPickerField(
                    label: 'Year',
                    value: selectedYear != null ? "$selectedYear" : null,
                    onTap: _pickYear,
                  ),
                ],
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
          

              Text("* Nunc faucibus a pellentesque sit amet porttitor adet dolor morbi non."),
              Text("* Nunc faucibus a pellentesque sit amet porttitor ege dolor morbi non."),
          
              SizedBox(height: 20,),
          
          
               Center(
                 child: CustomButton(
                    text: "SAVE CHANGES",
                    backgroundColor: const Color(0xFF1A3D73),
                    onPressed: () {
                      Get.toNamed("/Home");
                    },
                  ),
               ),
          
          
            ],
          ),
        ),
      ),


    );
  }
}