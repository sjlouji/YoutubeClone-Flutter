import 'package:flutter/material.dart';
import 'package:youtubeclone/Screens/Home.dart';

void main() {
  runApp(SubScreen());
}

class SubScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SubScreenPage();
  }
}

class SubScreenPage extends StatefulWidget {
  SubScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SubScreenPageState createState() => _SubScreenPageState();
}

class _SubScreenPageState extends State<SubScreenPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text('Subscription Screen'),
      ),
    );
  }
}
