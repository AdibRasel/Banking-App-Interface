import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _darkMode = false;
  bool _notifications = true;
  String _language = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xFF1A3D73),
        elevation: 0,
      ),
      drawer: CustomDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Profile Section
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white, size: 30),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Rasel Hossain", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text("rasel@example.com", style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 24),

          // General Settings Title
          const Text("General", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),

          const SizedBox(height: 10),

          SwitchListTile(
            value: _darkMode,
            onChanged: (value) {
              setState(() {
                _darkMode = value;
              });
            },
            title: const Text("Dark Mode"),
            secondary: const Icon(Icons.dark_mode),
          ),
          const Divider(),

          ListTile(
            title: const Text("Language"),
            leading: const Icon(Icons.language),
            trailing: DropdownButton<String>(
              value: _language,
              underline: const SizedBox(),
              items: const [
                DropdownMenuItem(value: 'English', child: Text("English")),
                DropdownMenuItem(value: 'Bangla', child: Text("Bangla")),
              ],
              onChanged: (value) {
                setState(() {
                  _language = value!;
                });
              },
            ),
          ),
          const Divider(),

          SwitchListTile(
            value: _notifications,
            onChanged: (value) {
              setState(() {
                _notifications = value;
              });
            },
            title: const Text("Notifications"),
            secondary: const Icon(Icons.notifications),
          ),

          const SizedBox(height: 30),

          // Security Section Title
          const Text("Security", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
          const SizedBox(height: 10),

          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text("Change Password"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to Change Password screen
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text("Logout", style: TextStyle(color: Colors.red)),
            onTap: () {
              // Perform logout
            },
          ),
        ],
      ),
    );
  }
}
