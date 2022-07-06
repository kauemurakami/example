import 'package:example/app/modules/animal_details/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimalDetailsPage extends GetView<AnimalDetailsController> {
  const AnimalDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Hero(tag: 'image', child: Image.network(controller.animal.value.url!)),
        Text('AnimalDetailsController'),
      ],
    )));
  }
}
