import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tap_payment_test/app/widgets/custom_app_bar/custom_app_bar.dart';

import '../../../widgets/custom_button/custom_button.dart';
import '../controllers/manage_products_controller.dart';

class ManageProductsView extends GetView<ManageProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "HAsadkfl",
        actions: [
          ObxValue((data) => Switch(
              value: _isLightTheme.value,
              onChanged: (val) {
                _isLightTheme.value = val;
                Get.changeThemeMode(
                  _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
                );
                _saveThemeStatus();
              },
            ),
            false.obs,
          )
        ],
      ),
      body: Center(
        child: Text(
          'ManageProductsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
