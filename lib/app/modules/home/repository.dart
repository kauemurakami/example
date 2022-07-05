import 'package:example/app/data/provider/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);

  getCats() => api.getCats();
  getDogs() => api.getDogs();
  getAll() => api.getAll();
}
