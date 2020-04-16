import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'title ne',
      home: new MainPage(title: 'Demo title ne', body: 'demo body ne',),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;
  final String body;
  MainPage({this.title, this.body}) : super();

  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
          maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        padding: const EdgeInsets.all(5),
        children: _buildGridTiles(29),
      ),
    );
  }
}

List<Widget> _buildGridTiles(numOfTiles){
    List<Container> containers  = new List<Container>.generate(numOfTiles, (int index) {
      final image = 'images/hot_girl.jpg';
      return new Container(
        child: new Image.asset(
            image,
          fit: BoxFit.cover,
        ),
      );
    }
  );

    return containers;
}