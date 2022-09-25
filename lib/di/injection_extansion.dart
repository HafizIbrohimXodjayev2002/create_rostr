import 'package:create_rostr/di/injection_container.dart';

T inject<T extends Object>() {
  return getIt.get<T>();
}