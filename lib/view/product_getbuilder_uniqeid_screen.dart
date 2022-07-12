import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_getbuilder_controller.dart';
import 'package:flutter_getx_sample/controller/product_getbuilder_uniqeid_controller.dart';
import 'package:get/get.dart';

class ProductGetBuilderUniqeIdScreen extends StatelessWidget {
  ProductGetBuilderUniqeIdScreen({Key? key}) : super(key: key);

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
      backgroundColor: Colors.white,
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: ((BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: GestureDetector(
                  onTap: (() {
                    Get.find<ProductGetBuilderUniqeIdController>()
                        .setNewProduct(index);
                  }),
                  child: GetBuilder(
                      id: index,
                      init: ProductGetBuilderUniqeIdController(),
                      builder: (ProductGetBuilderUniqeIdController
                          productController) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
