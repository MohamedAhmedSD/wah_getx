import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/setteings_services.dart';
import 'package:get/get.dart';

class MLogout extends GetView<SettingsServices> {
  const MLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                // delete all data
                // sharedpref!.clear();

                // GetView have controller
                controller.sharedpref.clear();
                Get.offNamed("/login");
              },
              color: Colors.red,
              // child: const Text("logout"),
              child: Text("3".tr),
            ),
            const SizedBox(
              height: 16,
            ),
            // you need <write its generic type>
            GetX<SettingsServices>(
              builder: (c) => Center(
                child: Text("${c.counter.value}"),
              ),
            ),
            MaterialButton(
              onPressed: () {
                controller.increase();
              },
              child: const Text("Counter increas"),
            ),
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              onPressed: () {
                controller.sharedpref.clear();
              },
              child: const Text("clear "),
            )
          ],
        ),
      ),
    );
  }
}
