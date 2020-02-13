import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pagethree extends StatefulWidget {
  @override
  _PagethreeState createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: Colors.greenAccent,
        width: MediaQuery.of(context).size.width,
        height: 300.0,
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: <Widget>[
            Center(
              child: Text(
                "환경설정",
                style: TextStyle(color: Colors.indigo, fontSize: 32.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

