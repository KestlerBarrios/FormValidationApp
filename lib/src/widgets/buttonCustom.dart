import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text(
          'Ingresar',
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.deepPurple,
        ),
      ),
      onPressed: () {},
    );
  }
}
