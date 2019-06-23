import 'package:flutter/material.dart';
import 'detail.dart';
import 'textStyle.dart';
import 'events.dart';
import 'favourite.dart';

class EventSummary extends StatefulWidget {
  Event event;
  EventSummary(this.event);
  @override
  _EventSummaryState createState() => _EventSummaryState(event);
}

class _EventSummaryState extends State<EventSummary> {
  var colorOfChoice = Colors.white;
  Favourite fb;
   Event event;
  _EventSummaryState(this.event);

  @override
  Widget build(BuildContext context) {
    
    final eventThumbnail = new Container(
      //color: Colors.black,
      // height: 100,
      // width: 100,
      // decoration: BoxDecoration(
      //   shape: BoxShape.circle,
      //   color: Colors.black,
        
      // ),
      margin: EdgeInsets.symmetric(vertical: 16),
      //alignment: FractionalOffset.centerLeft,
      child: new Hero(
        tag: "event-hero-${event.id}",
        child: new Image(
          image: new AssetImage(event.image),
          height: 92,
          width: 92,
        ),),
    );

  final eventContent = new Container(
    margin: EdgeInsets.fromLTRB(76,16,16,16),
    constraints: new BoxConstraints.expand(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(height: 4.0,),
       Row(
         children: <Widget>[
           new Text(event.name, style: Style.titleTextStyle),
           Padding(padding: EdgeInsets.only(right: 10),),
            IconButton(
              //padding: EdgeInsets.all(20),
             icon: Icon(Icons.favorite,color:colorOfChoice ,),
            
            
             
             onPressed: (){
               setState((){
         
          
           if(colorOfChoice == Colors.white)
           {
                   colorOfChoice = Colors.red;
                    debugPrint("Hello");
                  final snackBar = SnackBar(duration: Duration(milliseconds: 500),
            content: Text('Added to Favourites',),
          );
          Scaffold.of(context).showSnackBar(snackBar);
           }
            else
                   colorOfChoice  = Colors.white;
                          
               
          //      adder(event);
               });
               
             },
           ),
         ],
       ),
        new Container(
       // margin: new EdgeInsets.symmetric(vertical: 0.0),
        height: 2.0,
        width: 18.0,
        color: new Color(0xff00c6ff)
    ),
     
      ],
    ) ,
  );











    final eventCard = new Container(
        child: eventContent,
        height: 125,
        margin: EdgeInsets.only(left: 46.0),
        decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset:  Offset(0.0,10.0)
            )
          ]

        ),
      );











    return GestureDetector(
      onTap: (){
        Navigator.of(context).push( PageRouteBuilder(
          pageBuilder: (_,__,___)=> new DetailPage(event),
          transitionsBuilder: (context,animation,secondaryAnimation,child)=>
          new FadeTransition(opacity: animation,child: child,)
        )
        );
      },

    

      child: new Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),

        child: new Stack(
          children: <Widget>[
            eventCard,
            eventThumbnail,
          ],
        ),
      ),
    );





  }
}