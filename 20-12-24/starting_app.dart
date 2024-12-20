import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(GrabABiteApp());
}
class GrabABiteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Let's Grab a Bite",
      home: GrabABiteAppHome(title: "Let's Grab a Bite"),
    );
  }
}

class GrabABiteAppHome extends StatefulWidget {
  const GrabABiteAppHome({required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _GrabABiteAppHomeState();
  }
}

class _GrabABiteAppHomeState extends State<GrabABiteAppHome>{

  int _selectedTabIndex = 0;

  final List<Widget> _pages = <Widget> [
    Container(color: Colors.orange),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: _selectedTabIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedTabIndex,
        onDestinationSelected: (int index){
          setState(() {
            _selectedTabIndex = index;
          });
        },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home),
                label: "Explore",
            ),
            NavigationDestination(
              icon: Icon(Icons.book),
              label: "Recipes",
            ),
            NavigationDestination(
              icon: Icon(Icons.list),
              label: "To Buy",
            ),
          ]
      ),
    );
  }
}
