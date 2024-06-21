import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_study/screen/list_generate/list_generate_page.dart';
import 'package:real_study/screen/tween/tween_page.dart';

class MainPage extends GetView<MainPageController> {
  static const routeName = "/main";

  const MainPage({super.key});

  @override
  // TODO: implement controller
  MainPageController get controller => Get.put(MainPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: List.generate(
              controller.menulist.length,
              (index) => GestureDetector(
                onTap: () => Get.toNamed(controller.menulist[index].routeName),
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      controller.menulist[index].title,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MainPageController extends GetxController {
  late final RxList menulist;

  final itemList = [
    new StudyPageItem(
      routeName: ListGeneratePage.routeName,
      title: ListGeneratePage.routeTitle,
    ),
  ];

  _initMenuList() {
    menulist = <StudyPageItem>[].obs;
    menulist.addAll(itemList);
  }

  @override
  void onInit() {
    _initMenuList();
    super.onInit();
  }
}

class StudyPageItem {
  final String routeName;
  final String title;

  StudyPageItem({
    required this.routeName,
    required this.title,
  });
}
