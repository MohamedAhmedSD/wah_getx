import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/setteings_services.dart';
import 'package:get/get.dart';

// using middleware => to deal with auth for users
// also to solve problem when out after login to keep login when back
// without need to login agin
// by use sharedpref with it

// it need use async on main + WFB
// class MLogin extends StatelessWidget {
class MLogin extends StatelessWidget {
  MLogin({super.key});
  SettingsServices c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // call locale by its string key.tr
      appBar: AppBar(title: Text("1".tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // add value with SP
                // sharedpref!.setString("id", "1");

                c.sharedpref.setString("id", "1");
                Get.offNamed("/logout");
              },
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // add value with SP
                c.sharedpref.setString("role", "user");
                Get.toNamed("/user");
              },
              child: const Text("user login"),
            ),
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // add value with SP
                c.sharedpref.setString("role", "admin");
                Get.toNamed("/admin");
              },
              child: const Text("admin login"),
            ),
          ],
        ),
      ),
    );
  }
}
