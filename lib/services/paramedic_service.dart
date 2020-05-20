import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthchainflutter/globals.dart' as globals;
import 'package:http/http.dart' as http;

class ParamedicService {
  Future<void> getUserEmergencyInfo(String email) async {

    var body = json.encode(
        {
          "email": email,
        });

    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': globals.user.token
    };

    final response =
    await http.post(
        globals.API_URL + "/paramedic/show_user", body: body, headers: headers);
    final responseJson = json.decode(response.body);

    print(responseJson);
    print(responseJson['user']['_emergency_info']);
  }
}