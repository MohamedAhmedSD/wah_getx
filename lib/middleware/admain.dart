import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/setteings_services.dart';

class AdminPage extends GetView<SettingsServices> {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Admin"),
          const SizedBox(
            height: 16,
          ),
          MaterialButton(
            color: Colors.amber,
            onPressed: () {
              // add value with SP

              Get.back();
            },
            child: const Text("back"),
          ),
        ],
      ),
    );
  }
}
