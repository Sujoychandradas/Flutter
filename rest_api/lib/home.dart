import 'package:flutter/material.dart';
import 'package:rest_api/helper/comment_helper.dart';
import 'package:rest_api/model/coments.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoaded = false;

  List<Coments>? comments;
  getData() async {
    comments = await CommentHelper().getComments();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest API'),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: Center(child: CircularProgressIndicator()),
        child: ListView.builder(
          itemBuilder: (_, index) {
            return Card(
              child: ListTile(
                title: Text(comments![index].email),
                subtitle: Text(comments![index].body),
              ),
            );
          },
          itemCount: comments?.length ?? 0,
        ),
      ),
      // body: ListView.builder(itemBuilder: ),
    );
  }
}
