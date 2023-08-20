import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomeApp());
  }
}

// class MyHomeApp extends StatelessWidget {
//   const MyHomeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Learning-Approach'),
//       ),
//       // body: Column(children: [
//       //   Text('data'),
//       //   Text('data'),
//       //   Container(
//       //     height: 200,
//       //     width: 200,
//       //     color: Colors.blue,
//       //   )

//       // body: Row(children: [
//       //   Text('data'),
//       //   Text('data'),
//       //   Container(
//       //     height: 200,
//       //     width: 200,
//       //     color: Colors.blue,
//       //   )
//       // ]),

//       body: Container(
//         height: 400,
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text('data'),
//               Text('data'),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.blue,
//               )
//             ]),
//       ),
//     );
//   }
// }

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Learning-Approach'),
        ),
        // body: Column(children: [
        //   Text('data'),
        //   Text('data'),
        //   Container(
        //     height: 200,
        //     width: 200,
        //     color: Colors.blue,
        //   )

        // body: Row(children: [
        //   Text('data'),
        //   Text('data'),
        //   Container(
        //     height: 200,
        //     width: 200,
        //     color: Colors.blue,
        //   )
        // ]
        body: Container(
          width: double.maxFinite,
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 10,
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              )
            ],
          ),
        ));
  }
}
