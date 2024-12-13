import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class _MyScaffoldState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Alert dialog"),
        backgroundColor: Colors.amber,
        bottom: TapBar(
        tabs: [
          Tab(text: "Home",),
          Tab(text: "Favorites"),
          Tab(text: "Data"),
        ]
      ),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          showSnackbar(

          );
        }
        child: Text("Show sncakbar"),
      ),
    ),
    );
   }

   void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.grey[800],
          content: Text("Button pressed"),
          duration: Duration(seconds: 4),
          action: SnackBarAction(label: "Ok", onPressed: print("Ok Pressed"))
          )
    );
   }

   
  }
