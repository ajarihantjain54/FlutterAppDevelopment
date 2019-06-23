import 'package:flutter/material.dart';
class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("The Tantrik"),
              accountEmail: new Text("chambal@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: new Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/chambal.jpg"))),
                    )),
              ),
              decoration: new BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.deepPurpleAccent]),
              ),
            ),
            ListTile(
              title: Text('Featured Events'),
              leading: Icon(Icons.event),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Proshow'),
              leading: Icon(Icons.new_releases),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new Divider(),
            ListTile(
              title: Text('Daily Newsletter'),
              leading: Icon(Icons.pages),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('REVELS LIVE'),
              leading: Icon(Icons.live_tv),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}