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
        return;
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
            top: kToolbarHeight + MediaQuery.of(context).padding.top - 50,
            left: 10,
            right: 10,
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/avatar.jpg",
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "treecareprofile@gmail.com",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Grid of buttons
          Positioned(
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 100,
            left: 10,
            right: 10,
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    final icons = [
                      Icons.home,
                      Icons.medical_information,
                      Icons.qr_code_scanner,
                      Icons.currency_bitcoin,
                      Icons.question_mark,
                      Icons.settings,
                    ];
                    final labels = [
                      "Home",
                      "Disease Info",
                      "Scan",
                      "Subscription",
                      "Info",
                      "Settings",
                    ];

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.shade100,
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (index == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Homescreen()),
                                );
                              } else if (index == 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Diseasescreen()),
                                );
                              } else if (index == 2) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Scanscreen()),
                                );
                              } else if (index == 3) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Subscription()),
                                );
                              } else {
                                Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => const Homescreen()),
                                );
                              }
                            },
                            icon: Icon(
                              icons[index],
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          labels[index],
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 430,
            left: 10,
            right: 10,
            child: Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
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
