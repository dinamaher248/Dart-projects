import 'package:flutter/material.dart';

class OperatorWidget extends StatelessWidget {
  OperatorWidget({super.key, required this.operator,required this.onPressed});
  String operator;
 final VoidCallback  onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              operator,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
