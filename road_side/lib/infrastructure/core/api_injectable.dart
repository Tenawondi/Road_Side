import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@module
abstract class ApiInjectableModule {
  // @lazySingleton
  // String get _baseUrl => 'api/auth';

  @lazySingleton
  http.Client get client => http.Client();
}
