import 'dart:convert';

import 'package:qrcode/models/users_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<UsersModel>> usersFuture = getUsers();

//final String baseUrl = 'https://dummyjson.com/users';

  static Future<List<UsersModel>> getUsers() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/users'));

    final body = json.decode(response.body);

    return (body['users'] as List).map((e) => UsersModel.fromJson(e)).toList();
  }
}
