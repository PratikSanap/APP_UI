import 'dart:html';

import 'package:flutter/material.dart';

class PHOTO extends StatefulWidget {
  const PHOTO({Key? key}) : super(key: key);

  @override
  _PHOTOState createState() => _PHOTOState();
}

class _PHOTOState extends State<PHOTO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("TALENTGRAM"),
      ),
      body: Center(
        child: Text("Image Section"),
      ),
    );
  }
}

