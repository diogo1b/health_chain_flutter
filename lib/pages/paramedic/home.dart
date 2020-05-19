import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/auth_service.dart';

class ParamedicHomePage extends StatefulWidget {
  ParamedicHomePage({Key key, this.onSignedOut}) : super(key : key);

  final AuthService authService = AuthService();
  final VoidCallback onSignedOut;


  @override
  _ParamedicHomePageState createState() => _ParamedicHomePageState();
}

class _ParamedicHomePageState extends State<ParamedicHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Pacient',
      style: optionStyle,
    ),
    Text(
      'Index 1: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HealthChain'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(36, 51, 126, 1.0),
        actions: <Widget>[
          new FlatButton(
            child: new Icon(Icons.exit_to_app, color: Colors.white),
            onPressed: _signOut,
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            title: Text('Pacient'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(36, 51, 126, 1.0),
        onTap: _onItemTapped,
      ),
    );
  }

  _signOut() async {
    try {
      await widget.authService.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }
}