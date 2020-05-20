import 'package:flutter/material.dart';
import 'package:healthchainflutter/pages/pacient/update_emergency_info.dart';
import 'package:healthchainflutter/services/patient.dart';

class EmergencyInfoPage extends StatefulWidget {

  PatientService patientService = PatientService();

  @override
  _EmergencyInfoPageState createState() => _EmergencyInfoPageState();
}

class _EmergencyInfoPageState extends State<EmergencyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10
            ),
            child: ButtonTheme(
              minWidth: 220,
              child: RaisedButton(
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                elevation: 5.0,
                color: Color.fromRGBO(104, 202, 184, 1),
                padding: const EdgeInsets.all(8.0),
                onPressed: () {
                  _updateEmergencyIngo();
                },
                child: const Text('Editar información de emergencia')
              )
            ),
          ),
        ],
      ),
    );
  }
  
  _updateEmergencyIngo() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => UpdateEmergencyInfoPage(),
    ));
  }
}