import 'package:flutter/material.dart';
import 'package:youtubeclone/Screens/Home.dart';

void main() {
  runApp(ExploreButton());
}

class ExploreButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ExploreButtonPage();
  }
}

class ExploreButtonPage extends StatefulWidget {
  ExploreButtonPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ExploreButtonState createState() => _ExploreButtonState();
}

class _ExploreButtonState extends State<ExploreButtonPage> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 270,
       child: Column(
         children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                      child: Container(
                          child: Align(
                            alignment: Alignment.center,
                              child: Text('Music', textAlign: TextAlign.center,)
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:NetworkImage("https://images.unsplash.com/photo-1572447136810-aab57df610eb?ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80"),
                                  fit:BoxFit.cover
                              ),
                          )
                      ),onTap:(){
                    print("you clicked my");
                  }
                  )
                ),
              ),
              Expanded(
                child: Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                        child: Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text('Music', textAlign: TextAlign.center,)
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:NetworkImage("https://miro.medium.com/max/1400/1*du6fsJVVxSRZhLvXeTKHKA.png"),
                                  fit:BoxFit.cover
                              ),
                            )
                        ),onTap:(){
                      print("you clicked my");
                    }
                    )
                ),
              ),
            ],
          ),
           Row(
             children: [
               Expanded(
                 child: Container(
                     height: 60,
                     padding: EdgeInsets.all(10),
                     child: GestureDetector(
                         child: Container(
                             child: Align(
                                 alignment: Alignment.center,
                                 child: Text('Music', textAlign: TextAlign.center,)
                             ),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image:NetworkImage("https://miro.medium.com/max/1400/1*du6fsJVVxSRZhLvXeTKHKA.png"),
                                   fit:BoxFit.cover
                               ),
                             )
                         ),onTap:(){
                       print("you clicked my");
                     }
                     )
                 ),
               ),
               Expanded(
                 child: Container(
                     height: 60,
                     padding: EdgeInsets.all(10),
                     child: GestureDetector(
                         child: Container(
                             child: Align(
                                 alignment: Alignment.center,
                                 child: Text('Music', textAlign: TextAlign.center,)
                             ),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image:NetworkImage("https://miro.medium.com/max/1400/1*du6fsJVVxSRZhLvXeTKHKA.png"),
                                   fit:BoxFit.cover
                               ),
                             )
                         ),onTap:(){
                       print("you clicked my");
                     }
                     )
                 ),
               ),
             ],
           ),
           Row(
             children: [
               Expanded(
                 child: Container(
                     height: 60,
                     padding: EdgeInsets.all(10),
                     child: GestureDetector(
                         child: Container(
                             child: Align(
                                 alignment: Alignment.center,
                                 child: Text('Music', textAlign: TextAlign.center,)
                             ),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image:NetworkImage("https://miro.medium.com/max/1400/1*du6fsJVVxSRZhLvXeTKHKA.png"),
                                   fit:BoxFit.cover
                               ),
                             )
                         ),onTap:(){
                       print("you clicked my");
                     }
                     )
                 ),
               ),
               Expanded(
                 child: Container(
                     height: 60,
                     padding: EdgeInsets.all(10),
                     child: GestureDetector(
                         child: Container(
                             child: Align(
                                 alignment: Alignment.center,
                                 child: Text('Music', textAlign: TextAlign.center,)
                             ),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image:NetworkImage("https://miro.medium.com/max/1400/1*du6fsJVVxSRZhLvXeTKHKA.png"),
                                   fit:BoxFit.cover
                               ),
                             )
                         ),onTap:(){
                       print("you clicked my");
                     }
                     )
                 ),
               ),
             ],
           ),
           Row(
             children: [
               Expanded(
                 child: Container(
                     height: 60,
                     padding: EdgeInsets.all(10),
                     child: GestureDetector(
                         child: Container(
                             child: Align(
                                 alignment: Alignment.center,
                                 child: Text('Music', textAlign: TextAlign.center,)
                             ),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image:NetworkImage("https://miro.medium.com/max/1400/1*du6fsJVVxSRZhLvXeTKHKA.png"),
                                   fit:BoxFit.cover
                               ),
                             )
                         ),onTap:(){
                       print("you clicked my");
                     }
                     )
                 ),
               ),
               Expanded(
                 child: Container(
                     height: 60,
                     padding: EdgeInsets.all(10),
                     child: GestureDetector(
                         child: Container(
                             child: Align(
                                 alignment: Alignment.center,
                                 child: Text('Music', textAlign: TextAlign.center,)
                             ),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image:NetworkImage("https://miro.medium.com/max/1400/1*du6fsJVVxSRZhLvXeTKHKA.png"),
                                   fit:BoxFit.cover
                               ),
                             )
                         ),onTap:(){
                       print("you clicked my");
                     }
                     )
                 ),
               ),
             ],
           ),
         ],
       )
      );
  }
}
