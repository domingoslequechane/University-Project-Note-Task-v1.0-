import 'package:flutter/foundation.dart';

class AppThemeController extends ChangeNotifier {
  bool darkTheme = false;

  static AppThemeController controller = AppThemeController();

  changeTheme() {
    darkTheme = !darkTheme;
    notifyListeners();
  }
}
