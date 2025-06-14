import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottonsheet extends StatelessWidget {
  const AddNoteBottonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
      child: SingleChildScrollView(
        child: Column(
          children:[
            CustomTextField(hint: 'Title',),
            const SizedBox(height: 20,),
             CustomTextField(hint: 'content',maxLines: 5),
            const SizedBox(height: 80,),
            CustomButton(),


          ],
        ),
      ),
    ) ;
  }
}
