import 'package:flutter/material.dart';
import 'package:youtubeclone/Screens/Home.dart';

void main() {
  runApp(LibraryScreen());
}

class LibraryScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LibraryScreenPage();
  }
}

class LibraryScreenPage extends StatefulWidget {
  LibraryScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreenPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
