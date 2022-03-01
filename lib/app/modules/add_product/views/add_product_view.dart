import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "HEHE",
      ),
      body: Center(
        child: Text(
          'AddProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
