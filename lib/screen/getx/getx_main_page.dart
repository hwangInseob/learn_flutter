import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxMainPage extends GetView<GetxMainPageController> {
  static const routeName = '/getxMain';
  static const routeTitle = 'GetX';
  const GetxMainPage({super.key});

  @override
  // TODO: implement controller
  GetxMainPageController get controller => Get.put(GetxMainPageController());

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class GetxMainPageController extends GetxController {}
