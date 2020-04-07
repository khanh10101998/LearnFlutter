import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('demo'),

              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41')
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(''
        'Nguyen hong khanh de mo thoi ne haha'
        'de mo dong thu hai ne'
        'demo dong thu ba ne'
        'demo có dấu nè',
    softWrap: true,
    ),
  );


  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    ),
    );

    return MaterialApp(
      title: 'Demo title ne',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/hot_girl.jpg',
              width: 400,
              height: 500,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection],
        ),
      ),
    );
  }
}
