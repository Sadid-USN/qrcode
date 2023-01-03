import 'dart:convert';

import 'package:qrcode/models/users_model.dart';
import 'package:http/http.dart' as http;

class UserServices {
//final String baseUrl = 'https://dummyjson.com/users';
//static Future<List<UsersModel>> usersFuture = getUsers();

  // Future<List<UsersModel>> getUsers() async {

  //   final response = await http.get(Uri.parse('https://dummyjson.com/users'));

  //   final body = json.decode(response.body);

  //   return (body['users'] as List).map((e) => UsersModel.fromJson(e)).toList();
  // }
  Future<List<UsersModel>> getUsers() async {
    const url = 'https://dummyjson.com/users';

    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return (json['users'] as List)
          .map((e) => UsersModel.fromJson(e))
          .toList();
    }
    return [];
  }
}
