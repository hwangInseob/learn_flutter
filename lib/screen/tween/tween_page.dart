import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:real_study/main.dart';
import 'package:real_study/screen/widget/common_appbar.dart';

class TweenPage extends GetView<TweenPageController> {
  static const routeName = '/tween';
  static const routeTitle = 'Tween';

  const TweenPage({super.key});

  @override
  // TODO: implement controller
  TweenPageController get controller => Get.put(TweenPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(
        title: routeTitle,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                controller.fontSize.value += 10.0;
              },
              child: Text("Text Size UP!"),
            ),
            Obx(
              () => AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontSize: controller.fontSize.value,
                  color: Colors.black,
                ),
                duration: Duration(milliseconds: 1000),
                child: Text(
                  'Tween',
                ),
              ),
            ),
            Text(
              'Tween',
              style: TextStyle(
                fontSize: controller.animationFontSize!.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TweenPageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxDouble fontSize = 16.0.obs;

  AnimationController? animationController;
  Animation<double>? animationFontSize;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    final curve =
        CurvedAnimation(parent: animationController!, curve: Curves.bounceIn);

    animationFontSize = Tween(begin: 16.0, end: 32.0).animate(curve);
    // animationController!.repeat();
  }
}
