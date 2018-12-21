import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: choices.length,
      child: new Scaffold(
        endDrawer: Text('enddrawer'),
        drawer: Container(child: Text('drawer'), color: Colors.white,),
        appBar: new AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          actions: <Widget>[
            Padding(
              child: Icon(Icons.switch_video, color: Colors.black,),
              padding: EdgeInsets.only(right: 20.0),),

          ],
          title: new TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            tabs: choices.map((Choice choice) {
              return new Tab(
                text: choice.title,

              );
            }).toList(),
          ),

        ),

        body: new TabBarView(
          children: choices.map((Choice choice) {
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new ChoiceCard(choice: choice),
            );
          }).toList(),
        ),
      )
      ,
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

class Choice {
  const Choice({ this.title, this.icon });

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '关注', icon: Icons.directions_bus),
  const Choice(title: '发现', icon: Icons.directions_railway),
  const Choice(title: '同城', icon: Icons.directions_walk),
];