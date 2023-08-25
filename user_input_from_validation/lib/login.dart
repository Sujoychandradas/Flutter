import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  // TextEditingController _controller = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _fromkey = GlobalKey<FormState>();

  // TextEditingController _controller = TextEditingController(text: 'ABCD');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   print(_controller.text);
      // }),
      appBar: AppBar(
        title: Text('Login-From'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: _fromkey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: 50,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // TextField(
                    //   controller: _controller,
                    //   keyboardType: TextInputType.emailAddress,
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(5),
                    //       ),
                    //       borderSide: BorderSide(width: 2, color: Colors.grey),
                    //     ),
                    //     hintText: 'Email Address',
                    //     prefixIcon: Icon(Icons.email_outlined),
                    //   ),
                    //   onChanged: (value) {
                    //     print(value);
                    //   },
                    // ), //Without Validaton
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        hintText: 'Email Address',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field can not be empty ';
                        } else if (!value.contains(RegExp(r'\@'))) {
                          return 'Enter a valid email address';
                        } else {
                          return null;
                        }
                      },
                      // onChanged: (value) {
                      //   print(value);
                      // },
                    ), //With Validation
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.remove_red_eye),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field can not be empty ';
                        } else if (value.length < 6) {
                          return 'password can not be less then 6';
                        } else {
                          return null;
                        }
                      },
                      // onChanged: (value) {
                      //   print(value);
                      // },
                    ), //With Validation
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_fromkey.currentState!.validate()) {
                            print('Successfull');
                          } else {
                            print('falid');
                          }
                        },
                        child: Text('Login'),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
