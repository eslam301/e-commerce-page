import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomColorButton extends StatefulWidget {
  Color color = Color(0xff004182);
  CustomColorButton ({super.key , required this.color});

  @override
  State<CustomColorButton> createState() => _State();
}

class _State extends State<CustomColorButton> {
bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(3),
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(50),
      ),
        child: isPressed ?Icon(
          Icons.check,
          color: CupertinoColors.white,
          size: 18,
        ) : null
    ));
  }
}
