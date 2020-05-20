import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/doctor.dart';

class PacientsPage extends StatefulWidget {

  final DoctorService doctorService = DoctorService();

  @override
  _PacientsPageState createState() => _PacientsPageState();
}

class _PacientsPageState extends State<PacientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _addButton(),
        body: Center(
          child: Text('Pacients Page'),
        ),
    );
  }

  Widget _addButton() {
    return new FloatingActionButton(
      onPressed: (){
        _getEmergencyIngo();
      },
      tooltip: 'Add_Funko_List',
      backgroundColor: Colors.deepPurpleAccent,
      child: new Icon(Icons.add),
    );
  }

  _getEmergencyIngo() {
    widget.doctorService.getPatients();
  }
}