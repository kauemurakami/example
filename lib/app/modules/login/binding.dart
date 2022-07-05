import 'package:example/app/data/provider/api.dart';
import 'package:example/app/modules/login/controller.dart';
import 'package:example/app/modules/login/repository.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(LoginRepository(MyApi())));
  }
}
