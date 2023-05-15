import 'package:flutter/material.dart';
import 'package:flutter_application_1/local/locale_controller.dart';
import 'package:flutter_application_1/middleware/super.dart';
import 'package:flutter_application_1/middleware/suppermiddleware.dart';
import 'package:flutter_application_1/services/setteings_services.dart';
import 'package:get/get.dart';

import 'local/locale.dart';
import 'middleware/admain.dart';
import 'middleware/m_login.dart';
import 'middleware/m_logout.dart';
import 'middleware/my_middleware.dart';
import 'middleware/user.dart';

//* [rapid review]
//* global call once
// SharedPreferences? sharedpref;

// GetServices
// to handle alot of things when app start

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // use GetServices to call SharedP
  // sharedpref = await SharedPreferences.getInstance();

  // call our services here our error=>  sharedp not found
  await initialServices();
  runApp(const MyApp());
}

// make service function to call what we need when start app

Future initialServices() async {
  // we use putAsync
  // call init function insude our Services class that
  // carry all we need to run it
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // SettingsServices c = Get.find();

  @override
  Widget build(BuildContext context) {
    // put our water tank on upper place on buildings

    // inject locale
    // Get.put(MyLocale());
    // Get.put(MyLocaleController());
    MyLocaleController controllerLang = Get.put(MyLocaleController());

    return GetMaterialApp(
      title: 'Getx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: "/login",
            // it is a list becarfull
            page: () => MLogin(),
            // when we have 2 middlewares
            // prorty it tell us who start first
            middlewares: [MyMiddeware(), SupperMiddleware()]),
        GetPage(name: '/logout', page: () => const MLogout()),
        GetPage(name: '/user', page: () => const UserPage()),
        GetPage(name: '/admin', page: () => const AdminPage()),
        GetPage(name: '/super', page: () => const Super()),
      ],
      initialRoute: "/login",
      // app use device lang, you must call also translation
      // locale: Get.deviceLocale,
      // change it with certain conditions
      locale: controllerLang.initalLang,
      translations: MyLocale(),
    );
  }
}
