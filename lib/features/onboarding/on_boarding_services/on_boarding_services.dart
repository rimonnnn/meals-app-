import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingServices {
  static late SharedPreferences sharedPrefs;
  static const String firstTimeKey = "first_time";

  static Future<void> inithializeSharedPreferencesStorage() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  static bool isFirstTime() {
    bool isFiristTime = sharedPrefs.getBool(firstTimeKey) ?? true;
    return isFiristTime;
  }

  static void setFirstTimeWithFalse() {
    sharedPrefs.setBool(firstTimeKey, false);
  }
}
