import 'package:flutter/material.dart';
import 'events.dart';
import 'dayscreen.dart';
int d = 0;
List<Event> favourites;
 class Favourite{
  Event anevent;
  Favourite(this.anevent);
 
}

 void adder(Event ae)
  {
    favourites[d++] = ae;
    
  }


class FavBuilder extends StatefulWidget {
  @override
  _FavBuilderState createState() => _FavBuilderState();
}

class _FavBuilderState extends State<FavBuilder> {
  @override
  Widget build(BuildContext context) {
 return   ListView.builder(
      itemBuilder: (context, index) => new EventSummary(favourites[index]),
      itemCount: favourites.length,
      //itemExtent: 152.0,
    );
  }
}
