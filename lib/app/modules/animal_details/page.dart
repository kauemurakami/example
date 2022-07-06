import 'package:example/app/modules/animal_details/controller.dart';
import 'package:example/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class AnimalDetailsPage extends GetView<AnimalDetailsController> {
  const AnimalDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
            child: Column(
          children: [
            Flexible(
                child: PhotoView(
                    backgroundDecoration: BoxDecoration(color: bg_color),
                    imageProvider: NetworkImage(controller.animal.value.url!))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('#ID ${controller.animal.value.id}'),
                  const Text('Zoomable image'),
                ],
              ),
            ),
          ],
        )),
        Positioned(
            child: IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.close)))
      ],
    ));
  }
}
