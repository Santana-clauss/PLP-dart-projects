// navigation_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_todolist/config/constant.dart';
import 'package:flutter_todolist/views/dashboard.dart';


class Navigation_Bar extends StatelessWidget {
  const Navigation_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TaskTrove"),
          backgroundColor: orangeColor,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dashboard), text: 'Dashboard'),
              //Tab(icon: Icon(Icons.timer), text: 'Pomodoro'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            //Dashboard(),
            //PomodoroTimerPage(),
           // SettingsPage(),
          ],
        ),
      ),
    );
  }
}
