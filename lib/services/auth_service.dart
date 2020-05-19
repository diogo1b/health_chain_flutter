import 'dart:convert';
import 'package:healthchainflutter/globals.dart' as globals;
import 'package:healthchainflutter/models/User.dart';
import 'package:http/http.dart' as http;


class AuthService {

  Future<String> signIn(String email, String password) async {

    var body = json.encode(
        {
          "email": email,
          'password' : password
        });

    Map<String,String> headers = {
      'Content-type' : 'application/json',
      'Accept': 'application/json',
    };

    final response =
    await http.post(globals.API_URL+"/login", body: body, headers: headers);
    final responseJson = json.decode(response.body);

    print(responseJson['data']['roles'][0]['name']);

    if(responseJson['succes'] == 'false') {
      return null;
    } else {
      globals.user = User(responseJson['data']['id'].toString(), responseJson['data']['name'], responseJson['data']['email'], responseJson['data']['roles'][0]['name'], responseJson['token']);
      return responseJson['data']['id'].toString();
    }
  }

  Future<String> signUp(String name, String email, String password, String password_confirmation) async {

    var body = json.encode(
        {
          "name" : name,
          "email": email,
          'password' : password,
          'password_confirmation' : password_confirmation
        });

    Map<String,String> headers = {
      'Content-type' : 'application/json',
      'Accept': 'application/json',
    };

    final response =
    await http.post(globals.API_URL+"/register", body: body, headers: headers);
    final responseJson = json.decode(response.body);

    print(responseJson);

    if(responseJson['succes'] == 'false') {
      return null;
    } else {
      return "complete";
    }
  }

  Future<void> signOut() async {
    Map<String,String> headers = {
      'Content-type' : 'application/json',
      'Accept': 'application/json',
      'Authorization' : globals.user.token
    };

    final response = await http.post(globals.API_URL+"/logout", headers: headers);
    final responseJson = json.decode(response.body);
  }

  Future<User> getCurrentUser() async {
   return globals.user;
  }
}