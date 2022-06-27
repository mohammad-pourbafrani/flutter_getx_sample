import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/controller/product_getbuilder_controller.dart';
import 'package:get/get.dart';

class ProductGetBuilderScreen extends StatelessWidget {
  ProductGetBuilderScreen({Key? key}) : super(key: key);

  // var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = Rx(0);
  // var countre = Rx<int>(0);

  //Obx
  //GetX
  //GetBuilder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder(
                init: ProductGetBuilderController(),
                builder: (ProductGetBuilderController productController) {
                  return Column(
                    children: [
                      Text(
                        "name : ${productController.productModel.name}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        "price : ${productController.productModel.price}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        "offer : ${productController.productModel.off}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductGetBuilderController>().setNewProduct();
                },
                child: const Text("press")),
            ElevatedButton(
                onPressed: () {
                  Get.delete<ProductGetBuilderController>();
                },
                child: const Text("delete controller"))
          ],
        ),
      ),
    );
  }
}
