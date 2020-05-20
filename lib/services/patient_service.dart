import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthchainflutter/globals.dart' as globals;
import 'package:http/http.dart' as http;

class PatientService {
  Future<void> updateEmergencyInfo(_name, _age, _blood_type, _weight, _height, _e_contact_name, _e_contact_phone, _e_relationship, _mecical_conditions, _allergies) async {
    var body = json.encode(
        {
          "content" : {
            "name" : _name,
            "age" : _age,
            "blood_type" : _blood_type,
            "weight" : _weight,
            "height" : _height,
            "e_contact_name" : _e_contact_name,
            "e_contact_phone" : _e_contact_phone,
            "e_relationship" : _e_relationship,
            "medical_condition" : _mecical_conditions,
            "allergies" : _allergies
          }
        });

    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': globals.user.token
    };

    final response =
    await http.post(
        globals.API_URL + "/user/emergency_info", body: body, headers: headers);
    final responseJson = json.decode(response.body);

    print(responseJson);
  }
}