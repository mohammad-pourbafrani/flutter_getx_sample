import 'package:get/get.dart';
import '../model/product_model.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: "پفک", price: "100000", off: "50%").obs;
}
