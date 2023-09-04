import 'package:flutter/material.dart';

class AnimatedIconsFlutter extends StatefulWidget {
  const AnimatedIconsFlutter({super.key});

  @override
  State<AnimatedIconsFlutter> createState() => _AnimatedIconsFlutterState();
}

class _AnimatedIconsFlutterState extends State<AnimatedIconsFlutter>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  bool videoPlaying = false;
  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  changePlayer() {
    if (videoPlaying == false) {
      _animationController!.forward();
      videoPlaying = true;
    } else {
      _animationController!.reverse();
      videoPlaying = false;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: InkWell(
        onTap: () => changePlayer(),
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          size: 200,
          color: Colors.green,
          progress: _animationController!,
        ),
      )),
    );
  }
}
