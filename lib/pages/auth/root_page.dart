import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthchainflutter/pages/pacient/home.dart';
import 'package:healthchainflutter/pages/paramedic/home.dart';
import 'package:healthchainflutter/services/auth_service.dart';
import 'package:healthchainflutter/globals.dart' as globals;

import '../doctor/home.dart';
import 'login_signup_page.dart';

class RootPage extends StatefulWidget {

  final AuthService authService = AuthService();

  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus {
  NOT_DETERMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}

class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.NOT_DETERMINED;
  String _userId = "";
  bool _admin = false;

  @override
  void initState() {
    super.initState();
    widget.authService.getCurrentUser().then((user) {
      setState(() {
        if (user != null) {
          _userId = user?.id;
        }
        authStatus =
        user?.id == null ? AuthStatus.NOT_LOGGED_IN : AuthStatus.LOGGED_IN;
      });
    });

    /*
    widget.authService.getCurrentRole().then((role) {
      setState(() {
        if(role == "admin") {
          _admin = true;
        }
      });
    });
     */
  }

  void _onLoggedIn() {
    widget.authService.getCurrentUser().then((user){
      setState(() {
        _userId = user.id.toString();
      });
    });
    setState(() {
      authStatus = AuthStatus.LOGGED_IN;

    });

    /*
    widget.authService.getCurrentRole().then((role) {
      setState(() {
        if(role == "admin") {
          _admin = true;
        }
      });
    });

     */
  }

  void _onSignedOut() {
    setState(() {
      authStatus = AuthStatus.NOT_LOGGED_IN;
      _userId = "";
      _admin = false;
    });
  }

  Widget _buildWaitingScreen() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    switch (authStatus) {
      case AuthStatus.NOT_DETERMINED:
        return _buildWaitingScreen();
        break;
      case AuthStatus.NOT_LOGGED_IN:
        return new LoginSignUpPage(
          onSignedIn: _onLoggedIn,
        );
        break;
      case AuthStatus.LOGGED_IN:
        if (_userId.length > 0 && _userId != null) {
          print(globals.user.name);
          print("Global role");
          print(globals.user.role);
          if(globals.user.role == "user") {
            return new PacientHomePage(
              onSignedOut: _onSignedOut
            );
          }
          if(globals.user.role == "paramedic") {
            return new ParamedicHomePage(
              onSignedOut: _onSignedOut
            );
          }
          if(globals.user.role == "doctor") {
            return new DoctorHomePage(
              onSignedOut: _onSignedOut
            );
          }
        } else return _buildWaitingScreen();
        break;
      default:
        return _buildWaitingScreen();
    }
  }
}