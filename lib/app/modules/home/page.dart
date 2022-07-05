import 'package:example/app/modules/home/controller.dart';
import 'package:example/app/modules/home/widgets/list.dart';
import 'package:example/app/modules/home/widgets/top_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        TopSectionWidget(),
        controller.obx(
          (state) => ListAnimalsWidget(),
        )
      ],
    )));
  }
}
