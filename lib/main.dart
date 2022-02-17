import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:m_k_p_firebase/app/controllers/auth_controller.dart';
import 'package:m_k_p_firebase/app/modules/home/views/home_view.dart';
import 'package:m_k_p_firebase/app/modules/login/views/login_view.dart';
import 'package:m_k_p_firebase/app/utils/loading.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot.data);
          return GetMaterialApp(
            title: "Application",
            initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
            //home: snapshot.data != null ? HomeView() : LoginView(),
          );
        }
        return LoadingView();
      },
    );
  }
}
