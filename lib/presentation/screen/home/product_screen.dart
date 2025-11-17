import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products/presentation/screen/home/product_controller/product_controller.dart';
import 'package:products/presentation/screen/product_details/product_details.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var productController = Get.find<ProductController>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Product Screen"),
        centerTitle: true,
        elevation: 0,
      ),

      body: Column(
        children: [
          // list view view builder
          Expanded(
            child: ListView.builder(
              itemCount: productController.productModel.products?.length ?? 0,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(
                      ProductDetailsScreen(
                        productdtls: productController.productModel,
                        index: index,
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 50,
                          right: 20,
                          child: Image.network(
                            height: 90,
                            width: 90,
                            productController
                                    .productModel
                                    .products![index]
                                    .thumbnail ??
                                "",
                          ),
                        ),

                        Positioned(
                          top: 30,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productController
                                        .productModel
                                        .products![index]
                                        .title ??
                                    "",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                productController
                                        .productModel
                                        .products![index]
                                        .brand ??
                                    "",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                productController
                                        .productModel
                                        .products![index]
                                        .category
                                        ?.toString() ??
                                    "",

                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 20),

                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orangeAccent),
                                  SizedBox(width: 8),
                                  Text(
                                    productController
                                            .productModel
                                            .products![index]
                                            .rating
                                            ?.toString() ??
                                        "",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
