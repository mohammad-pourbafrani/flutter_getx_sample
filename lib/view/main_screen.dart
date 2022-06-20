import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = Rx(0);
  // var countre = Rx<int>(0);

  //Obx
  //GetX
  //GetBuilder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return Text(
                "counter : $counter",
                style: const TextStyle(fontSize: 30),
              );
            })),
            ElevatedButton(
                onPressed: () {
                  counter = counter + 1;
                },
                child: const Text("press"))
          ],
        ),
      ),
    );
  }
}
