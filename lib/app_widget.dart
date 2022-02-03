import 'package:flutter/material.dart';
import 'package:note_task_v1/modules/home/home_page.dart';
import 'package:note_task_v1/modules/task/new_task_page.dart';
import 'package:note_task_v1/shared/theme/app_theme_controller.dart';
import 'modules/splash/splash_page.dart';
import 'modules/note/new_note_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppThemeController.controller,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: AppThemeController.controller.darkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
          routes: {
            '/splash': (context) => const SplashPage(),
            '/home': (context) => const HomePage(),
            '/new_note': (context) => const NotePage(),
            '/new_task': (context) => const NewTask(),
            // '/addoredit': (context) => const AddEditNotePage(),
          },
        );
      },
    );
  }
}
