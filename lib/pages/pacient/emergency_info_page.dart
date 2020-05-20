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
      body: Center(
        child: Text('Emergency Info Page'),
      ),
    );
  }

  Widget _addButton() {
    return new FloatingActionButton(
      onPressed: (){
        _updateEmergencyIngo();
      },
      tooltip: 'Add_Funko_List',
      backgroundColor: Colors.deepPurpleAccent,
      child: new Icon(Icons.add),
    );
  }

  _updateEmergencyIngo() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => UpdateEmergencyInfoPage(),
    ));
  }
}