import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:products/presentation/screen/home/product_model/product_model.dart';

class ProductController extends GetxController {
  ProductModel productModel = ProductModel();
  void getProducts() async {
    var result = await http.get(Uri.parse("https://dummyjson.com/products"));

    if (result.statusCode == 200) {
      productModel = ProductModel.fromJson(jsonDecode(result.body));
      print(productModel.total);
    } else {}
  }

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }
}
