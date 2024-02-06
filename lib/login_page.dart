import 'package:flutter/material.dart';
import 'package:login/home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "Enter your email id",
                    contentPadding: EdgeInsets.all(8.0),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter your password",
                    contentPadding: EdgeInsets.all(8.0),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            const HomePage()),
                  ); 
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
