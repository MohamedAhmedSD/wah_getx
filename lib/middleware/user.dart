import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/setteings_services.dart';

class UserPage extends GetView<SettingsServices> {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("User"),
          const SizedBox(
            height: 16,
          ),
          MaterialButton(
            color: Colors.amber,
            onPressed: () {
              // add value with SP
              controller.sharedpref.clear();
              Get.back();
            },
            child: const Text("back"),
          ),
        ],
      ),
    );
  }
}
