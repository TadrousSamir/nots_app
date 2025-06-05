import 'package:flutter/material.dart';

import '../utilty/constant.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtils.getWidth(context);
    double screenHeight = ScreenUtils.getHeight(context);
    return  Row(
      children: [
          Expanded(
            child:const Text("Notes",style:
            TextStyle(fontSize: 28),),
          ),

        Container(
          height:screenHeight*.06 ,
          width: screenWidth*.13,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(16)
            
          ),
          child:const Center(child: Icon(Icons.search,size: 30,),
          ) ,
        )
      ],
    );
  }
}
