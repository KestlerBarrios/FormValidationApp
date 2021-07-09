import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(context),
        ],
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final _fondoMorado = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(63, 63, 156, 1),
          Color.fromRGBO(90, 70, 178, 1),
        ]),
      ),
    );
    final circulo = Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.15),
      ),
    );

    return Stack(
      children: [
        _fondoMorado,
        Positioned(top: 90, left: 30, child: circulo),
        Positioned(top: -40, right: -15, child: circulo),
        Positioned(bottom: -25, right: -10, child: circulo),
        Positioned(bottom: 80, right: 80, child: circulo),
        Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Icon(
                Icons.person_pin_circle,
                color: Colors.white,
                size: 75.0,
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Text(
                'Kestler Barrios',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              )
            ],
          ),
        )
      ],
    );
  }
}
