import 'package:get/get.dart';

import '../views/edit_notes_view.dart';
import '../views/notes_view.dart';
import 'app_routes.dart';

appPages() => [
  GetPage(
        name: AppRoutes.NotesView,
        page: () =>  NotesView(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        binding: BindingsBuilder(() {
          // Get.lazyPut<AddHandwrittenReportController>(
          //     () => AddHandwrittenReportController());
        }),
      ),
  GetPage(
    name: AppRoutes.EditNotesView,
    page: () => EditNotesView(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
    binding: BindingsBuilder(() {
      // Get.lazyPut<AddHandwrittenReportController>(
      //     () => AddHandwrittenReportController());
    }),
  ),
    ];
