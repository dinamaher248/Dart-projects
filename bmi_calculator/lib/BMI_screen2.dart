import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BMIScreen2 extends StatelessWidget {
  const BMIScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 4, 52),
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 1, 4, 52)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 10,
          ),
          const Text(
            "Your Result",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(213, 24, 27, 72),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Normal",
                  style: TextStyle(
                      color: Color.fromARGB(255, 16, 237, 23), fontSize: 30),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "22.3",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "You have a good normal body ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 225, 12, 69),
            ),
            child: const Center(
              child: Text(
                "Re Calculate",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
