import 'package:example/app/data/enum/animals.dart';
import 'package:example/app/data/services/app_config/service.dart';
import 'package:example/app/modules/home/repository.dart';
import 'package:example/core/utils/functions/verify_response.dart';
import 'package:example/core/values/consts.dart';
import 'package:example/routes/pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repository;
  HomeController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;
  final type = Animals.Todos.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    darkMode.value = config!.darkMode();
    getAnimals();
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
    final _ = await repository.getAll();
    if (verifyresponse(_)) {
      change(_, status: RxStatus.error(_.message));
      return Get.snackbar('Erro', _.message);
    } else {
      change(_, status: RxStatus.success());
    }
  }

  selectAnimal(_) {
    type.value = _;
    getAnimals();
  }
}
