import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Diseasescreen.dart';
import 'Infoscreen.dart';
import 'Scanscreen.dart';
import 'Subscription.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  void navigatetoscreen(BuildContext context, int index) {
    Widget screen;
    switch (index) {
      case 0:
        screen = const Homescreen();
        break;
      case 1:
        screen = const Diseasescreen();
        break;
      case 2:
        screen = const Scanscreen();
        break;
      case 3:
        screen = const Subscription();
        break;
      case 4:
        screen = const Infoscreen();
        break;
      default:
        screen = const Homescreen();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.exit_to_app),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "TREECARE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: kToolbarHeight + MediaQuery.of(context).padding.top - 50, // Position below the app bar
            left: 10,
            right: 10,
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                // Hoàn thện nốt
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        animationDuration: const Duration(milliseconds: 350),
        onTap: (index) {
          navigatetoscreen(context, index);
        },
        items: const [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.medical_information, color: Colors.black),
          Icon(Icons.qr_code_scanner, color: Colors.black),
          Icon(Icons.currency_bitcoin, color: Colors.black),
          Icon(Icons.question_mark, color: Colors.black),
        ],
      ),
    );
  }
}
