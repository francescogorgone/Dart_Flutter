import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 36,
            fontStyle: FontStyle.italic,
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange).copyWith(
          primary: Colors.green,
          secondary: Colors.greenAccent,
          surface: Colors.amber,
        ),
      ),
      home: SafeArea(
        child: MyScaffold(),
      ),
    );
  }
}

class MyScaffold extends StatefulWidget {

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main screen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){},
          child: Text(
              "Button",
            style: Theme.of(context).textTheme.titleLarge, //first theme u encounter from context object, get the property textTheme and titleLarge
          ),
      ),
      ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){}
    ),
    );
  }

}
