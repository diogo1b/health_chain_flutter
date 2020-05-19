import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('HealthChain'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(36, 51, 126, 1.0),
      ),
    );
  }
}