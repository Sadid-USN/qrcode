import 'package:flutter/material.dart';
import 'package:qrcode/controller/user_services.dart';
import 'package:qrcode/models/users_model.dart';

class UserProvider extends ChangeNotifier {
  final UserServices _userServices = UserServices();
  bool isLoading = false;
  List<UsersModel> _users = [];
  List<UsersModel> get users => _users;

  Future<void> getUsers() async {
    isLoading = true;

    final response = await _userServices.getUsers();

    _users = response;
    isLoading = false;
    notifyListeners();
  }
}
