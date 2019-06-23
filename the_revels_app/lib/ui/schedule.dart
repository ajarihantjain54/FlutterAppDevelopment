import 'package:flutter/material.dart';
import '../schedule/events.dart';
import '../schedule/dayscreen.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import '../utils/bottom.dart';

   var myScrollController = ScrollController();

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  Widget day1 =  ListView.builder(
      itemBuilder: (context, index) => new EventSummary(events[index]),
      itemCount: events.length,
      //itemExtent: 152.0,
    );
  Widget build(BuildContext context) {
    return new DefaultTabController(length: 5,
    child : new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        bottom: new TabBar(isScrollable: true,
          indicatorColor: Colors.green,
          // indicator: new BoxDecoration(
          //   shape: BoxShape.rectangle,
          //   color: Colors.green
          // ),
        
            tabs: [
         // new Tab(text: "Pre Revels",),
              new Tab(text: "Day 1",),
              new Tab(text: "Day 2",),
              new Tab(text: "Day 3",),
              new Tab(text: "Day 4",)
        ]),
        backgroundColor: Colors.purple,
        title: new Text("Schedule",
          style: new TextStyle(
              color: Colors.white,
              fontSize: 20
          ),),
          centerTitle: true,

        // actions: <Widget>[
        //   new IconButton(icon: new Icon(Icons.search), onPressed: null,color: Colors.white,),
        //   new IconButton(icon: new Icon(Icons.details), onPressed: null,color: Colors.white,),
        //   new PopupMenuButton(itemBuilder: (BuildContext context) {


        //   }),
        // ],

      ),
      body: TabBarView(
        children: <Widget>[
          day1,
          day1,
          day1,
          day1,
        ],
        
      ),
      backgroundColor: new Color(0xFF736AB7),

      bottomNavigationBar: Bottom(1),
    )
    );
  }
}




























































//       new BottomNavigationBar(
        
//         fixedColor: Colors.black,

//           onTap: _onItemTapped,
//                     currentIndex: 1,
                    
//                               type: BottomNavigationBarType.fixed,
//                               items: <BottomNavigationBarItem>[
//                                 new BottomNavigationBarItem(
//                                   icon: new Icon(Icons.home), title: new Text("Home"),),
//                                 new BottomNavigationBarItem(
//                                     icon: new Icon(Icons.calendar_today), title: new Text("Schedule")),
//                                 new BottomNavigationBarItem(icon: new Icon(Icons.calendar_view_day),
//                                     title: new Text("Categories")),
//                                 new BottomNavigationBarItem(
//                                     icon: new Icon(Icons.filter_1), title: new Text("Results")),
                    
                    
//                               ]
//                           ),
                        
//                         ),
          
                        
            
//               );
          
            
              
//             }
           
          
            
//               void _onItemTapped(int index) {
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
  





Widget day2 = new DraggableScrollbar.arrows(
  labelTextBuilder: (double offset) => Text("${offset ~/ 100}"),
  controller: myScrollController,
  child: ListView.builder(
    controller: myScrollController,
    itemCount: 1000,
    itemExtent: 100.0,
    itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.all(8.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.orange[index % 9 * 100],
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      );
    },
  ),
);

Widget day3 = new DraggableScrollbar.arrows(
  labelTextBuilder: (double offset) => Text("${offset ~/ 100}"),
  controller: myScrollController,
  child: ListView.builder(
    controller: myScrollController,
    itemCount: 1000,
    itemExtent: 100.0,
    itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.all(8.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.indigo[index % 9 * 100],
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      );
    },
  ),
);


Widget day4 = new DraggableScrollbar.arrows(
  labelTextBuilder: (double offset) => Text("${offset ~/ 100}"),
  controller: myScrollController,
  child: ListView.builder(
    controller: myScrollController,
    itemCount: 1000,
    itemExtent: 100.0,
    itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.all(8.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.yellowAccent[index % 9 * 100],
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      );
    },
  ),
);


 