import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checkBox = false;
  bool _switch = false;
  int _radiogroupValue = 1;
  bool _checkBoxListtile = false;
  List<bool> _isSelected = [false, true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toogles'),
      ),
      body: Center(
          child: Column(
        children: [
          Divider(
            height: 10,
          ),
          Checkbox(
              value: _checkBox,
              onChanged: (value) {
                setState(() {
                  _checkBox = value!;
                });
              }),
          Divider(
            height: 10,
          ),
          Switch(
              value: _switch,
              onChanged: (value) {
                setState(() {
                  _switch = value;
                });
              }),
          Divider(
            height: 10,
          ),
          Text('Choose Your Gender?'),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _radiogroupValue,
                        onChanged: (value) {
                          setState(() {
                            _radiogroupValue = value!;
                          });
                        }),
                    VerticalDivider(),
                    Text('Male')
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _radiogroupValue,
                        onChanged: (value) {
                          setState(() {
                            _radiogroupValue = value!;
                          });
                        }),
                    VerticalDivider(),
                    Text('Female')
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 10,
          ),
          ToggleButtons(
            isSelected: _isSelected,
            children: <Widget>[
              Icon(Icons.bluetooth),
              Icon(Icons.wifi),
              Icon(Icons.flash_on)
            ],
            onPressed: (int index) {
              setState(() {
                _isSelected[index] = !_isSelected[index];
              });
            },
          ),
          Divider(
            height: 10,
          ),
          CheckboxListTile(
              title: Text('CheckBox List Tile'),
              subtitle: Text(
                  'A Listile with a checkbox, In other words, a checkbox with a label'),
              value: _checkBoxListtile,
              onChanged: (value) {
                setState(() {
                  _checkBoxListtile = value!;
                });
              })
        ],
      )),
    );
  }
}
