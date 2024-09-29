import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  var selectedLocale = Locale('en', 'US').obs;

  @override
  void onInit() {
    super.onInit();
    getLanguage();
  }

  Future<void> changeLanguage(String languageCode, String countryCode) async {
    var locale = Locale(languageCode, countryCode);
    selectedLocale.value = locale;
    Get.updateLocale(locale);
    setLanguage(languageCode, countryCode);
  }

  Future<void> setLanguage(String languageCode, String countryCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', languageCode);
    await prefs.setString('country_code', countryCode);
  }

  Future<void> getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('language_code');
    String? countryCode = prefs.getString('country_code');
    if (languageCode != null && countryCode != null) {
      var locale = Locale(languageCode, countryCode);
      selectedLocale.value = locale;
      Get.updateLocale(locale);
    }
  }
}
