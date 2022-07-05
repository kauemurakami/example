import 'package:example/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('HomeController'),
            IconButton(
                onPressed: () => controller.changeTheme(),
                icon: Obx(
                  () => Icon(controller.darkMode.value
                      ? Icons.light_mode
                      : Icons.dark_mode),
                )),
            IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              onPressed: () => controller.logout(),
            ),
          ],
        ),
      ],
    )));
  }
}
