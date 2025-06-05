import 'package:flutter/material.dart';
import 'package:todoappwithapi/widgits/custom_app_bar.dart';

import '../utilty/constant.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtils.getWidth(context);
    double screenHeight = ScreenUtils.getHeight(context);
    return  Scaffold(
      body:Padding(
        padding:EdgeInsets.symmetric(vertical:screenHeight*.01,horizontal: screenWidth*.05),
        child: Column(
          children: [
            SizedBox(height: screenHeight*.04,),
            CustomAppBar(),


          ],
        ),
      ) ,
    );
  }
}
