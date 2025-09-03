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
// to store the bool value
   static Future<bool> setBool(String key, bool value) async {
    return await _istance.setBool(key, value);
  }
  //to read the bool value
  static bool? getBool(String key) {
    return _istance.getBool(key);
  }
//to remove it
  static Future<bool> remove(String key) async {
    return await _istance.remove(key);
  }
}
