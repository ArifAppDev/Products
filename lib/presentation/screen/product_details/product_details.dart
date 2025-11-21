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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              height: 200,
              width: double.infinity,

              productdtls.products![index].thumbnail ?? "",
            ),

            // product title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productdtls.products![index].title ?? "",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  productdtls.products![index].brand ?? "",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(productdtls.products![index].description ?? ""),
            ),

            SizedBox(height: 50),
            Text(productdtls.products![index].warrantyInformation ?? ""),
            SizedBox(height: 50),
            Center(
              child: Image.network(
                height: 150,
                width: 200,
                productdtls.products![index].meta?.qrCode ?? "",
              ),
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
