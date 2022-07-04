import 'package:dev/app/data/provider/api.dart';
import 'package:dev/app/modules/cats/controller.dart';
import 'package:dev/app/modules/cats/repository.dart';
import 'package:get/get.dart';

class CatsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CatsController>(() => CatsController(CatsRepository(MyApi())));
  }
}
