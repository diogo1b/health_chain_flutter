import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:healthchainflutter/pages/pacient/update_emergency_info.dart';
import 'package:healthchainflutter/services/patient.dart';

class EmergencyInfoPage extends StatefulWidget {

  PatientService patientService = PatientService();

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
                Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Nombre',
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
                        text: 'Jeff El Sucio',
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
                        text: 'Edad',
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
                        text: 'Tipo de sangre',
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
                        text: 'Azul como príncipe',
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
                        text: 'Peso',
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
                        text: '150 toneladas',
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
                        text: 'Altura',
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
                        text: 'Putoscientos mil oschocientos noventa y tres millones cuatrocientos noventa y siete mil trescientos cincuenta y dos yotámetros',
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
                              'Contacto de emergencia',
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
                          text: 'Papi 😫',
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
                  'Hospital de preferencia',
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
                    'El consultorio del Dr. Simi',
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
                  'Condiciones médicas conocidas',
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
                    'Sífilis en el cáncer del coronaviru',
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
                  'Alergias conocidas',
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
                    'La abstinencia',
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
                  'Editar información de emergencia',
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