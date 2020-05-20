import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthchainflutter/pages/widgets/about_us_page.dart';
import 'package:healthchainflutter/pages/widgets/change_password_page.dart';
import 'package:healthchainflutter/globals.dart' as globals;

class UserInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _UserInfoState();
}

class _UserInfoState extends State<UserInfo>{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
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
          ),
        ),
        ButtonTheme(
          minWidth: 220,
          child: RaisedButton(
            textColor: Colors.white,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            elevation: 5.0,
            color: Color.fromRGBO(104, 202, 184, 1),
            padding: const EdgeInsets.all(5.0),
            onPressed: () {
              _changePass();
            },
            child: const Text('Cambiar contraseña')
          )
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10
          ),
          child: ButtonTheme(
            minWidth: 220,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              elevation: 5.0,
              textColor: Colors.white,
              color: Color.fromRGBO(180, 180, 180, 1),
              padding: const EdgeInsets.all(5.0),
              onPressed: () {
                _showAbout();
              },
              child: const Text('Acerca de HealthChain')
            )
          ),
        )
      ],
    );
  }

  _changePass() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => ChangePasswordPage(),
    ));
  }

  _showAbout() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => AboutUsPage(),
    ));
  }
}