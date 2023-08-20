import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? time;

  String? date;

  pickTime(context) async {
    final pickedTime = await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 5, minute: 35));
    print(pickedTime);
    time = '${pickedTime!.hour} - ${pickedTime.minute}';
    setState(() {});
  }

  pickDate(context) async {
    final pickDate = await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(1998),
        lastDate: DateTime(2018));
    print(pickDate);
    date = '${pickDate!.day}/${pickDate.month}/${pickDate.year}';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learning Approach',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Picked Time is: $time',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Picked Date is: $date',
              style: TextStyle(fontSize: 30),
            ),
            Divider(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  pickTime(context);
                },
                child: Text("Time Picker")),
            Divider(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  pickDate(context);
                },
                child: Text("Date Picker"))
          ],
        ),
      ),
    );
  }
}
