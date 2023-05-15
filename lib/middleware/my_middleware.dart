import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/setteings_services.dart';
import 'package:get/get.dart';

import '../../main.dart';

// AuthMiddleWare
class MyMiddeware extends GetMiddleware {
  SettingsServices cx = Get.find();
  // priority 2 less than 1 as VIP
  @override
  // int? get priority => super.priority;
  int? get priority => 2;
  // priority =2;

  // we use function to help us on auth

  @override
  RouteSettings? redirect(String? route) {
    // get => bring data, that saved ounder key == id
    // if not null go to this page => logout
    //if no
    // if (sharedpref!.getString("id") != null) {

    if (cx.sharedpref.getString("id") != null) {
      return const RouteSettings(name: "/logout");
    }
    // if (sharedpref!.getString("id") != null) return const RouteSettings(name: "/logout");

    // error => sharedp must take ! => after it
    if (cx.sharedpref.getString("role") == "user") {
      return const RouteSettings(name: "/user");
    }
    if (cx.sharedpref.getString("role") == "admin") {
      return const RouteSettings(name: "/admin");
    }
    return null;
  }
}

// when I use both id && role in same page if id true not look to others