import 'package:bmi_calculator/BottomNavigation.dart';
import 'package:bmi_calculator/Widgets/container.dart';
import 'package:bmi_calculator/Widgets/containerAge.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'constant/app_router.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});
  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double value = 100;
  Color color = const Color.fromARGB(213, 24, 27, 72);
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 4, 52),
      appBar: AppBar(
          title: const Center(
            child: Text(
              "BMI Calculator",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 1, 4, 52)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        selectedGender = "Male";
                      });
                    },
                    child: ContainerGenderWidget(
                      icon: Icons.male,
                      gender: "Male",
                      color: selectedGender == "Male"
                          ? const Color.fromARGB(255, 2, 44, 79)
                          : color,
                    )),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedGender = "Female";
                    });
                  },
                  child: ContainerGenderWidget(
                    icon: Icons.female,
                    gender: "Female",
                    color: selectedGender == "Female" ? Colors.pink : color,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 370,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(213, 24, 27, 72),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$value",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Slider(
                        value: value,
                        onChanged: (double x) {
                          value = x.roundToDouble();
                          setState(() {});
                        },
                        min: 100,
                        max: 200,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.grey,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                ContainerAgeWidget(Type: "Weight"),
                ContainerAgeWidget(Type: "Age")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                context.push(AppRouter.bmiscreen2Path);
              },
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 225, 12, 69),
                ),
                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Bottomnavigation(),
    );
  }
}
