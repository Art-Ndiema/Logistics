import 'package:flutter/material.dart';
import 'package:trial/main.dart';
import 'forgot_pass.dart';

class Sign extends StatelessWidget {
  Sign({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const Icon(Icons.android_rounded,
                  color: Color.fromARGB(235, 71, 10, 183), size: 150),
              const Text("Sign in",
                  style: TextStyle(
                    color: Color.fromARGB(255, 71, 10, 183),
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                  )),

              //user ID box
              Container(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your user ID',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 199, 161, 206),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              //password box

              Container(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 199, 161, 206),
                    ),
                    hintText: '********',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              //forgot password
              Padding(
                padding: const EdgeInsets.fromLTRB(180, 0, 0, 12),
                child: InkWell(
                    onTap: () {
                      //forgot password page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => forgot_pass()),
                      );
                    },
                    child: const Text(
                      'Forgot your password ?',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    )),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // main Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Main()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 71, 10, 183),
                  fixedSize: const Size(250, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Have a problem?  "),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.5))),
                            children: [
                              SimpleDialogOption(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(
                                        Icons.wechat_outlined,
                                        color: Colors.green,
                                      ),
                                      const SizedBox(width: 10),
                                      const Text('Chat Via Message')
                                    ],
                                  )),
                              const SizedBox(height: 10),
                              const Divider(
                                height: 2,
                                color: Colors.black,
                              ),
                              SimpleDialogOption(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: const Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.call_rounded),
                                      SizedBox(width: 10),
                                      Text('Make a call')
                                    ],
                                  )),
                              const SizedBox(height: 10),
                              const Divider(
                                height: 2,
                                color: Colors.black,
                              ),
                              SimpleDialogOption(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: const Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(
                                        Icons.email_rounded,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Write an email')
                                    ],
                                  ))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Contact us',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ))
            ],
          ),
        )));
  }
}
