import 'package:flutter/material.dart';

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
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text(
                      "Login",
                    ),
                    style: TextButton.styleFrom(),
                    onPressed: () {},
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
