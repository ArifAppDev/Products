import 'package:get/get.dart';
import 'package:products/presentation/screen/home/product_screen.dart';

class AppRoutes {
  static const String productscreen = '/productscreen';

  static List<GetPage> routes = [
    GetPage(name: productscreen, page: () => ProductScreen()),
  ];
}
