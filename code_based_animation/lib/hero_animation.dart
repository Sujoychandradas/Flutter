import 'package:code_based_animation/details_screen.dart';
import 'package:flutter/material.dart';

class HeroAnimationFlutter extends StatelessWidget {
  List<String> _places = [
    'https://images.unsplash.com/photo-1551749005-6b94ff060954?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2086&q=80',
    'https://images.unsplash.com/photo-1609109238958-eb5130c99873?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    'https://images.unsplash.com/photo-1592396355679-1e2a094e8bf1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80',
    'https://images.unsplash.com/photo-1625029303222-029538479161?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Places'),
      ),
      body: ListView.builder(
        itemCount: _places.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(_places[index], index),
                ),
              );
            },
            child: Hero(
              tag: index,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(_places[index]),
                        fit: BoxFit.cover)),
              ),
            ),
          );
        },
      ),
    );
  }
}
