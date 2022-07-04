import 'package:dev/app/modules/cats/repository.dart';
import 'package:get/get.dart';

class CatsController extends GetxController {
  final CatsRepository repository;
  CatsController(this.repository);
}
