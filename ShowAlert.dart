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
        onPressed: () async {
          int returnValue = await showAlert();
          print(returnValue);
        },
        child: Text("Show alert"),
      ),
    ),
    );
   }

    Future<dynamic> showAlert() {
          return showDialog(
            context: context,
            barrierDismissible: false, //rende la finestra di dialogo modale
            builder, (BuildContext context){
              return AlertDialog(
                title: Text("Alert dialog"),
                content: Text("Dialog message"),
                actions: [
                  TextButton(
                      onPressed: (){},
                      child: Text("Cancel"),
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop(0);
                      },
                      child: Text("Ok"),
                  )
                  ),
                ]
              );
          },
          );
    }
    }

  }
