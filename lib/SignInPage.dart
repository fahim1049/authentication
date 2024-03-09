import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In Page'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [const PopupMenuItem(child: Text('Hello'))];
            },
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/fw.jpeg'), fit: BoxFit.fill)),
        child: Center(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding:
                  EdgeInsets.only(top: 150, bottom: 20, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!\n Fahim',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      child: Text(
                        'Create an Account',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _password,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        textStyle: MaterialStatePropertyAll(
                            TextStyle(decoration: TextDecoration.underline))),
                    child: Text(
                      'Forgot Password?',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {},
                        label: Text('Sign In'),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_forward),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  FloatingActionButton.extended(
                    onPressed: () {},
                    icon: Image.asset(
                      'Images/gl.png',
                      height: 28,
                      width: 28,
                    ),
                    label: Text('Sign In with Google',
                        style: TextStyle(color: Colors.black)),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
