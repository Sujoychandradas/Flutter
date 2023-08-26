import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  List colors = [
    {
      'name': 'Green',
      'color': Colors.green,
    },
    {
      'name': 'Blue',
      'color': Colors.blue,
    },
    {
      'name': 'Black',
      'color': Colors.black,
    },
    {
      'name': 'Pink',
      'color': Colors.pink,
    },
    {
      'name': 'Purple',
      'color': Colors.purple,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //To use Slivers we must needed CustomScrollview Widget
      body: CustomScrollView(slivers: [
        SliverAppBar(
          // flexibleSpace: FlexibleSpaceBar(background: Image.asset('')),

          // expandedHeight: 200,
          pinned: true, //fixed position for app bar
          floating: true, //floating effect
          title: Text('Learning Approach'),
          automaticallyImplyLeading: false,
          bottom: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: TextField(
                decoration: InputDecoration(
                    prefix: Icon(Icons.search), hintText: 'Search Here')),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: colors.length,
            (_, index) {
              return Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  child: Center(
                    child: Text(
                      colors[index]['name'],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: colors[index]['color'],
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            },
          ),
        ),
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate(childCount: colors.length, (_, index) {
            return Card(
              color: colors[index]['color'],
              elevation: 5,
              child: Center(
                  child: Text(
                colors[index]['name'],
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            );
          }),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            color: Colors.amber,
            child: Center(
                child: Text(
              'Footer Part',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
          ),
        )
      ]),
    );
  }
}
