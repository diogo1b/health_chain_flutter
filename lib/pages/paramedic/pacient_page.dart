import 'package:flutter/material.dart';
import 'package:healthchainflutter/models/Emergency_Info.dart';
import 'package:healthchainflutter/services/paramedic_service.dart';

class PacientPage extends StatefulWidget {

  final ParamedicService paramedicService = ParamedicService();

  @override
  _PacientPageState createState() => _PacientPageState();
}

class _PacientPageState extends State<PacientPage> {

  Emergency_Info emergency_info = Emergency_Info("this.name", "this.age", "this.blood_type", "this.weight", "this.height", "this.e_contact_name", "this.e_contact_phone", "this.e_relationship", "this.mecical_condition", "this.allergies", "this.hospital");

  @override
  void initState() {
    super.initState();
    widget.paramedicService.getUserEmergencyInfo("diogo5@diogo5.com").then((_emergency_info) {
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
                        text: emergency_info.name != null ? emergency_info.name : 'Empty',
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
                        text: emergency_info.age != null ? emergency_info.age : 'Empty',
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
                        text: emergency_info.blood_type != null ? emergency_info.blood_type : 'Empty',
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
                        text: emergency_info.weight != null ?emergency_info.weight : 'Empty',
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
                        text: emergency_info.height != null ? emergency_info.height : 'Empty',
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
                        text: emergency_info.e_contact_name != null ? emergency_info.e_contact_name : 'Empty',
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
                        text: 'Phone',
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
                        text: emergency_info.e_contact_phone != null ? emergency_info.e_contact_phone : 'Empty',
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
                        text: 'Relationship',
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
                        text: emergency_info.e_relationship != null ? emergency_info.e_relationship : 'Empty',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      ),
                    ],
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
                    emergency_info.hospital != null ? emergency_info.hospital : 'Empty',
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
                    emergency_info.mecical_condition != null ? emergency_info.mecical_condition : 'Empty',
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
                    emergency_info.allergies != null ? emergency_info.allergies : 'Empty',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),
                ),
              ],
            ),
          ),
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