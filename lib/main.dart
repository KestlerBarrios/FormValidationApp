import 'package:flutter/material.dart';
import 'package:form_validation/src/screens/home_screen.dart';
import 'package:form_validation/src/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/login',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/login': (BuildContext context) => LoginPage(),
      },
    );
  }
}
