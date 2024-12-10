import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/Screens/home.dart';
import 'package:task_app/utils/Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.deepBlue),
          useMaterial3: true,
        ),
        home: HomeScreen());
  }
}
