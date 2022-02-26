import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';
import 'package:m_k_p_firebase/app/controllers/auth_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final emailC = TextEditingController(text: "");
  final authC = Get.find<AuthController>();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ReserPasswordView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              TextField(
                  controller: emailC,
                  decoration: InputDecoration(labelText: "Email")),
              ElevatedButton(
                  onPressed: () => authC.resetPassword(emailC.text),
                  child: Text("Reset")),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sudah punya akun?"),
                  TextButton(onPressed: () => Get.back(), child: Text("Login"))
                ],
              )
            ],
          ),
        ));
  }
}
