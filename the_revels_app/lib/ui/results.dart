import 'package:flutter/material.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import '../utils/bottom.dart';

class Results extends StatefulWidget {

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  var myScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: new Text("Results",
          style: new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.favorite, color: Colors.white,),
            onPressed: null,
            color: Colors.white,),
          // new PopupMenuButton(itemBuilder: (BuildContext context) {


          // }
          // ),
        ],
        backgroundColor: Colors.purple,
      
    ),

//     body: DraggableScrollbar.arrows(
//   labelTextBuilder: (double offset) => Text("${offset ~/ 100}"),
//   controller: myScrollController,
//   child: ListView.builder(
//     controller: myScrollController,
//     itemCount: 1000,
//     itemExtent: 100.0,
//     itemBuilder: (context, index) {
//       return Container(
//         padding: EdgeInsets.all(8.0),
//         child: Material(
//           elevation: 4.0,
//           borderRadius: BorderRadius.circular(4.0),
//           color: Colors.lime,
//           child: Center(
//             child: Text(index.toString()),
//           ),
//         ),
//       );
//     },
//   ),
// ),
    body: DraggableScrollbar.arrows(
  labelTextBuilder: (double offset) => Text("${offset ~/ 100}"),
  controller: myScrollController,
  child:GridView.builder(
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
    ),
    controller: myScrollController,
    itemCount: 1000,
    itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.all(8.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.cyan[index % 4 * 100],
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      );
    },
  ),
 // backgroundColor: Colors.purple.shade900,
),
     bottomNavigationBar: Bottom(3),
    );
  }
}


























































//       new BottomNavigationBar(

//           onTap: _onItemTapped,
//           currentIndex: 3,
          
//                     type: BottomNavigationBarType.fixed,
//                     items: <BottomNavigationBarItem>[
//                       new BottomNavigationBarItem(
//                         icon: new Icon(Icons.home), title: new Text("Home"),),
//                       new BottomNavigationBarItem(
//                           icon: new Icon(Icons.calendar_today), title: new Text("Schedule")),
//                       new BottomNavigationBarItem(icon: new Icon(Icons.calendar_view_day),
//                           title: new Text("Categories")),
//                       new BottomNavigationBarItem(
//                           icon: new Icon(Icons.filter_1), title: new Text("Results")),
          
          
//                     ]
//                 ),
              
//               );
//             }
          
//                      void _onItemTapped(int index) {
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
  



