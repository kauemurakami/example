import 'package:dev/app/data/provider/api.dart';

class AuthRepository {
  final MyApi api;

  AuthRepository(this.api);

  login(_) => api.login(_);
}
