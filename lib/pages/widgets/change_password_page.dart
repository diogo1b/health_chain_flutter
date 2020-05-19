import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/user_service.dart';

class ChangePasswordPage extends StatefulWidget{
  final UserService userService = UserService();

  @override
  State<StatefulWidget> createState() => new _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage>{

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _password;
  String _newPasword;
  String _newPasswordConfirmation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HealthChain'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(36, 51, 126, 1.0),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              _buildCurrentPassword(),
              _buildNewPassword(),
              _buildNewPasswordConfirmation(),
              SizedBox(height: 15.0),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  'Change Password',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                color:  Color.fromRGBO(104, 202, 184, 1.0),
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }
                  _formKey.currentState.save();
                  _updatePassword();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Current Password'),
      maxLength: 30,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Passwrod is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildNewPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'New Password'),
      maxLength: 30,
      validator: (String value) {
        if (value.isEmpty) {
          return 'New Passwrod is Required';
        }
        if (value.length < 7 ){
          return 'Passwrod most have than 6 characters';
        }
        return null;
      },
      onSaved: (String value) {
        _newPasword = value;
      },
    );
  }

  Widget _buildNewPasswordConfirmation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'New Password Confirmation'),
      maxLength: 30,
      validator: (String value) {
        if (value.isEmpty) {
          return 'New Password Confirmation is Required';
        }
        if (value.length < 7 ){
          return 'Passwrod most have than 6 characters';
        }
        if(value != _newPasword) {
          return 'Password confirmation most match new password';
        }
        return null;
      },
      onSaved: (String value) {
        _newPasswordConfirmation = value;
      },
    );
  }

  _updatePassword() {
    widget.userService.updatePass(_password, _newPasword);
    Navigator.pop(context);
  }
}