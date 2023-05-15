import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupperMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  bool myvar = true;

  @override
  RouteSettings? redirect(String? route) {
    if (myvar == true) return const RouteSettings(name: "super");
    return null;
  }
}
