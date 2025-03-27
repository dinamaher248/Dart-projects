import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.textcontroller,
    required this.horizontalPadding,
    required this.verticallPadding,
  });
  String hintText;
  TextEditingController textcontroller;
  double horizontalPadding = 0;
  double verticallPadding = 0;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool isVisable = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding,
          vertical: widget.verticallPadding),
      child: TextFormField(
        obscureText:
            widget.hintText == "Password" && isVisable == true ? true : false,
        controller: widget.textcontroller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: widget.hintText == "Password" ||
                    widget.hintText == "Email or Phone number"
                ? BorderSide.none
                : const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: widget.hintText == "Password" ||
                    widget.hintText == "Email or Phone number"
                ? BorderSide.none
                : const BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: widget.hintText == "Password" ||
                    widget.hintText == "Email or Phone number"
                ? BorderSide.none
                : const BorderSide(color: Color.fromRGBO(0, 0, 0, 1)),
          ),
          suffixIcon: widget.hintText == "Password"
              ? Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisable = !isVisable;
                      });
                    },
                    icon: Icon(
                      isVisable ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                )
              : null,
          focusColor: Colors.green,
        ),
      ),
    );
  }
}
