import 'package:example/app/data/services/app_config/service.dart';
import 'package:example/app/modules/home/repository.dart';
import 'package:example/core/values/consts.dart';
import 'package:example/routes/pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    darkMode.value = config!.darkMode();
    super.onInit();
  }

  changeTheme() {
    config!.changeDarkMode(Get.isDarkMode ? false : true);
    darkMode.value = config!.darkMode();
  }

  logout() async {
    await config!.changeIsLogged(false);

    await Get.offAllNamed(Routes.LOGIN);
  }

  getAnimals() async {
    // final _ =
  }

  selectAnimal() {}
}
