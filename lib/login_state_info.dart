import 'package:flutter/cupertino.dart';

class LoginStateInfo extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggIn => _isLoggedIn;

  void login() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
