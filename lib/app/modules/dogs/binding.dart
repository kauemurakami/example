import 'package:dev/app/data/provider/api.dart';
import 'package:dev/app/modules/dogs/controller.dart';
import 'package:dev/app/modules/dogs/repository.dart';
import 'package:get/get.dart';

class DogsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DogsController>(() => DogsController(DogsRepository(MyApi())));
  }
}
