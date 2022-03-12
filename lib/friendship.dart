import 'dart:html';

import 'package:flutter/material.dart';

class FriendShip extends StatefulWidget {
  const FriendShip({Key? key}) : super(key: key);

  @override
  _FriendShipState createState() => _FriendShipState();
}

class _FriendShipState extends State<FriendShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("TALENTGRAM"),
      ),
      body: Center(
        child: Text("Popularity section"),
      ),
    );
  }
}


