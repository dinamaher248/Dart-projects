import 'package:flutter/material.dart';

class ContainerAgeWidget extends StatefulWidget {
  ContainerAgeWidget({super.key, required this.Type});
  // IconData icon;
  String Type;

  @override
  State<ContainerAgeWidget> createState() => _ContainerAgeWidgetState();
}

class _ContainerAgeWidgetState extends State<ContainerAgeWidget> {
  int Number = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 170,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(213, 24, 27, 72),
      ),
      child: Column(
        children: [
          Text(
            widget.Type,
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Text(
            "$Number",
            style: const TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
          ),
          GestureDetector(
            onTap: () {
              Number++;
              setState(() {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(212, 107, 109, 137),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (Number > 0) Number--;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(212, 107, 109, 137),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Icon(
                        Icons.minimize_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
