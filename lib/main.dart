import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  "Esschildren Lake Campground",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text("Kandersteg,Switzerland",
                  style: new TextStyle(color: Colors.grey[500])),
              new Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              new Text("41")
            ],
          ))
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              icon,
              color: color,
            ),
            new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: new Text(label,
                  style: new TextStyle(
                      color: color,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400)),
            )
          ]);
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, "Call"),
          buildButtonColumn(Icons.near_me, "Route"),
          buildButtonColumn(Icons.share, "Share"),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        sss
        ''',
        softWrap: true,
      ),
    );

    // body: ;

    return new MaterialApp(
      title: "Layout Demo",
      theme: new ThemeData(primaryColor: Colors.blue //设置主题颜色
          ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              'assets/images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
void main() => runApp(new MyApp());