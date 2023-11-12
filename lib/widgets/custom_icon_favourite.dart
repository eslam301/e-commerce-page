import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconFavourite extends StatelessWidget {
  const CustomIconFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.all(3),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: CupertinoColors.white,
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
            color: Color(0xff004182),
          )
      ),
    );
  }
}
