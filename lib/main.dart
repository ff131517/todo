import "package:flutter/material.dart";

class BasicAppBarSample extends StatefulWidget {
  @override
  _BasicAppBarSampleState createState() => new _BasicAppBarSampleState();
}

class _BasicAppBarSampleState extends State<BasicAppBarSample> {
  Choice _selectedChoice = choices[1];

  void _selcet(Choice choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }

  void _appsBtnClick() {
    print("apps click");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: new Row(
          children: <Widget>[
            new IconButton(
                icon: new Icon(
                  Icons.apps,
                  color: Colors.white,
                ),
                onPressed: _appsBtnClick),
            new Text("To Do")
          ],
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(choices[0].icon),
              onPressed: () {
                _selcet(choices[0]);
              }),
          new IconButton(
              icon: new Icon(choices[1].icon),
              onPressed: () {
                _selcet(choices[1]);
              }),
        ],
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new ChoiceCard(choice: _selectedChoice),
      ),
    ));
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: AntdIcons.setting),
  // const Choice(title: 'Car', icon: Icons.settings),
  const Choice(title: 'Bicycle', icon: Icons.question_answer),
];

class AntdIcons {
  static const IconData setting = IconData(0xe77d, fontFamily: 'Custome');
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(AntdIcons.setting, size: 128, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(new BasicAppBarSample());
}
