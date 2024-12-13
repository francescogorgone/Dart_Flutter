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
    bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        currentIndex: _currentScreen,
        onTap: (int index){
          setState(() {
            _currentScreen = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: "Data",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ]
    ),
    body: Center(
        child: _screen[_currentScreen],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context){
                  return SecondScreen();
                }
            ),
          );
        },
        child: _scrren
    ),
  ),
  );
}

}




class MyScaffold> createState() => _MyScaffoldState() {
  const MyScaffold




@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Second screen"),
    ),
    body: Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return SecondScreen();
                  }
              ),
            );
          },
          child: Text("Go back")
      ),
    ),
  );
}





}
  }




