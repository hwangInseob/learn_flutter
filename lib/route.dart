import 'package:get/get.dart';
import 'package:real_study/screen/getx/getx_main_page.dart';
import 'package:real_study/screen/list_generate/list_generate_page.dart';
import 'package:real_study/screen/main_page.dart';
import 'package:real_study/screen/tween/tween_page.dart';

final routes = [
  GetPage(name: MainPage.routeName, page: () => MainPage()),
  GetPage(name: ListGeneratePage.routeName, page: () => ListGeneratePage()),
  GetPage(name: TweenPage.routeName, page: () => TweenPage()),
  GetPage(name: GetxMainPage.routeName, page: () => GetxMainPage()),
];
