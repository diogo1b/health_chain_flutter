import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/paramedic.dart';

class PacientPage extends StatefulWidget {

  final ParamedicService paramedicService = ParamedicService();

  @override
  _PacientPageState createState() => _PacientPageState();
}

class _PacientPageState extends State<PacientPage> {
  @override
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
          )
        ],
      ),
    );
  }

  Widget _addButton() {
    return new FloatingActionButton(
      onPressed: (){
        _getEmergencyIngo();
      },
      tooltip: 'Add_Funko_List',
      backgroundColor: Colors.deepPurpleAccent,
      child: new Icon(Icons.add),
    );
  }

  _getEmergencyIngo() {
    widget.paramedicService.getUserEmergencyInfo("email");
  }
}