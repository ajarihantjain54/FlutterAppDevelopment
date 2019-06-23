import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../schedule/events.dart';



class List1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Icon(Icons.help),
          new Icon(Icons.help),
          new Icon(Icons.help),

        ],
      ),
      
    );
  }
}



class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(left: 10, right:10),
      //padding: new EdgeInsets.all(),
      
      decoration: BoxDecoration(
        //shape: BoxShape.circle,
        borderRadius: new BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [new BoxShadow(
          color: Colors.grey,
          blurRadius: 2
          
         // blurRadius: 4,
         // spreadRadius: 5

        )]

       ),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: events[0].image,
            image_caption:  events[0].name,
          ),

          Category(
            image_location: events[1].image,
            image_caption:  events[1].name,
          ),

          Category(
             image_location: events[2].image,
            image_caption:  events[2].name,
          ),

          Category(
            image_location: events[3].image,
            image_caption:  events[3].name,
          ),

          Category(
             image_location: events[4].image,
            image_caption:  events[4].name,
          ),

          
          Category(
             image_location: events[5].image,
            image_caption:  events[5].name,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          height: 200,
          child: Column(
            children: <Widget>[
              Image.asset(image_location,
              width: 100,height: 80,),
              Padding(padding: EdgeInsets.only(left: 15),),
                  Text(image_caption,
                     style: TextStyle(fontSize: 12,color:Colors.black),
                     )
            ],
          ),
          // child: ListTile(
          //   title: Image.asset(
          //     image_location,
          //     width: 100.0,
          //     height: 80.0,
          //   ),
          //   subtitle: new Padding(padding: new EdgeInsets.only(left: 20),
          //     child:Text(image_caption, style: new TextStyle(fontSize: 12.0),)),
          
          // ),
        ),
      ),
    );
  }
}

class image_carouse extends StatefulWidget {
  
  @override
  _image_carouseState createState() => _image_carouseState();
}

class _image_carouseState extends State<image_carouse> {
   
 

  @override
  Widget build(BuildContext context) {
     var h = MediaQuery.of(context).size.height;
    return new Container(
      height: 230,
    child:  new Carousel(
      boxFit: BoxFit.cover,
      
      images: [
        AssetImage('images/revels1.jpg'),
        AssetImage('images/revels2.jpg'),
        AssetImage('images/revels3.jpg'),
        AssetImage('images/chakka.jpeg'),
        //AssetImage('images/revels4.jpeg'),
       // AssetImage('images/m2.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
         animationDuration: Duration(milliseconds: 1000),
      dotSize: 6.0,
      indicatorBgPadding: 2.0,
    ),
  );
  }
}
