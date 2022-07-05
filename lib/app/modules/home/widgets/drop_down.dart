import 'package:example/app/data/enum/animals.dart';
import 'package:example/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownWidget extends GetView<HomeController> {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButton<Animals>(
          value: controller.type.value,
          icon: const Icon(
            Icons.arrow_downward,
            color: Colors.white30,
          ),
          elevation: 16,
          style: const TextStyle(color: Colors.white),
          underline: Container(
            height: 2,
            color: Colors.white30,
          ),
          onChanged: (Animals? _) => controller.selectAnimal(_),
          items: <Animals>[Animals.Todos, Animals.Cachorros, Animals.Gatos]
              .map<DropdownMenuItem<Animals>>((Animals value) {
            return DropdownMenuItem<Animals>(
              value: value,
              child: Text(value.toString().replaceAll('Animals.', '')),
            );
          }).toList(),
        ));
  }
}
