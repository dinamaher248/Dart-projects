import 'package:bmi_calculator/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/BottomNavigation.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 38, 0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, bottom: 30),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 550,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.2), // لون الظل مع شفافية
                          spreadRadius: 3, // انتشار الظل
                          blurRadius: 6, // درجة ضبابية الظل
                          offset: const Offset(4, 8), // اتجاه الظل (X و Y)
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 11,
                          offset:
                              const Offset(-2, -2), // اتجاه الظل (اعلي ,يسار )
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        TextFormFieldWidget(
                          hintText: "Email or Phone number",
                          textcontroller: emailController,
                          horizontalPadding: 0,
                          verticallPadding: 4,
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 200, 197, 197),
                          thickness: 2,
                        ),
                        TextFormFieldWidget(
                          hintText: "Password",
                          textcontroller: passwordController,
                          horizontalPadding: 0,
                          verticallPadding: 4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 109, 109, 109),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: FloatingActionButton(
                      heroTag: "uniqueTag1",
                      elevation: 200,
                      backgroundColor: const Color.fromARGB(255, 255, 38, 0),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Continue with social media",
                    style: TextStyle(
                        color: Color.fromARGB(255, 109, 109, 109),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: FloatingActionButton(
                          heroTag: "uniqueTag2",
                          elevation: 200,
                          backgroundColor: Colors.blue,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: FloatingActionButton(
                          heroTag: "uniqueTag3",
                          elevation: 200,
                          backgroundColor: Colors.black,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "Github",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Bottomnavigation(),
    );
  }
}
