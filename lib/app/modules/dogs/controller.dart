import 'package:dev/app/modules/dogs/repository.dart';
import 'package:get/get.dart';

class DogsController extends GetxController {
  final DogsRepository repository;
  DogsController(this.repository);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
