import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconFavourite extends StatefulWidget {

  CustomIconFavourite({super.key});

  @override
  State<CustomIconFavourite> createState() => _CustomIconFavouriteState();
}

class _CustomIconFavouriteState extends State<CustomIconFavourite> {
  Color color = Color(0xff004182);

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
          padding: EdgeInsets.all(3),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: isPressed ? Color(0xff004182) : Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(0.8),
              )
            ],
          ),
          child: ImageIcon(
            AssetImage('assets/icons/fav_icon.png'),
            size: 20,
            color: isPressed ? Colors.white : Color(0xff004182),
          )
      ),
    );
  }
}
