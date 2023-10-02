import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Reuseable Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          //Without reusable widget
          // TextField(
          //   controller: _emailController,
          //   keyboardType: TextInputType.emailAddress,
          //   obscureText: false,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderSide: BorderSide(color: Colors.lightBlue),
          //     ),
          //     hintText: 'example@email.com',
          //     labelText: 'Email',
          //     prefixIcon: Icon(
          //       Icons.email_outlined,
          //       color: Colors.green,
          //     ),
          //   ),
          // ),

          customInputfield(_emailController, TextInputType.emailAddress,
              'example@email.com', 'Email', Icon(Icons.email_outlined)),
          SizedBox(
            height: 10,
          ),
          customInputfield(_passwordController, TextInputType.text,
              'maxlength-8', 'Password', Icon(Icons.password)),
        ]),
      ),
    );
  }
}

Widget customInputfield(controller, keyboardtype, hint, labeltext, prefix) {
  return TextField(
    controller: controller,
    keyboardType: keyboardtype,
    obscureText: false,
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlue),
          borderRadius: BorderRadius.circular(5)),
      hintText: hint,
      labelText: labeltext,
      prefixIcon: prefix,
    ),
  );
}
