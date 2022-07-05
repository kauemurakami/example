import 'package:example/app/modules/login/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopSectionWidget extends GetView<LoginController> {
  const TopSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        IconButton(
            onPressed: () => controller.changeTheme(),
            icon: Obx(
              () => Icon(controller.darkMode.value
                  ? Icons.light_mode
                  : Icons.dark_mode),
            )),
      ],
    );
  }
}
