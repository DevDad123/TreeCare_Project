import 'package:flutter/material.dart';

class Diseasescreen extends StatelessWidget {
  const Diseasescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView(
        physics: const BouncingScrollPhysics(), // Enable scrolling with bounce effect
        children: [
          // First Container
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  "Disease Info 1",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/rose.jpg",
                          fit: BoxFit.cover,
                          width: 85,
                          height: 85,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: const Text(
                      "Rose",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {
                        print("rose infopage");
                      },
                      icon: Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Third Container
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  "Disease Info 3",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          // Fourth Container
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  "Disease Info 4",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
