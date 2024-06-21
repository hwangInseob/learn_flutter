
import 'package:get/get.dart';
import 'package:real_study/screen/list_generate/list_generate_page.dart';
import 'package:real_study/screen/main_page.dart';

final routes = [
  GetPage(name: MainPage.routeName, page: () => MainPage()),
  GetPage(name: ListGeneratePage.routeName, page: () => ListGeneratePage()),
];