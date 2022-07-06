import 'package:example/app/data/models/animals.dart';
import 'package:example/app/data/models/breed_animal.dart';
import 'package:example/app/modules/animal_details/repository.dart';
import 'package:example/core/utils/functions/verify_response.dart';
import 'package:get/get.dart';

class AnimalDetailsController extends GetxController {
  final AnimalDetailsRepository repository;
  AnimalDetailsController(this.repository);
  final animal = Animals().obs;
  final breeds = BreedAnimal().obs;
  @override
  void onInit() {
    animal.value = Get.arguments;
    super.onInit();
  }
}
