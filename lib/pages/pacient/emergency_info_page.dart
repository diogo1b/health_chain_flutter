import 'package:flutter/material.dart';

class EmergencyInfoPage extends StatefulWidget {

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
          ButtonTheme(
            minWidth: 220,
            child: RaisedButton(
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              color: Color.fromRGBO(104, 202, 184, 1),
              padding: const EdgeInsets.all(5.0),
              onPressed: () {
                
              },
              child: const Text('Cambiar contraseña')
            )
          ),
        ],
      ),
    );
  }
}