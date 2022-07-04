import 'package:dev/app/modules/cats/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatsPage extends GetView<CatsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CatsPage')),
        body: SafeArea(child: Text('CatsController')));
  }
}
