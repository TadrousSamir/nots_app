import 'package:flutter/material.dart';

import '../utilty/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});


  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtils.getWidth(context);
    double screenHeight = ScreenUtils.getHeight(context);
    return Container(
      width: screenWidth,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
            borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),

      ),
    )
    );
  }
}
