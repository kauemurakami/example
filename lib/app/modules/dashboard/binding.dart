import 'package:dev/app/data/provider/api.dart';
import 'package:dev/app/modules/dashboard/controller.dart';
import 'package:dev/app/modules/dashboard/repository.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
        () => DashboardController(DashboardRepository(MyApi())));
  }
}
