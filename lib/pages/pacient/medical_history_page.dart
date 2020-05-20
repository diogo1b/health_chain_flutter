import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicalHistoryPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MedicalHistoryPageState();
}

class _MedicalHistoryPageState extends State<MedicalHistoryPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthchain'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(36, 51, 126, 1.0)
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            Text('medical history')
          ],
        ),
      )
    );
  }
}