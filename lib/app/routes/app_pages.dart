import 'package:get/get.dart';

import '../modules/add_product/bindings/add_product_binding.dart';
import '../modules/add_product/views/add_product_view.dart';
import '../modules/manage_products/bindings/manage_products_binding.dart';
import '../modules/manage_products/views/manage_products_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MANAGE_PRODUCTS;

  static final routes = [
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => AddProductView(),
      binding: AddProductBinding(),
    ),
    GetPage(
      name: _Paths.MANAGE_PRODUCTS,
      page: () => ManageProductsView(),
      binding: ManageProductsBinding(),
    ),
  ];
}
