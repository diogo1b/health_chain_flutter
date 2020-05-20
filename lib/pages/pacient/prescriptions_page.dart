import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrescriptionsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _PrescriptionsPageState();
}

class _PrescriptionsPageState extends State<PrescriptionsPage>{
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
            Text('prescriptions')
          ],
        ),
      )
    );
  }
}