import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Pages/Page1.dart';
import 'Pages/Page2.dart';
import 'Pages/Page3.dart';
import 'Pages/Page4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    Pageone(),
    Pagetwo(),
    Pagethree(),
    Pagefour(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentTabIndex,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart),
              title: Text("Search")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new),
              title: Text("User Info")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("User Info")
          )
        ]
      ),
    );
  }
}
