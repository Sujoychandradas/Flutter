import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final controller = WebViewController();
  // loadStore() {
  //   controller
  //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //     ..setBackgroundColor(Colors.black)
  //     ..loadRequest(Uri.parse('https://www.google.com'));
  // }
  final controller = WebViewController();
  loadstore() {
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(Uri.parse('https://flutter.dev'));
  }

  @override
  void initState() {
    // TODO: implement initState
    loadstore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Webview')),
      body: WebViewWidget(
        controller: controller,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (await controller.canGoBack()) {
            return controller.goBack();
          } else {
            return null;
          }
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
