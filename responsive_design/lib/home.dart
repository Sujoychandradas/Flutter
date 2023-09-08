import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      appBar: AppBar(
        title: Text('Resposive Design'),
      ),
      //To access this u must needed to unlock column
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     //AspectRatio
      //     //  AspectRatio(
      //     //   aspectRatio: 16 / 9,
      //     //   child: Container(
      //     //     // height: 200,
      //     //     // width: 200,
      //     //     color: Colors.green,
      //     //   ),
      //     // )

      //     //FittedBox & Wrap

      //     // Wrap(children: [
      //     //   Container(
      //     //     height: 200,
      //     //     width: 200,
      //     //     color: Colors.purple,
      //     //   ),
      //     //   Container(
      //     //     height: 200,
      //     //     width: 200,
      //     //     color: Colors.green,
      //     //   ),
      //     //   Container(
      //     //     height: 200,
      //     //     width: 200,
      //     //     color: Colors.red,
      //     //   ),
      //     //   Container(
      //     //     height: 200,
      //     //     width: 200,
      //     //     color: Colors.black,
      //     //   ),
      //     //   Container(
      //     //     height: 200,
      //     //     width: 100,
      //     //     color: Colors.blue,
      //     //   ),
      //     // ])

      //     //Fitted Box
      //     // FittedBox(
      //     //   fit: BoxFit.cover,
      //     //   child: Row(children: [
      //     //     Container(
      //     //       height: 200,
      //     //       width: 200,
      //     //       color: Colors.purple,
      //     //     ),
      //     //     Container(
      //     //       height: 200,
      //     //       width: 200,
      //     //       color: Colors.green,
      //     //     ),
      //     //     Container(
      //     //       height: 200,
      //     //       width: 200,
      //     //       color: Colors.red,
      //     //     ),
      //     //     Container(
      //     //       height: 200,
      //     //       width: 200,
      //     //       color: Colors.black,
      //     //     ),
      //     //     Container(
      //     //       height: 200,
      //     //       width: 100,
      //     //       color: Colors.blue,
      //     //     ),
      //     //   ]),
      //     // )

      //     //FractionallySizedBox

      //     Row(children: [
      //       Container(
      //         height: 300,
      //         width: 300,
      //         color: Colors.purple,
      //         child: FractionallySizedBox(
      //           widthFactor: 0.6,
      //           heightFactor: 0.4,
      //           child: Container(
      //             color: Colors.green,
      //           ),
      //         ),
      //       ),
      //     ]),

      //   ],

      // ),

      //Layout Builder
      // body: LayoutBuilder(builder: (_, size) {
      //   if (size.maxWidth < 480) {
      //     return Mobile();
      //   } else if (size.maxWidth > 480 && size.maxWidth < 800) {
      //     return Tablet();
      //   } else {
      //     return Desktop();
      //   }
      // },
      // ),

      //Media Query
      // body: Column(children: [
      //   Container(
      //     height: height / 3,
      //     width: width / 2,
      //     color: Colors.blue,
      //   ),
      //   Text(
      //     "Dummy Text",
      //     style: TextStyle(fontSize: 40),
      //   )
      // ]),

      //Orientation Builder

      body: OrientationBuilder(builder: (_, orientation) {
        if (orientation == Orientation.portrait) {
          return Potrait();
        } else {
          return Landscape();
        }
      }),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Mobile',
        style: TextStyle(fontSize: 40.sp),
      )),
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Tablet',
        style: TextStyle(fontSize: 40.sp),
      )),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Desktop',
        style: TextStyle(fontSize: 40.sp),
      )),
    );
  }
}

//Orientation Builder

class Landscape extends StatelessWidget {
  const Landscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Landscape',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}

class Potrait extends StatelessWidget {
  const Potrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Potrait',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
