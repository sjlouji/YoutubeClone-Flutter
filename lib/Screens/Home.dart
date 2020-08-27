import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtubeclone/Screens/Explore.dart';
import 'package:youtubeclone/Screens/HomeScreen.dart';
import 'package:youtubeclone/Screens/Library.dart';
import 'package:youtubeclone/Screens/Notifications.dart';
import 'package:youtubeclone/Screens/Subscriptions.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Youtube Clone'),
    );  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _widgetBody = HomeScreen();
  int _currrentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onItemTapped(int index) async{
    setState(() {
      if(index == 0){
        _currrentIndex = index;
        _widgetBody = HomeScreen();
      }
      else if(index == 1){
        _currrentIndex = index;
        _widgetBody = ExploreScreen();
      }
      else if(index == 2){
        _currrentIndex = index;
        _widgetBody = SubScreen();
      }
      else if(index == 3){
        _currrentIndex = index;
        _widgetBody = NotificationScreen();
      }
      else if(index == 4){
        _currrentIndex = index;
        _widgetBody = LibraryScreen();
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: new SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: SliverAppBar(
                    pinned: false,
                    brightness: Brightness.light,
                    backgroundColor: Colors.white,
                    title: Container(
                      child: Image.asset('assets/yt_logo_rgb_light.png', width: 100,),
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(MdiIcons.video),
                        disabledColor: Colors.grey[700],
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        disabledColor: Colors.grey[700],
                      ),
                      IconButton(
                        icon: Icon(Icons.account_circle),
                        disabledColor: Colors.grey[700],
                      ),
                    ],
                  ),
                )
              ];
            },
            body: _widgetBody,
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currrentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFFF0000),
        unselectedItemColor: Colors.grey[700],
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 23,),
              title: Text("Home", style: TextStyle(fontSize: 11),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, size: 23,),
              title: Text("Explore", style: TextStyle(fontSize: 11),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions, size: 23,),
              title: Text("Subscription", style: TextStyle(fontSize: 11),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 23,),
              title: Text("Notification", style: TextStyle(fontSize: 11),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library, size: 23,),
              title: Text("Library", style: TextStyle(fontSize: 11),)
          ),
        ],
      ),    );
  }
}
