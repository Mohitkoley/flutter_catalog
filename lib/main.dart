import 'package:flutter/material.dart';
import 'package:flutter_catalog/utills/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter catalog',
      theme: MyTheme.lightTheme(),
      darkTheme: MyTheme.darkTheme(),
      initialRoute: MyRoutees.homeRoute,
      routes: {
        '/': (context) => const LoginPage(),
        MyRoutees.homeRoute: (context) => HomePage(),
        MyRoutees.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
