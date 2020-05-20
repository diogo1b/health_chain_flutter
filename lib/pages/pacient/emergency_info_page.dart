import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:healthchainflutter/models/Emergency_Info.dart';
import 'package:healthchainflutter/pages/pacient/update_emergency_info.dart';
import 'package:healthchainflutter/services/patient_service.dart';

class EmergencyInfoPage extends StatefulWidget {

  PatientService patientService = PatientService();

  @override
  _EmergencyInfoPageState createState() => _EmergencyInfoPageState();
}

class _EmergencyInfoPageState extends State<EmergencyInfoPage> {

  Emergency_Info emergency_info = Emergency_Info("this.name", "this.age", "this.blood_type", "this.weight", "this.height", "this.e_contact_name", "this.e_contact_phone", "this.e_relationship", "this.mecical_condition", "this.allergies");

  @override
  void initState() {
    super.initState();
    widget.patientService.getEmergencyInfo().then((_emergency_info) {
      setState(() {
        emergency_info = _emergency_info;
      });
    });
  }

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
                Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        )
                      ),
                      TextSpan(
                        text: emergency_info.name,
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Age',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        )
                      ),
                      TextSpan(
                        text: '150',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.only(
                            right:12.0,
                            left: 12.0
                          ),
                          child: Text(''),
                        )
                      ),
                      TextSpan(
                        text: 'Blood type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        )
                      ),
                      TextSpan(
                        text: 'Royal blue',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Weight',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        )
                      ),
                      TextSpan(
                        text: '150 tons',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.only(
                            right:12.0,
                            left: 12.0
                          ),
                          child: Text(''),
                        )
                      ),
                      TextSpan(
                        text: 'Height',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        )
                      ),
                      TextSpan(
                        text: 'High asf boiiiiii',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 16,
                            bottom: 8,
                            right: 8,
                            left: 8
                          ),
                          child: Center(
                            child: Text(
                              'Emergency contact',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(51, 27, 119, 1),
                                fontSize: 18.0
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 16
                            ),
                            child: Text(
                              'Jaime Rodríguez El Bronco',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                fontSize: 18.0
                              )
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: '1122334455',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 18.0
                          ),
                        ),
                        WidgetSpan(
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 25,
                              right: 25,
                              top: 8,
                              bottom: 8
                            ),
                            child: Text(''),
                          )
                        ),
                        TextSpan(
                          text: 'Daddy 😫',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 18.0
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16
                  ),
                  child: Text(
                  'Preferred hospital',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8
                  ),
                  child: Text(
                    'Dr. Simi\'s',
                    style: TextStyle(
                      fontSize: 18.0
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8
                  ),
                  child: Text(
                  'Known medical conditions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8
                  ),
                  child: Text(
                    'Syphilis in the Coronavirus cancer',
                    style: TextStyle(
                      fontSize: 18.0
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8
                  ),
                  child: Text(
                  'Known allergies',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8
                  ),
                  child: Text(
                    'Abstinence',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10
            ),
            child: ButtonTheme(
              minWidth: 220,
              child: RaisedButton(
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                elevation: 5.0,
                color: Color.fromRGBO(104, 202, 184, 1),
                padding: const EdgeInsets.all(8.0),
                onPressed: () {
                  _updateEmergencyIngo();
                },
                child: const Text(
                  'Update emergency information',
                  style: TextStyle(
                    fontSize: 18.0
                  )
                )
              )
            ),
          ),
        ],
      ),
    );
  }
  
  _updateEmergencyIngo() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => UpdateEmergencyInfoPage(),
    ));
  }
}