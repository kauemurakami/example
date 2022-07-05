import 'package:example/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListAnimalsWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 4.5,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0),
            // itemCount: myProducts.length,
            itemCount: controller.state.length,
            itemBuilder: (BuildContext ctx, _) => Container(
                  child: Column(
                    children: [
                      Image.network(
                        controller.state[_].url,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                )));
  }
}
