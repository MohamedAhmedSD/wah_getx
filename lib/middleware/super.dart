import 'package:flutter/material.dart';
import 'package:flutter_application_1/local/locale_controller.dart';
import 'package:get/get.dart';

import '../services/setteings_services.dart';

// using middleware => to deal with auth for users
// also to solve problem when out after login to keep login when back
// without need to login agin
// by use sharedpref with it

// it need use async on main + WFB
class Super extends GetView<SettingsServices> {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    // call locale controller
    MyLocaleController controllerLocale = Get.find();
    return Scaffold(
      appBar: AppBar(title: const Text("Super")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // add value with SP
                // sharedpref!.setString("id", "1");
                controller.sharedpref.setString("id", "1");
                Get.offNamed("/logout");
              },
              // child: const Text("Login"),
              child: Text("2".tr),
            ),
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // add value with SP
                controller.sharedpref.setString("role", "user");
                Get.toNamed("/user");
              },
              // child: const Text("user login"),
              child: Text("4".tr),
            ),
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // add value with SP
                controller.sharedpref.setString("role", "admin");
                Get.toNamed("/admin");
              },
              child: Text("5".tr),
            ),
            // locale
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                controllerLocale.changLang("ar");
              },
              child: Text("6".tr),
            ),
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                controllerLocale.changLang("en");
              },
              child: Text("7".tr),
            ),
          ],
        ),
      ),
    );
  }
}
