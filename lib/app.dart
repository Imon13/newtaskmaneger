
import 'package:flutter/material.dart';
import 'package:maneger/ui/sceens/splash_sceen.dart';
import 'package:maneger/ui/utility/app_colors.dart';

class TaskManeger extends StatelessWidget {
  const TaskManeger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashSceen(),
      theme: lightThemeData(),
    );
  }

  ThemeData lightThemeData() {
    return ThemeData(
      inputDecorationTheme:   InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(
           color:  Colors.grey.shade300
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none
        )
    ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        // titleMedium: TextStyle(
        //   fontWeight: FontWeight.w400,
        //   fontSize: 16,
        //   color: Colors.green
        // )
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.themeColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          foregroundColor: AppColors.white,

          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )

        )
      )
    );
  }
}
