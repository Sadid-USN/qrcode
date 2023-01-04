import 'dart:convert';

import 'package:qrcode/models/users_model.dart';
import 'package:http/http.dart' as http;

class UserServices {
  Future<List<UsersModel>> getUsers() async {
    const url = 'https://dummyjson.com/users';

    final uri = Uri.parse(url);
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        return (json['users'] as List)
            .map((e) => UsersModel.fromJson(e))
            .toList();
      }
    } catch (e) {
      // Handle the error
      print(e);
    }
    return [];
  }
}
