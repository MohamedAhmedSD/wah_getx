// it like controller, but use on start your app not for logic
// it save your data after out
// we use Get.find() => to call them on certain place as
// SettingsServices c = Get.find();
// or ::::::::::::
// change your widget status from stl or stf into => GetVie<SettingsServices>
// so reach to information without need to access by once as => c,,,,
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {  // extends not impl
  // instead ? we use late
  late SharedPreferences sharedpref;

  // make future function its generic
  // our services class
  Future<SettingsServices> init() async {
    // start services
    sharedpref = await SharedPreferences.getInstance();
    // call counter value when start app
    // from sharedP
    counter.value = sharedpref.getInt("counter") ?? 0;

    // end service
    return this; // this line solve nun-nullable eror
  }

  RxInt counter = 0.obs;

  // when change what inside counter, it will be saved inside sharedPrefs
  increase() {
    counter.value++;
    sharedpref.setInt("counter", counter.value);
  }
}
