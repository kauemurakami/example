import 'package:example/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnchangeThemeWidget extends GetView<HomeController> {
  const BtnchangeThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => controller.changeTheme(),
        icon: Obx(
          () => Icon(
              controller.darkMode.value ? Icons.light_mode : Icons.dark_mode),
        ));
  }
}
