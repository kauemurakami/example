import 'package:example/app/modules/home/controller.dart';
import 'package:example/app/modules/home/widgets/btn_change_theme.dart';
import 'package:example/app/modules/home/widgets/btn_exit_to_login.dart';
import 'package:example/app/modules/home/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopSectionWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DropDownWidget(),
          const BtnchangeThemeWidget(),
          BtnExitWidget()
        ],
      ),
    );
  }
}
