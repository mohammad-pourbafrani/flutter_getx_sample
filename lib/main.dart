import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/view/main_screen.dart';
import 'package:flutter_getx_sample/view/product_getbuilder_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductGetBuilderScreen(),
    );
  }
}
