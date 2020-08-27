import 'package:flutter/material.dart';
import 'package:youtubeclone/Screens/Home.dart';
import 'package:youtubeclone/Widget/Video.dart';
import 'package:youtubeclone/Widget/VideoFeed.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return HomeScreenPage();
  }
}

class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: VideoScreen(),
        ),
      ),
    );
  }
}
