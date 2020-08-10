import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget TitleSection = new Container(
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

    Column  buildButtonColumn (IconData icon ,String label){
      Color color  = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon,color: color,)
        ],
      )
    }
    return  new MaterialApp(
      title:"Layout Demo",
      theme: new ThemeData(
        primaryColor: Colors.blue //设置主题颜色
      )
    );
  }
  
}

