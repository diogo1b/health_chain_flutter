import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthchainflutter/globals.dart' as globals;
import 'package:healthchainflutter/models/Emergency_Info.dart';
import 'package:http/http.dart' as http;

class ParamedicService {
  Future<Emergency_Info> getUserEmergencyInfo(String email) async {

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

  var emergency_info = responseJson['user']['_emergency_info'];
  return Emergency_Info(emergency_info['name'], emergency_info['age'], emergency_info['blood_type'], emergency_info['weight'], emergency_info['height'], emergency_info['e_contact_name'], emergency_info['e_contact_phone'], emergency_info['e_relationship'], emergency_info['this.mecical_condition'], emergency_info['allergies'], emergency_info['hospital']);

  }
}