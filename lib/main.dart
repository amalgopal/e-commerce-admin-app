import 'package:flutter/material.dart';
import 'package:foodware_admin/pages/home_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(List<String> args) {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}