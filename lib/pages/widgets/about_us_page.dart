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
        backgroundColor: Color.fromRGBO(36, 51, 126, 1.0)
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(15.0),
                children: <Widget>[
                  Image.asset(
                    'assets/images/healthchainlogo.png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50
                    ),
                    child: Text(
                      'This application was developed by Monterrey Institute of Technology students for the Integrative Project for Business Solutions Development subject, taught by PhD. Rafael Lozano Espinosa.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50
                    ),
                    child: Text(
                      'David Gómez',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10
                    ),
                    child: Text(
                      'Diogo Burnay',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center
                    ),
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}