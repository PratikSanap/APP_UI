import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_page_project/settings.dart';

import 'image.dart';
import 'friendship.dart';
import 'settings.dart';
import 'video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab =0;
  final List screens = [
    PHOTO(),
    FriendShip(),
    Video(),
    SETTINGS(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = PHOTO();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageStorage(
      child: currentScreen,
      bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        elevation: 30.0,
        shape: CircularNotchedRectangle(),
        notchMargin:50,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 130,
                    onPressed: (){
                    setState(() {
                    currentScreen = PHOTO();
                    currentTab=0;
                    });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                         Icons.image,
                         color: currentTab == 0 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          'IMAGE',
                          style: TextStyle(
                           color: currentTab == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 130,
                    onPressed: (){
                      setState(() {
                        currentScreen = FriendShip();
                        currentTab=1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          'chat ',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 130,
                    onPressed: (){
                      setState(() {
                        currentScreen = Video();
                        currentTab=2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.video_library_rounded,
                          color: currentTab == 2 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          'Video',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 130,
                    onPressed: (){
                      setState(() {
                        currentScreen = SETTINGS();
                        currentTab=3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTab == 3 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}
