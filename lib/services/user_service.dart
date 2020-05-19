import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthchainflutter/globals.dart' as globals;
import 'package:http/http.dart' as http;

class UserService {

  Future<void> updatePass(_password, _newPassword) async {

    print("hoghkogkhogkhogkhkgoh");
    print(_password);
    print(_newPassword);

    var body = json.encode(
        {
          "password": _password,
          'new_password' : _newPassword
        });

    Map<String,String> headers = {
      'Content-type' : 'application/json',
      'Accept': 'application/json',
      'Authorization' : globals.user.token
    };

    print(globals.user.token);

    final response =
    await http.post(globals.API_URL+"/change_password", body: body, headers: headers);
    final responseJson = json.decode(response.body);

    print(responseJson);

    if(responseJson['succes'] == 'true') {
      Fluttertoast.showToast(
          msg: "Password could not be updated",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
    } else {
      Fluttertoast.showToast(
          msg: "Password updated",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
    }
  }
}