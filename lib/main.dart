import 'package:flutter/material.dart';

void main() {
  var nico = Player(name: "nico");
  var nico2 = Player();
  nico.name;
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void onClicked() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge:
              TextStyle(color: Theme.of(context).textTheme.titleLarge?.color),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 99,
          title: Text("Hello flutter!"),
          centerTitle: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }

  Text MyLargeTitle() {
    return Text(
      "My Large Title",
      style: TextStyle(fontSize: 30),
    );
  }
}

class MyApp extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 99,
          title: Text("Hello flutter!"),
          centerTitle: false,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "click count",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "$counter ",
              style: TextStyle(fontSize: 30),
            ),
          ],
        )),
      ),
    );
  }
}

class Player {
  String? name = 'nico';

  Player({this.name});
}
