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
    return Text('hola');
  }
}