import 'package:example/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnExitWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.exit_to_app,
        color: Colors.red,
      ),
      onPressed: () => controller.logout(),
    );
  }
}
