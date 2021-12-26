import 'package:flutter/material.dart';
import 'package:flutter_catalog/utills/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Image.asset('assets/images/login.png', fit: BoxFit.contain),
              const SizedBox(height: 20),
              const Text(
                "Welcome User",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    child: Text(
                      "Login",
                    ),
                    style: TextButton.styleFrom(
                      maximumSize: const Size(120, 40),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutees.homeRoute);
                    },
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
