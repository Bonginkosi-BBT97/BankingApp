import 'package:flutter/material.dart';
import 'tab_view_screens/home_tab_view.dart';
import 'tab_view_screens/notification_tab_view.dart';
import 'tab_view_screens/profile_tab_view.dart';

class CoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Banking Demo'),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  HomeTab(),
                  NotificationTab(),
                  ProfileTab(),
                ],
              ),
            ),
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                  text: 'Notifications',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Profile',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


