import 'package:get/get.dart';
import '../model/product_model.dart';

class ProductGetBuilderUniqeIdController extends GetxController {
  ProductModel productModel =
      ProductModel(name: "پفک", price: "100000", off: "50%");

  setNewProduct(int id) {
    productModel = ProductModel(name: "نوشمک", price: "5000", off: "10%");
    update([id]);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("oninit");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    print("onready");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("onclosed");
  }
}
