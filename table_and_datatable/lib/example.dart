import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Table and Data Table')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Table(
            textDirection: TextDirection.ltr,
            border: TableBorder.all(width: 1.0, color: Colors.grey),
            children: [
              TableRow(
                  children: [Heading('ID'), Heading('Name'), Heading('Age')]),
              TableRow(children: [Data('01'), Data('Sakib'), Data('25')]),
              TableRow(children: [Data('01'), Data('Tamim'), Data('25')]),
              TableRow(children: [Data('01'), Data('Liton'), Data('25')])
            ],
          ),
          DataTable(sortAscending: false, columns: [
            DataColumn(
              label: Text('ID'),
            ),
            DataColumn(
              label: Text('Name'),
            ),
            DataColumn(
              label: Text('Age'),
            )
          ], rows: [
            DataRow(selected: false, cells: [
              DataCell(Text('01')),
              DataCell(Text('Sakib')),
              DataCell(Text('25'))
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('01')),
              DataCell(Text('Nasir')),
              DataCell(Text('25'))
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('01')),
              DataCell(Text('Soumaya')),
              DataCell(Text('25'))
            ])
          ])
        ],
      ),
    );
  }
}

Widget Heading(
  name,
) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
    ),
  );
}

Widget Data(
  name,
) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
    ),
  );
}
