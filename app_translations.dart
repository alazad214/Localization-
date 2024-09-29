import 'package:get/get.dart';

import '../../language/ban.dart';
import '../../language/eng.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': eng, 'bn_BD': ban};
}
