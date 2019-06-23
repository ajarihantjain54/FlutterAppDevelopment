import 'package:flutter/material.dart';
import '../utils/bottom.dart';
import '../secondscreencomponents.dart/lists.dart';
import '../utils/draw.dart';
//import 'favScreen.dart';
import 'schedule.dart';


class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var colorOfCoice = Colors.white;
  @override
  Widget build(BuildContext context) {
   /// double w = MediaQuery.of(context).size.width;
    ///double h = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Revels' 19",
          style: new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.person_pin,
                color: Colors.white,
              ),
              onPressed: null),
          new IconButton(
            icon: new Icon(
              Icons.favorite,
              color: colorOfCoice,
            ),
            onPressed: (){
              setState(() {
                if(colorOfCoice == Colors.white)
                              colorOfCoice = Colors.red;
                              else
                              colorOfCoice  = Colors.white;
                            });
            //   Navigator.push(
            // context,
            // new MaterialPageRoute(
            //     builder: (BuildContext context) => new FavScreen()));
            },
            color: Colors.white,
          ),
          new PopupMenuButton(itemBuilder: (BuildContext context) {})
        ],
        backgroundColor: Colors.purple ,
      ),
      drawer: Draw(),
      body: ListView(children: <Widget>[
        // horizontallist1,
           image_carouse(),
        new Column(
          children: <Widget>[
            // margin: new EdgeInsets.fromLTRB(20, 10, 10, 450),
            //alignment: Alignment.topLeft,

            
            new Row(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(left: 15, top: 35),
                ),
                new Text("Events", style: getStyle()),
                new Padding(padding: new EdgeInsets.only(left: 230)),
                new InkWell(
                    child: new Text("MORE", style: sStyle()),
                    onTap: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) {
                        return new Schedule();
                      }));
                    })
              ],
            ),

            HorizontalList(),

            new Row(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(left: 15, top: 35),
                ),
                new Text("Categories", style: getStyle()),
                new Padding(padding: new EdgeInsets.only(left: 230)),
                new InkWell(
                    child: new Text("MORE", style: sStyle()),
                    onTap: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) {
                        return new Category();
                      }));
                    })
              ],
            ),

            HorizontalList(),
          ],
        ),
      ]
      ),


             
                 
            
    
        
      
    bottomNavigationBar: Bottom(0),
    );
  }
}

TextStyle getStyle() {
  return new TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.blueGrey,
    fontSize: 15,
  );
}

TextStyle sStyle() {
  return new TextStyle(
      fontWeight: FontWeight.w600, color: Colors.orangeAccent.shade400, fontSize: 12);
}

TextStyle tedaStyle(){
  return TextStyle(
    fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold
  );
}





























//new BottomNavigationBar(
//           onTap: _onItemTapped,
//           type: BottomNavigationBarType.fixed,
//           items: <BottomNavigationBarItem>[
//             new BottomNavigationBarItem(
//               icon: new Icon(Icons.home),
//               title: new Text("Home"),
//             ),
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.calendar_today),
//                 title: new Text("Schedule")),
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.calendar_view_day),
//                 title: new Text("Categories")),
//             new BottomNavigationBarItem(
//                 icon: new Icon(Icons.filter_1), title: new Text("Results")),
//           ]),
//     );
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       if (index == 0)
//         Navigator.push(
//             context,
//             new MaterialPageRoute(
//                 builder: (BuildContext context) => new Second()));

//       if (index == 2)
//         Navigator.push(
//             context,
//             new MaterialPageRoute(
//                 builder: (BuildContext context) => new Categories()));

//       if (index == 3)
//         Navigator.push(
//             context,
//             new MaterialPageRoute(
//                 builder: (BuildContext context) => new Results()));

//       if (index == 1) {
//         Navigator.push(
//             context,
//             new MaterialPageRoute(
//                 builder: (BuildContext context) => new Schedule()));
//       }
//     });
//   }
// }

    // new ListView(children: <Widget>[
    //     // horizontallist1,

    //     new Column(
    //       children: <Widget>[
    //         // margin: new EdgeInsets.fromLTRB(20, 10, 10, 450),
    //         //alignment: Alignment.topLeft,

            
    //         new Row(
    //           children: <Widget>[
    //             new Padding(
    //               padding: new EdgeInsets.only(left: 15, top: 35),
    //             ),
    //             new Text("Events", style: getStyle()),
    //             new Padding(padding: new EdgeInsets.only(left: 230)),
    //             new InkWell(
    //                 child: new Text("MORE", style: sStyle()),
    //                 onTap: () {
    //                   Navigator.push(context,
    //                       new MaterialPageRoute(builder: (context) {
    //                     return new Schedule();
    //                   }));
    //                 })
    //           ],
    //         ),

    //         HorizontalList(),

    //         new Row(
    //           children: <Widget>[
    //             new Padding(
    //               padding: new EdgeInsets.only(left: 15, top: 35),
    //             ),
    //             new Text("Events", style: getStyle()),
    //             new Padding(padding: new EdgeInsets.only(left: 230)),
    //             new InkWell(
    //                 child: new Text("MORE", style: sStyle()),
    //                 onTap: () {
    //                   Navigator.push(context,
    //                       new MaterialPageRoute(builder: (context) {
    //                     return new Schedule();
    //                   }));
    //                 })
    //           ],
    //         ),

    //         HorizontalList(),
    //       ],
    //     ),
    //   ])





// Container(
//                    alignment: Alignment.center,
//                      height: h/3, 
//                   width: w/2 ,
//                   margin: EdgeInsets.only(left: w/2+20),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color:  Color(0xFF736AB7),
//                   ),
//                   child: Text("Schedule",style: tedaStyle()),
//                 ),

//                 Text("Hello There"),


//                  Container(
//                    alignment: Alignment.center,
//                        height: h/3 ,
//                   width: w/2 ,
//                   margin: EdgeInsets.only(left: w/2+20, bottom: 200),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color:  Color(0xFF736AB7),
//                   ),
//                   child: Text("Categories",style: tedaStyle()),
//                 ),

//                  Container(
//                    alignment: Alignment.center,
//                        height: h/3 ,
//                   width: w/2 ,
//                   margin: EdgeInsets.only(left: w/2+20,top:h/2),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color:  Color(0xFF736AB7),
//                   ),
//                   child: Text("Results",style: tedaStyle()),
//                 ),