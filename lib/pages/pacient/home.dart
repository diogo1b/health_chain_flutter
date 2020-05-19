import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/auth_service.dart';

class PacientHomePage extends StatefulWidget {
  PacientHomePage({Key key, this.onSignedOut}) : super(key : key);

  final AuthService authService = AuthService();
  final VoidCallback onSignedOut;

  @override
  _PacientHomePageState createState() => _PacientHomePageState();
}

class _PacientHomePageState extends State<PacientHomePage> {
  int _selectedIndex = 0;

  final _pageOptions = [
    UserInfo(),
    UserInfo(),
    UserInfo(),
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
      body:  _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            title: Text('Emergency Info.'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Appintments'),
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