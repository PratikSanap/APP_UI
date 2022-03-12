import 'package:flutter/material.dart';

class SETTINGS extends StatefulWidget {
  const SETTINGS({Key? key}) : super(key: key);

  @override
  _SETTINGSState createState() => _SETTINGSState();
}

class _SETTINGSState extends State<SETTINGS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("TALENTGRAM"),
      ),
    body: Center(
    child: Text("SETTINGS"),
    ),
    );
  }
}

