import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/setteings_services.dart';
import 'package:get/get.dart';

SettingsServices cx = Get.find();

class MyLocaleController extends GetxController {
  // to save our lang changes
  // Locale initalLang = cx.sharedpref.getString("lang") == "ar"
  //     ? const Locale("ar")
  //     : const Locale("en");
  // make default ar
  // Locale initalLang = cx.sharedpref.getString("lang") == "en"
  //   ? const Locale("en")
  //   : const Locale("ar");
  // make lang of devise default, our that user choose
  Locale initalLang = cx.sharedpref.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(cx.sharedpref.getString("lang")!);

  // make function when press on btn => change lang of my text

  // pass lang code
  void changLang(String languageCode) {
    // make variable from type Locale
    // make instance
    Locale locale = Locale(languageCode);

    // we need save what lang we choose by sp
    cx.sharedpref.setString("lang", languageCode);
    // Get.updateLocale
    Get.updateLocale(locale);
  }
}
