import 'package:flutter/material.dart';
import 'package:healthchainflutter/models/Emergency_Info.dart';
import 'package:healthchainflutter/services/patient_service.dart';
import 'package:healthchainflutter/services/user_service.dart';

class UpdateEmergencyInfoPage extends StatefulWidget{
  UpdateEmergencyInfoPage(this.emergency_info);

  Emergency_Info emergency_info;
  final PatientService patientService = PatientService();

  @override
  State<StatefulWidget> createState() => new _UpdateEmergencyInfoPageState();
}

class _UpdateEmergencyInfoPageState extends State<UpdateEmergencyInfoPage>{

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name;
  String _age;
  String _blood_type;
  String _weight;
  String _height;
  String _e_contact_name;
  String _e_contact_phone;
  String _e_relationship;
  String _mecical_conditions;
  String _allergies;
  String _hospital;

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
              Column(
                children: <Widget>[
                  _buildName(),
                  _buildAge(),
                  _buildBloodType(),
                  _buildWeight(),
                  _buildHeight(),
                  _buildECName(),
                  _buildECPhone(),
                  _buildECRelationship(),
                  _buildHospital(),
                  _buildMedicalConditions(),
                  _buildAllergies(),
                  SizedBox(height: 15.0),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      'Update Information',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    color:  Color.fromRGBO(104, 202, 184, 1.0),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      print("object");

                      _updateEmergencyInfo();
                    },
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }

  Widget _buildName() {
    return Container (
      padding: EdgeInsets.symmetric(vertical : 0),
      child: TextFormField(
        initialValue: widget.emergency_info.name,
        decoration: InputDecoration(labelText: 'Name'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _name = value;
        },
      ),
    );
  }

  Widget _buildHospital() {
    return Container (
      padding: EdgeInsets.symmetric(vertical : 0),
      child: TextFormField(
        initialValue: widget.emergency_info.hospital,
        decoration: InputDecoration(labelText: 'Preferred Hospital'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Hospital is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _hospital = value;
        },
      ),
    );
  }
  Widget _buildAge() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.age,
        decoration: InputDecoration(labelText: 'Age'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Age is Required';
          }
          if(value.length > 3) {
            return 'Age cannot be of four digits';
          }
          return null;
        },
        onSaved: (String value) {
          _age = value;
        },
      ),
    );
  }

  Widget _buildBloodType() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.blood_type,
        decoration: InputDecoration(labelText: 'Blood Type'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Blood Type is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _blood_type = value;
        },
      ),
    );
  }

  Widget _buildWeight() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.weight,
        decoration: InputDecoration(labelText: 'Weight'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Weight is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _weight = value;
        },
      ),
    );
  }


  Widget _buildHeight() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.height,
        decoration: InputDecoration(labelText: 'Height'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Height is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _height = value;
        },
      ),
    );
  }


  Widget _buildECName() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.e_contact_name,
        decoration: InputDecoration(labelText: 'Emergency Contact Name'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Emergency Contact Name is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _e_contact_name = value;
        },
      ),
    );
  }

  Widget _buildECPhone() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.e_contact_phone,
        decoration: InputDecoration(labelText: 'Emergency Contact Phone'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Emergency Contact Phone is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _e_contact_phone = value;
        },
      ),
    );
  }

  Widget _buildECRelationship() {
    return Container (
      padding:  EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.e_relationship,
        decoration: InputDecoration(labelText: 'Emergency Contact Relationship'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Emergency Contact Relationship is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _e_relationship = value;
        },
      ),
    );
  }

  Widget _buildMedicalConditions() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.mecical_condition,
        maxLines: null,
        decoration: InputDecoration(labelText: 'Medical Conditions'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Medical Condition is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _mecical_conditions = value;
        },
      ),
    );
  }

  Widget _buildAllergies() {
    return Container(
      padding: EdgeInsets.symmetric(vertical : 5),
      child: TextFormField(
        initialValue: widget.emergency_info.allergies,
        maxLines: null,
        decoration: InputDecoration(labelText: 'Allergies'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Allergies is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _allergies = value;
        },
      ),
    );
  }

  _updateEmergencyInfo() {
    widget.patientService.updateEmergencyInfo(_name, _age, _blood_type, _weight, _height, _e_contact_name, _e_contact_phone, _e_relationship, _mecical_conditions, _allergies, _hospital);
    Navigator.pop(context);
  }
}