import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_uyga_vazifa/pages/HomePage.dart';
import 'package:getx_uyga_vazifa/pages/create_page.dart';
import 'package:getx_uyga_vazifa/pages/update_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      home:HomePage(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => CreatePage()),
        GetPage(name: '/third', page: () => UpdatePage()),
         ],
    );
  }
}

