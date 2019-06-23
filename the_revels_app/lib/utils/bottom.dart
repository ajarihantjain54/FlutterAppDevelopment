import 'package:flutter/material.dart';
import '../ui/categories.dart';
import '../ui/results.dart';
import '../ui/schedule.dart';
import '../ui/second_screen.dart';

class Bottom extends StatefulWidget {
  final int index;
  Bottom(this.index);
  @override
  _BottomState createState() => _BottomState(index);
}

class _BottomState extends State<Bottom> {
  int index1;
  _BottomState(this.index1);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          fixedColor: Colors.black,
          onTap: _onItemTapped,
                    currentIndex: index1,
                              type: BottomNavigationBarType.fixed,
                              items: <BottomNavigationBarItem>[
                                new BottomNavigationBarItem(
                                  icon: new Icon(Icons.home), title: new Text("Home"),),
                                new BottomNavigationBarItem(
                                    icon: new Icon(Icons.calendar_today), title: new Text("Schedule")),
                                new BottomNavigationBarItem(icon: new Icon(Icons.calendar_view_day),
                                    title: new Text("Categories")),
                                new BottomNavigationBarItem(
                                    icon: new Icon(Icons.filter_1), title: new Text("Results")),
                    
                    
                              ]
                          );
              
            }
          
    void _onItemTapped(int index) {
    setState(() {
      if (index == 0)
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => new Second()));

      if (index == 2)
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => new Categories()));

      if (index == 3)
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => new Results()));

      if (index == 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => new Schedule()));
      }
    });
  }
}
 