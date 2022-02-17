import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_k_p_firebase/app/controllers/auth_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => authC.logout(), icon: Icon(Icons.logout))
        ],
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
