import 'package:flutter/cupertino.dart';

class CustomIncreaseDecreaseButton extends StatelessWidget {
  const CustomIncreaseDecreaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(

      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      decoration: BoxDecoration(
        color: Color(0xff004182),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 2,
          color: Color(0x22004182),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIcon(
            AssetImage('assets/icons/minus.png'),
            color: CupertinoColors.white,
          ),
          Text("1",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.white,
            ),),
          ImageIcon(
            AssetImage('assets/icons/plus.png'),
            color: CupertinoColors.white,
          )
        ]
      ),
    );
  }
}
