import 'package:flutter/material.dart';
import 'package:form_validation/src/screens/screens.dart';
import 'package:form_validation/src/ui/themeData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomeScreen(),
        '/login': (_) => LoginScreen(),
      },
      theme: themeDataCustom(),
    );
  }
}
