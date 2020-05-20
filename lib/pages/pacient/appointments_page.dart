import 'package:flutter/material.dart';
import 'package:healthchainflutter/pages/pacient/my_doctors_page.dart';
import 'package:healthchainflutter/pages/pacient/medical_history_page.dart';
import 'package:healthchainflutter/pages/pacient/prescriptions_page.dart';

class AppointmentsPage extends StatefulWidget {

  @override
  _AppointmentsPageState createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      color: Color.fromRGBO(104, 202, 184, 1),
                      padding: const EdgeInsets.all(8.0),
                      onPressed: () {
                        _showPrescriptionsPage();
                      },
                      child: const Text(
                        'Prescriptions',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      )
                    )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      color: Color.fromRGBO(104, 202, 184, 1),
                      padding: const EdgeInsets.all(8.0),
                      onPressed: () {
                        _showMedicalHistoryPage();
                      },
                      child: const Text(
                        'Medical History',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      )
                    )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      color: Color.fromRGBO(104, 202, 184, 1),
                      padding: const EdgeInsets.all(8.0),
                      onPressed: () {
                        _showMyDoctorsPage();
                      },
                      child: const Text(
                        'My Doctors',
                        style: TextStyle(
                          fontSize: 18.0
                        )
                      )
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showPrescriptionsPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => PrescriptionsPage(),
    ));
  }

  _showMedicalHistoryPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => MedicalHistoryPage(),
    ));
  }

  _showMyDoctorsPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (BuildContext context) => MyDoctorsPage(),
    ));
  }
}