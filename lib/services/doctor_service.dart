import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthchainflutter/globals.dart' as globals;
import 'package:healthchainflutter/models/Patient.dart';
import 'package:http/http.dart' as http;

class DoctorService {
  Future<void> getUserInfo(String email) async {

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
        globals.API_URL + "/doctor/show_user", body: body, headers: headers);
    final responseJson = json.decode(response.body);

    print(responseJson);
  }

  Future<void> updateUser(String content, String email) async {

    var body = json.encode(
        {
          "email": email,
          "content" : json.decode(content)
        });

    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': globals.user.token
    };

    final response =
    await http.post(
        globals.API_URL + "/doctor/show_user", body: body, headers: headers);
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

  Future<List> getPatients() async {
    List<Patient> patient_list = [];

    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': globals.user.token
    };

    final response =
        await http.get(
        globals.API_URL + "/doctor/get_patients", headers: headers);
    final responseJson = json.decode(response.body);

    if(responseJson['succes'] == "false") {
      return patient_list;
    } else {
      var my_patients = responseJson['my_patients'];

      for(var i in my_patients) {
        Patient patient = Patient(i['id'], i['name'], i['email']);
        my_patients.add(patient);
      }
      return patient_list;
    }
  }
}