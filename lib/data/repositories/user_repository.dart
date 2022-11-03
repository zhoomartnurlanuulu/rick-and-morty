import 'dart:convert';

import 'package:rick_and_morty/data/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepo {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';
  static const myUser = User(
      image: 'assets/images/avatar.png',
      name: 'Rick',
      lastName: 'Sanchez',
      login: 'Ricky');
  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());
    _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
