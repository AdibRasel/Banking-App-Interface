import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xFF1A3D73),
        elevation: 0,
      )

    );
  }
}