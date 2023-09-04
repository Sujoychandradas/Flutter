import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  String img;
  int heorTag;
  DetailsScreen(this.img, this.heorTag);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: heorTag,
        child: Container(
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                      img,
                    ),
                    fit: BoxFit.cover))),
      ),
    );
  }
}
