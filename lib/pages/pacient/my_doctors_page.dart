import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthchainflutter/models/Doctor.dart';
import 'package:healthchainflutter/services/patient_service.dart';

class MyDoctorsPage extends StatefulWidget{

  final PatientService patientService = PatientService();

  @override
  _MyDoctorsPageState createState() => _MyDoctorsPageState();
}

class _MyDoctorsPageState extends State<MyDoctorsPage>{

  List<Doctor> doctors = [];

  @override
  void initState(){
    super.initState();
    widget.patientService.getDoctors().then((data) {
      setState(() {
        doctors = data;
      });
    });
  }

  Widget _doctorTile(String name, bool active){
    return ListTile(
      leading: Text(name),
      trailing: Text('Activo '+active.toString()),
    );
  }

  @override
  Widget build(BuildContext context){
    if(doctors.length > 0){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Healthchain'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(36, 51, 126, 1.0)
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: ListView(
            shrinkWrap: true,
            children: doctors.map((doctor) => _doctorTile(doctor.name, doctor.active)).toList(),
          ),
        )
      );
    }else{
      return Scaffold(
        appBar: AppBar(
          title: const Text('Healthchain'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(36, 51, 126, 1.0)
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Text('Aún no tienes doctores asociados.')
            ],
          ),
        )
      );
    }
  }
}