import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todoappwithapi/routes/app_pages.dart';
import 'package:todoappwithapi/routes/app_routes.dart';
import 'package:todoappwithapi/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(brightness:Brightness.dark,
      fontFamily: 'Poppins',
      ),
      initialRoute: AppRoutes.NotesView,
      getPages: appPages(),
      debugShowCheckedModeBanner: false,
    );
  }
}


