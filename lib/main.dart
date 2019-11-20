import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan menu',
      home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // '/menu1': (BuildContext context) => SilverAppBarContoh(),
        // '/menu2': (BuildContext context) => SilverAppBarContoh2(),
        // '/menu3': (BuildContext context) => SliverGridContoh(),
        // '/menu4': (BuildContext context) => LatihanSliver(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan menu'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            MyButton(
              iconnya: Icon(Icons.ac_unit),
              routing: '/menu1',
              judul: 'menu 1',
            ),
            MyButton(
              iconnya: Icon(Icons.sentiment_satisfied),
              routing: '/menu2',
              judul: 'menu 2',
            ),
            MyButton(
              iconnya: Icon(Icons.grid_on),
              routing: '/menu3',
              judul: 'menu 3',
            ),
            MyButton(
              iconnya: Icon(Icons.slideshow),
              routing: '/menu4',
              judul: 'menu 4',
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final iconnya;
  final routing;
  final judul;
  MyButton({this.iconnya, this.routing, this.judul});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          child: Row(
            children: <Widget>[
              iconnya,
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Text(
                judul,
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(routing);
          },
        )
      ],
    );
  }
}
