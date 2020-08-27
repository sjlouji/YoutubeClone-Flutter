import 'package:flutter/material.dart';
import 'package:youtubeclone/Screens/Home.dart';

void main() {
  runApp(NotificationScreen());
}

class NotificationScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NotificationScreenPage();
  }
}

class NotificationScreenPage extends StatefulWidget {
  NotificationScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreenPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text('Notification Screen'),
      ),
    );
  }
}
