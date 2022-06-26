import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

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
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
                autoRemove: true,
                init: ProductController(),
                builder: (ProductController productController) {
                  return Column(
                    children: [
                      Text(
                        "name : ${productController.productModel.value.name}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        "price : ${productController.productModel.value.price}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        "offer : ${productController.productModel.value.off}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductController>().productModel.update((val) {
                    val!.name = "خیار";
                    val.price = "25000";
                    val.off = "80%";
                  });
                },
                child: const Text("press")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("back"))
          ],
        ),
      ),
    );
  }
}
