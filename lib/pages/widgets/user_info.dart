import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/auth_service.dart';
import 'package:healthchainflutter/globals.dart' as globals;

class UserInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _UserInfoState();
}

class _UserInfoState extends State<UserInfo>{
  @override
  Widget build(BuildContext context){
    return ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Text(
            'Nombre',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
          ),
          Text(
            globals.user.name,
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0
            ),
            child: Text(
              'Correo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
            ),
          ),
          Text(
            globals.user.email,
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0
            ),
            child: Text(
              'Rol de usuario',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
            ),
          ),
          Text(
            globals.user.role,
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
        ],
      );
  }

  _changePass() {
  
  }

  _showAbout() {

  }
}