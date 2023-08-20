import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Set<Map> languages = {
    {
      'language_name': 'Python',
      'description':
          'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming.',
    },
    {
      'language_name': 'Python',
      'description':
          'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming.',
    },
    {
      'language_name': 'Python',
      'description':
          'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming.',
    },
    {
      'language_name': 'Python',
      'description':
          'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming.',
    }
  };

  showSnakBar() {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Refreshed Successfully'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Indicator'),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(Duration(seconds: 3), () {
            languages.add({
              'language_name': 'New Language',
              'description': 'It is a New language'
            });
            setState(() {});
            showSnakBar();
          });
        },
        child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                ),
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    title: Text(
                      languages.elementAt(index)['language_name'],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      languages.elementAt(index)['description'],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
