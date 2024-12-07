import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Scaffold"),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              _selectedDate(context);
            },
            child: Text("Show DatePicker"),
          ),
          ElevatedButton(
            onPressed: () {
              _selectTime(context){

              }
            },
            child: Text("Show TimePicker"),
          ),
        ],
      ),
    );
  }
  void _selectedDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(), //date that will be displayed, usually the current day
        firstDate: DateTime(2020),
        lastDate: DateTime(2025),
    );
    print(selectedDate);
  }

  void _selectTime(BuildContext context) async {
    TimeOfDay? selectedTime = await showTimePicker(
    context: context,
        initialTime: TimeOfDay.now(),
    );
    print(selectedTime);
  }
}
