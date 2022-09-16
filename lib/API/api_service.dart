import 'dart:convert';

import 'package:http/http.dart' as http;

import 'users_model.dart';

class APIService {
  static var client = http.Client();

  static Future<ListUserModel?> getUsers() async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};
    var url = Uri.https('reqres.in', 'api/users?page=2');

    var response = await client.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return ListUserModel.fromJson(data);
      
    } else {
      return null;
    }
  }
}
