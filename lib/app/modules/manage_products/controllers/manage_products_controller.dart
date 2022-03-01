import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_payment_test/app/models/products_model.dart';
import 'package:tap_payment_test/app/routes/app_pages.dart';
import 'package:tap_payment_test/app/services/log.dart';

import '../../../services/db_services/database_operations.dart';
import '../../../services/db_services/shared_preferences.dart';

class ManageProductsController extends GetxController {

  final themeMode = ThemeMode.system.obs;
  final productList = <Products>[].obs;
  final count = 0.obs;
  final dbo = DBO();

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


  changeTheme() {
    String mode = SP.getData(dataType: DataType.string, key: 'theme') ?? "system";

    switch(mode) {
      case "light":
        mode = "dark";
        themeMode.value = ThemeMode.dark;
        break;
      case "dark":
        mode = "system";
        themeMode.value = ThemeMode.system;
        break;
      default:
        mode = "light";
        themeMode.value = ThemeMode.light;
        break;
    }

    Get.changeThemeMode(themeMode.value);
    SP.storeData(dataType: DataType.string, key: "theme", value: mode);
  }


  updateList(){
    Get.toNamed(Routes.ADD_PRODUCT)?.then((value){
      Products x = value as Products;
      if(x.id != null) {
        int index = productList.value.indexWhere((element) => element.id == x.id);
        if(index > -1) {
          productList.value[index] = x;
          dbo.updateProduct(jsonEncode(x));
        } else {
          productList.value.add(x);
          dbo.addProduct(jsonEncode(x));
        }


      }
    });
  }

  deleteProduct(String id){
    int index = productList.value.indexWhere((element) => element.id == id);
    productList.removeWhere((element) => element.id == id);

  }

}
