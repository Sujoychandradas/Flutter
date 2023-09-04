import 'package:code_based_animation/hero_animation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Codebased Animation'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedIcons');
              },
              child: Text('Animated icon'),
            ),
            width: 300,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedContainer');
              },
              child: Text('Animated Container'),
            ),
            width: 300,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedText');
              },
              child: Text('Animated Default Text Style'),
            ),
            width: 300,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/positioned');
              },
              child: Text('Animated Positioned'),
            ),
            width: 300,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/opacity');
              },
              child: Text('Animated Opacity'),
            ),
            width: 300,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Hero');
              },
              child: Text('Hero'),
            ),
            width: 300,
          )
        ]),
      ),
    );
  }
}
