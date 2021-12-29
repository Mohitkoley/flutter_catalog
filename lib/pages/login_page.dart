import 'package:flutter/material.dart';
import 'package:flutter_catalog/utills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool onChanged = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login", style: TextStyle())),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Image.asset('assets/images/login.png', fit: BoxFit.contain),
              const SizedBox(height: 20),
              Text(
                "Welcome $_name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (name) {
                      setState(() {
                        _name = name;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        onChanged = true;
                      });
                      await Future.delayed(Duration(milliseconds: 1050));
                      Navigator.pushNamed(context, MyRoutees.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      width: onChanged ? 50 : 120,
                      height: 40,
                      alignment: Alignment.center,
                      child: onChanged
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        //shape: onChanged ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(onChanged ? 50 : 8),
                      ),
                    ),
                  ),
                  /*ElevatedButton(
                    child: Text(
                      "Login",
                    ),
                    style: TextButton.styleFrom(
                      maximumSize: const Size(120, 40),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutees.homeRoute);
                    },
                  ),*/
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
