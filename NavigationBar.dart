import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyScaffold extends StatelessWidget {

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {

  var _currentScreen = 0;
  var _screens = [
    Text("Screen 1"),
    Text("Screen 2"),
    Text("Screen 3"),
    Text("Screen 4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main screen"),
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: _currentScreen,
          onDestinationSelected: (int index) {
            setState(() {
              _currentScreen = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            NavigationDestination(
              icon: Icon(Icons.cloud),
              label: "Data",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]
      ),
      body: Center(
        child: IndexedStack(
          index: _currentScreen,
          children: _screens,
        ),
      ),
    );
  }
  
}

