import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_payment_test/app/services/log.dart';

import '../../../services/db_services/shared_preferences.dart';

class ManageProductsController extends GetxController {

  final themeMode = ThemeMode.system.obs;

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


}
