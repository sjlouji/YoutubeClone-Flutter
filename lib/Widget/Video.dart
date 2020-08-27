import 'package:flutter/material.dart';
import 'package:youtubeclone/Model/Video.dart';
import 'package:youtubeclone/Screens/Home.dart';

void main() {
  runApp(VideoWidget());
}

class VideoWidget extends StatelessWidget {

  Video video;
  VideoWidget({Key key, this.video}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(video.thmupNail);
    return VideoWidgetPage(video: video,);
  }
}

class VideoWidgetPage extends StatefulWidget {
  VideoWidgetPage({Key key, this.title, this.video}) : super(key: key);

  final String title;
  Video video;

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.video.thmupNail),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10, right: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                  ),
                  child: Text(
                    "10:30",
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 5, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: <Widget> [
                      Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image(
                              image: NetworkImage(widget.video.chanel_image_url),
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container()
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.video.videoTitle, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17, fontFamily: "Helvetica"),),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text(widget.video.chanel_name, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11, fontFamily: "Helvetica", color: Colors.grey[700]),),
                                  Text(" ∙ ", ),
                                  Text(widget.video.viewCount + " views",style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11, fontFamily: "Helvetica",color: Colors.grey[700]),),
                                  Text(" ∙ ", ),
                                  Text(widget.video.timeAgo+ " ago",style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11, fontFamily: "Helvetica",color: Colors.grey[700]),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.more_vert, color: Colors.grey,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
