import 'package:flutter/material.dart';
import 'package:todoappwithapi/widgits/custom_app_bar.dart';
import 'package:todoappwithapi/widgits/note_item.dart';

import '../utilty/constant.dart';
import '../widgits/add_note_bottonsheet.dart';
import '../widgits/custom_button.dart';
import '../widgits/custom_text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtils.getWidth(context);
    double screenHeight = ScreenUtils.getHeight(context);
    return  Scaffold(
      body:Padding(
        padding:EdgeInsets.symmetric(vertical:screenHeight*.01,horizontal: screenWidth*.05),
        child: SingleChildScrollView(
          child: Column(
            children:[
              SizedBox(height: screenHeight*.045,),
              CustomAppBar(title: "Edit Notes",icon:Icons.check ,),
              SizedBox(height: screenHeight*.06,),
              CustomTextField(hint: 'Title',),
              const SizedBox(height: 30,),
              CustomTextField(hint: 'content',maxLines: 5),



            ],
          ),
        ),
      )

    );
  }
}
