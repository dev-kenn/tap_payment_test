import 'dart:convert';

import 'package:get/get.dart';
import '../../../services/db_services/database_operations.dart';
import '../../../models/products_model.dart';

class AddProductController extends GetxController {

  final products = Products().obs;
  final dbo = DBO();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  saveProduct(){
    Get.back(result: products.value);

  }

}
