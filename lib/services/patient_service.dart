import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthchainflutter/globals.dart' as globals;
import 'package:healthchainflutter/models/Emergency_Info.dart';
import 'package:http/http.dart' as http;

class PatientService {
  Future<void> updateEmergencyInfo(_name, _age, _blood_type, _weight, _height, _e_contact_name, _e_contact_phone, _e_relationship, _mecical_conditions, _allergies, _hospital) async {
    var body = json.encode(
        {
          "content" : {
            "name" : _name,
            "age" : _age,
            "blood_type" : _blood_type,
            "weight" : _weight,
            "height" : _height,
            "preferred_hospital" : _hospital,
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

    if(responseJson['last_block'] != null) {
      Fluttertoast.showToast(
          msg: "Emergency info updated wait a few minutes...",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
    } else {
      Fluttertoast.showToast(
          msg: "Emergency info could not be updated",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
    }
  }

  Future<Emergency_Info> getEmergencyInfo() async {

    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': globals.user.token
    };

    final response =
    await http.get(
        globals.API_URL + "/user/my_info", headers: headers);
    final responseJson = json.decode(response.body);

    var emergency_info = responseJson['user']['_emergency_info'];
    print(emergency_info);

    return Emergency_Info(emergency_info['name'], emergency_info['age'], emergency_info['blood_type'], emergency_info['weight'], emergency_info['height'], emergency_info['e_contact_name'], emergency_info['e_contact_phone'], emergency_info['e_relationship'], emergency_info['medical_condition'], emergency_info['allergies'], emergency_info['preferred_hospital']);
  }
} 