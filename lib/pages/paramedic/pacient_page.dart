import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/paramedic.dart';

class PacientPage extends StatefulWidget {

  final ParamedicService paramedicService = ParamedicService();

  @override
  _PacientPageState createState() => _PacientPageState();
}

class _PacientPageState extends State<PacientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _addButton(),
      body: Center(
          child: Text('Pacient Page'),
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
    widget.paramedicService.getUserEmergencyInfo("email");
  }
}