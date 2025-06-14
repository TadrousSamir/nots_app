import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todoappwithapi/widgits/custom_app_bar.dart';
import 'package:todoappwithapi/widgits/note_item.dart';

import '../routes/app_routes.dart';
import '../utilty/constant.dart';
import '../widgits/add_note_bottonsheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = ScreenUtils.getWidth(context);
    final double screenHeight = ScreenUtils.getHeight(context);
    return  Scaffold(
      body:Padding(
        padding:EdgeInsets.symmetric(vertical:screenHeight*.01,horizontal: screenWidth*.05),
        child: Column(
          children: [
            SizedBox(height: screenHeight*.04,),
            CustomAppBar(title: "Notes",icon:Icons.search ,),
            SizedBox(height: screenHeight*.01,),
            Expanded(
                child: GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.EditNotesView);
                    },
                    child: NoteItem()))


          ],
        ),
      ) ,
      floatingActionButton: SizedBox(
        height: 55 ,
        width: 55,
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          onPressed: () {

            showModalBottomSheet(context: context, builder: (context) {
              return AddNoteBottonsheet();
            });


          },
          child: const Icon(Icons.add, color: Colors.black, size: 32),
        ),
      ),
    );
  }
}
