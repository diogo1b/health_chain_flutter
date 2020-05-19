import 'package:flutter/material.dart';
import 'globals.dart' as globals;
import 'pages/auth/root_page.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: new RootPage(),
    );
  }
}
