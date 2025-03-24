import 'package:flutter/material.dart';

class ContainerGenderWidget extends StatelessWidget {
  ContainerGenderWidget({super.key, required this.icon, required this.gender,required this.color});
  IconData icon;
  String gender;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 170,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 100,
          ),
          Text(
            gender,
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          )
        ],
      ),
    );
  }
}
