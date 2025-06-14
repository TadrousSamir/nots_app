import 'package:flutter/material.dart';

import '../utilty/constant.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title,required this.icon});
    final String title;
    final IconData icon;
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtils.getWidth(context);
    double screenHeight = ScreenUtils.getHeight(context);
    return  Row(
      children: [
          Expanded(
            child: Text(title,style:
            TextStyle(fontSize: 28),),
          ),

        Container(
          height:screenHeight*.06 ,
          width: screenWidth*.13,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(16)

          ),
          child: Center(child: Icon(icon,size: 30,),
          ) ,
        )
      ],
    );
  }
}
