import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/language/language_controller.dart';

class TranslateScreen extends StatelessWidget {
  final languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select_language'.tr),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('hello'.tr),
          Text('welcome'.tr),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              languageController.changeLanguage('bn', 'BD');
            },
            child: Text('বাংলা'),
          ),
          ElevatedButton(
            onPressed: () {
              languageController.changeLanguage('en', 'US');
            },
            child: Text('English'),
          ),
        ],
      ),
    );
  }
}
