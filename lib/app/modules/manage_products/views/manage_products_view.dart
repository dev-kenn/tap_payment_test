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
          CustomButton(
            onPressed: (){
              controller.changeTheme();
            },
            child: Obx(()=>Icon(
                controller.themeMode.value == ThemeMode.light ? Icons.light_mode :
                controller.themeMode.value == ThemeMode.dark ? Icons.dark_mode : Icons.brightness_auto
            )),
          )
        ],
      ),
      body: Center(

      ),
    );
  }
}
