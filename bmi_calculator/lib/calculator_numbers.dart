import 'package:bmi_calculator/BottomNavigation.dart';
import 'package:bmi_calculator/Widgets/operator_widget.dart';
import 'package:bmi_calculator/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class CalculatorNumbers extends StatefulWidget {
  const CalculatorNumbers({super.key});

  @override
  State<CalculatorNumbers> createState() => _CalculatorNumbersState();
}

class _CalculatorNumbersState extends State<CalculatorNumbers> {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color.fromARGB(255, 15, 149, 166),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormFieldWidget(
                  hintText: "Num 1",
                  textcontroller: num1,
                  horizontalPadding: 30,
                  verticallPadding: 10,
                ),
                TextFormFieldWidget(
                  hintText: "Num 2",
                  textcontroller: num2,
                  horizontalPadding: 30,
                  verticallPadding: 10,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 15, 149, 166),
                ),
              ),
              Text(
                "Result = $result",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                width: 70,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 15, 149, 166),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 280,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color.fromARGB(255, 15, 149, 166),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OperatorWidget(
                  operator: "+",
                  onPressed: () {
                    result = double.parse(num1.text) + double.parse(num2.text);
                    setState(() {});
                  },
                ),
                OperatorWidget(
                  operator: "-",
                  onPressed: () {
                    result = double.parse(num1.text) - double.parse(num2.text);
                    setState(() {});
                  },
                ),
                OperatorWidget(
                  operator: "*",
                  onPressed: () {
                    result = double.parse(num1.text) * double.parse(num2.text);
                    setState(() {});
                  },
                ),
                OperatorWidget(
                  operator: "/",
                  onPressed: () {
                    result = double.parse(num1.text) / double.parse(num2.text);
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Bottomnavigation(),
    );
  }
}
