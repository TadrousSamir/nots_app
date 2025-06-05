import 'package:flutter/material.dart';
int previousIndex = 0; // Track the current selected index

class ScreenUtils {

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }


//   OutlineInputBorder myInputBorder() {
//     return const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         borderSide: BorderSide(
//           color: Color(0xFFC8CAD0),
//           width: 1,
//         ));
//   }
//   OutlineInputBorder myFocusBorder() {
//     return const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         borderSide: BorderSide(
//           color: Color(0xff0088CC),
//           width: 1,
//         ));
//   }
//   OutlineInputBorder myBorder() {
//     return OutlineInputBorder(
//         borderSide: BorderSide(color: Color(0xFFC8CAD0), width: 1.11),
//         borderRadius: BorderRadius.circular(11.1));
//   }
//
//   OutlineInputBorder errorBorder() {
//     return const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         borderSide: BorderSide(
//           color: Color(0xFFB21A1A),
//           width: 1,
//         ));
//   }
// //Coustom snacke bar
  static void showCustomSnackBar( BuildContext context,{required String text, required String icon})
     {
    final snackBar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        height: 70,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(icon,height: 40,width: 40,),
             SizedBox(width: 10,),
            Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(

                fontSize: 11,
                fontWeight: FontWeight.w700,
                height: 1.5,
                color: Color(0xff000000),
              ),
            ),

          ],
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showCustomDialog(
      BuildContext context, {
        required String message,
        required String acceptButton,
        required String backButton,
        required VoidCallback onAccept,
        required VoidCallback onCancel,
      }) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Text(
            message,
            textAlign: TextAlign.start,
          ),
          actions: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Color(0xff0088CC),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onAccept(); // Call the accept action
                },
                child: Text(acceptButton, style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Color(0xFFF6F6F6),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onCancel(); // Call the cancel action
                },
                child: Text(backButton, style: TextStyle(color: Color(0xff0088CC))),
              ),
            ),
          ],
        );
      },
    );
  }


}