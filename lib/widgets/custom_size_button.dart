import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSizeButton extends StatefulWidget {
  bool isSelected = false;
  String? text = ' ' ;
   CustomSizeButton({super.key, this.text,});

  @override
  State<CustomSizeButton> createState() => _CustomSizeButtonState();
}

class _CustomSizeButtonState extends State<CustomSizeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: 35,
        height: 35,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: widget.isSelected ? Color(0xff004182) : Colors.white,
          shadows: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.8),
            )
          ],

        ),
        child: Center(
          child: Text(
            widget.text?? ' ',
            style: TextStyle(
              color: widget.isSelected ? Colors.white : Color(0xff004182),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );

  }
}
