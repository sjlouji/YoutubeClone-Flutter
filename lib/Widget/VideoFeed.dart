import 'package:flutter/material.dart';
import 'package:youtubeclone/Data/HomeData.dart';
import 'package:youtubeclone/Widget/Video.dart';

void main() {
  runApp(VideoScreen());
}

class VideoScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return VideoScreenPage();
  }
}

class VideoScreenPage extends StatefulWidget {
  VideoScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreenPage> {

  @override
  Widget build(BuildContext context) {

    return  Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: homeVideo.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                child: VideoWidget(video: homeVideo[index],),
              );
            }
        ),
      );
  }
}
