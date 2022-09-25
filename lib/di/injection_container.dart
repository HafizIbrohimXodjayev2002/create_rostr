import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:create_rostr/data/local_source/local_source.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  await registerMySingletons();

  await getIt.allReady();
}

Future<void> registerMySingletons() async {
  final prefes = await SharedPreferences.getInstance();
  getIt.registerSingleton(LocalSource(prefes));
}