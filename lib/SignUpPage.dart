import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _surepassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
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
                    'Create a new Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),

                  TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.blue)),
                      child: Text(
                        'Already Registared?Login',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  TextField(
                    controller: _name,
                    decoration: InputDecoration(
                        hintText: 'Name',
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
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

                  TextField(
                    controller: _surepassword,
                    decoration: InputDecoration(
                        hintText: 'Confirmed Password',
                        labelText: 'Confirmed Password',
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {},
                        label: Text('Sign Up'),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_forward),
                      )
                    ],
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
