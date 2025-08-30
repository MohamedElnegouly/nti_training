import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  //مش هياخد قيمتة دلوقتى هياخد القيمه بعدين Late
  static late SharedPreferences _istance;

  static Future<void> init() async {
    //create init method to create object only one time
    _istance = await SharedPreferences.getInstance();
  }

  static setString(String key, String value) {
    return _istance.setString(key, value);
  }
  static getString(String key) {
    return _istance.getString(key);
  }
}
