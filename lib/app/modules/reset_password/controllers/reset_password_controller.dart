import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController {
  TextEditingController emailC = TextEditingController(text: "");

  @override
  void onClose() {
    emailC.dispose();
    super.onClose();
  }
}
