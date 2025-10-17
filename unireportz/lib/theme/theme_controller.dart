import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// =======================
/// 🔸 ThemeService Class
/// =======================

class ThemeService {
   final String _key = 'isDarkMode';

  // Saved Theme Mode
   Future<void> savedTheme(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, isDarkMode);
  }

  // Load Theme Mode
   Future<bool> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_key) ?? false; //Default is Light Mode
  }
}

/// =======================
/// 🔸ThemeController Class
/// =======================

class ThemeController extends ChangeNotifier {
  final ThemeService _service = ThemeService();
  late bool _isDarkMode = false;

  bool get isDarkMode {
    return _isDarkMode;
  }

  // Or
  // bool isDarkMode => _isDarkMode;

  ThemeController() {
    _loadTheme();
  }

  void _loadTheme() async{
    _isDarkMode = await _service.loadTheme();
    notifyListeners();
  }
  void toggleTheme() async{
    _isDarkMode = !_isDarkMode;
    _service.savedTheme(_isDarkMode);
    notifyListeners();
  }
}
