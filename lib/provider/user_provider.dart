import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String? _userId;
  String? _name;
  String? _email;

  String? get userId => _userId;
  String? get name => _name;
  String? get email => _email;

  void setUser({
    required String userId,
    required String name,
    required String email,
  }) {
    _userId = userId;
    _name = name;
    _email = email;
    notifyListeners();
  }

  void clear() {
    _userId = null;
    _name = null;
    _email = null;
    notifyListeners();
  }
}
