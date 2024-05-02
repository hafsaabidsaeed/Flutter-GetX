import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CtrlTheme extends GetxController{
  var isLightTheme = false;

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  saveThemeStatus() async {
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', isLightTheme);
  }

  getThemeStatus() async {
    var isLight = _prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
    });
    isLightTheme = await isLight as bool;
    Get.changeThemeMode(isLightTheme ? ThemeMode.light : ThemeMode.dark);
  }

  @override
  void onInit () {
    saveThemeStatus();
    super.onInit();
  }
  
}