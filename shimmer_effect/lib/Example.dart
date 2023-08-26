import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool loading = true;
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //To use Slivers we must needed CustomScrollview Widget
      appBar: AppBar(
        title: Text('Shimmer Effect'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return loading == true
              ? ShimmerEffect()
              : Container(
                  height: 160,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 60,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'What is Lorem Ipsum?',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ))
                    ]),
                  ));
        },
        itemCount: 15,
      ),
    );
  }
}

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(color: Colors.black12),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Container(
            width: 60,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                height: 10,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 10,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 10,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 10,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 10,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
