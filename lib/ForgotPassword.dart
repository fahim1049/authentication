import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

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
              EdgeInsets.only(top: 180, bottom: 20, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Reset Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),




                  TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),

                  const SizedBox(height: 150),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                          'Send Request',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                        ),

                      ),



                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_forward,),
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
