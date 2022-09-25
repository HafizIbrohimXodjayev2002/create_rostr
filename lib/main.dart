import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:create_rostr/presentation/home/home_page.dart';
import 'package:create_rostr/di/injection_container.dart' as di;
import 'package:create_rostr/presentation/home/home_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Create Rostr",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: const HomePage(),
      initialBinding: HomeBindings(),
    );
  }
}