import 'package:dev/app/modules/dogs/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DogsPage extends GetView<DogsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('DogsPage')),
        body: SafeArea(child: Text('DogsController')));
  }
}
