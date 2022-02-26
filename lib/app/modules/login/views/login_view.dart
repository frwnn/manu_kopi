import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_k_p_firebase/app/controllers/auth_controller.dart';
import 'package:m_k_p_firebase/app/routes/app_pages.dart';

class LoginView extends GetView<AuthController> {
  final emailC = TextEditingController(text: "greensand.up@gmail.com");
  final passC = TextEditingController(text: "112233");

  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LoginView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              TextField(
                  controller: emailC,
                  decoration: InputDecoration(labelText: "Email")),
              TextField(
                  controller: passC,
                  decoration: InputDecoration(labelText: "Password")),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Lupa Password?"),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.RESET_PASSWORD),
                      child: Text("Reset Password"))
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () => authC.login(emailC.text, passC.text),
                  child: Text("Login")),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum punya akun?"),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.SIGNUP),
                      child: Text("Daftar Sekarang"))
                ],
              )
            ],
          ),
        ));
  }
}
