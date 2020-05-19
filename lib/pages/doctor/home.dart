import 'package:flutter/material.dart';
import 'package:healthchainflutter/services/auth_service.dart';
import 'package:healthchainflutter/pages/widgets/user_info.dart';
class DoctorHomePage extends StatefulWidget {
  DoctorHomePage({Key key, this.onSignedOut}) : super(key : key);

  final AuthService authService = AuthService();
  final VoidCallback onSignedOut;

  @override
  _DoctorHomePageState createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
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
      body: Center(
        child: _pageOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
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