import 'package:bmi_calculator/constant/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int value = 0;
  List<String> bodyPush = [
    AppRouter.bmiscreenPath,
    AppRouter.calculatorPath,
    AppRouter.loginPath
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: value,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        onTap: (int x) {
          setState(() {
            value = x;
          });
          context.go(bodyPush[value]);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "BMI APP"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
        ]);
  }
}
