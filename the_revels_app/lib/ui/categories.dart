import 'package:flutter/material.dart';
import 'schedule.dart';
import '../utils/bottom.dart';
import '../schedule/events.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
        title: new Text("Categories",
        style: new TextStyle(color: Colors.white),),
        // actions: <Widget>[
        //   new IconButton(icon: new Icon(Icons.search), onPressed: null),
        //   // new PopupMenuItem(child: new PopupMenuButton(itemBuilder: (BuildContext context){
        //   //   Navigator.push(context, new MaterialPageRoute(builder: (context){
        //   //     return new Schedule();
        //   //   }));
        //   // },//child: new Text("Go to Categories"),),

        //   // ))
        // ],
      ),
       backgroundColor: Colors.white,

      bottomNavigationBar: Bottom(2),
      body: GridView.builder(

        itemCount: events.length,
        itemBuilder: (context,index){
          return Container( 
            padding: EdgeInsets.all(6),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal,
              child: InkWell(child: Column(
                children: <Widget>[
                  Image.asset(events[index].image,
                  height: 100,width: 100,),
                  Container(
                    height: 2,
                    width: 20,
                    color: Colors.red,
                  ),
                  Padding(padding: EdgeInsets.only(top: 10),),
                  Text(events[index].name,
                     style: TextStyle(fontSize: 20,color:Colors.black),
                     )

                ],
              ),
                //               child: ListTile(
                //   title: Image.asset(events[index].image),
                //   subtitle: Padding(padding: EdgeInsets.only(left:10),
                //                       child: Text(events[index].name,
                //     style: TextStyle(fontSize: 20),),
                //   ),
                // ),
                onTap: (){print("HEllo");},
              ),
            ),
          );
          
        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),

      ),
    );
  }
}





























































//       new BottomNavigationBar(

//           onTap: _onItemTapped,
//                     currentIndex: 2,
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
  


