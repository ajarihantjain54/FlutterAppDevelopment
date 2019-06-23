import 'package:flutter/material.dart';
import '../schedule/favourite.dart';
class FavScreen extends StatefulWidget {
  @override
  _FavScreenState createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text("Favourties"),
        FavList(),
      ],



      
    );
  }
}








class FavList extends StatelessWidget {
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
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: favourites.length,
        itemBuilder: (context,index)=> FavCategory(
          favourites[index].image ,favourites[index].name),
      ),
    );
  }
}

class FavCategory extends StatelessWidget {
  final String image_location;
  final String image_caption;

  FavCategory(this.image_location, this.image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          height: 200,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: new Padding(padding: new EdgeInsets.only(left: 20),
              child:Text(image_caption, style: new TextStyle(fontSize: 12.0),)),
          
          ),
        ),
      ),
    );
  }
}