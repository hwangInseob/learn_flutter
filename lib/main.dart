import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_study/route.dart';
import 'package:real_study/screen/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Learn-Flutter",
      initialRoute: MainPage.routeName,
      getPages: routes,
    );
  }
}
