// Translation class from Getx => impl not extends
import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // it back map
        // should be have same number of items
        "ar": {
          "1": "الصفحة الرئيسية",
          "2": "تسجيل الدخول",
          "3": "تسجيل الخروج",
          "4": "مستخدم",
          "5": "مسؤول",
          "6": "عربي",
          "7": "انجليزي",
        },
        "en": {
          "1": "homepage",
          "2": "login",
          "3": "logout",
          "4": "user",
          "5": "admin",
          "6": "arabic",
          "7": "english",
        },
      };
}
