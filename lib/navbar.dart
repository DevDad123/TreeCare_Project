import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/avatar.jpg",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "treecareportfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "treecare@gmail.com",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.house),
            title: const Text("Main Menu"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Setting"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.medical_information),
            title: const Text("Diseases"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.currency_bitcoin),
            title: const Text("Subscription"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.question_mark),
            title: const Text("Information"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.qr_code_scanner),
            title: const Text("Scanner"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
