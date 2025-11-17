import 'package:flutter/material.dart';
import 'package:products/presentation/screen/home/product_model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productdtls;
  final int index;
  const ProductDetailsScreen({
    super.key,
    required this.productdtls,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Prodect Details Screen"),
        centerTitle: true,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              height: 200,
              width: double.infinity,

              productdtls.products![index].thumbnail ?? "",
            ),

            // product title
            Text(productdtls.products![index].title ?? ""),
            Text(productdtls.products![index].brand ?? ""),

            Text(productdtls.products![index].description ?? ""),
            Text(productdtls.products![index].warrantyInformation ?? ""),
            Image.network(
              height: 150,
              width: 200,
              productdtls.products![index].meta?.qrCode ?? "",
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
