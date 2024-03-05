import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  // SharedPreferences instance to manage app preferences
  static SharedPreferences? _sharedPreferences;

  // Constructor to initialize SharedPreferences asynchronously
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  // Initialize SharedPreferences and print a message when done
  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  // Clear all preferences data
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  // Set the theme data preference with the specified value
  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  Future<void> setUserName(String value) {
    return _sharedPreferences!.setString('username', value);
  }

  String getUserName() {
    try {
      return _sharedPreferences!.getString('username') ?? '';
    } catch (e) {
      // Handle any exceptions and return a default value
      return '';
    }
  }

  // Get the theme data preference, default to 'primary' if not available
  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData') ?? 'primary';
    } catch (e) {
      // Handle any exceptions and return a default value
      return 'primary';
    }
  }
}
