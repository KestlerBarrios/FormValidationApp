import 'package:flutter/material.dart';
import 'package:form_validation/src/widgets/background.dart';
import 'package:form_validation/src/widgets/buttonCustom.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _loginForm(context),
        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 180,
          )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            margin: EdgeInsets.symmetric(vertical: 30.0),
            width: size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Ingreso',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 40.0),
                _crearEmail(),
                _crearPassword(),
                ButtonCustom()
              ],
            ),
          ),
          Text('¿Olvido la contraseña?'),
          SizedBox(
            height: 100.0,
          )
        ],
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(
              Icons.alternate_email,
              color: Colors.deepPurple,
            ),
            labelText: 'Correo Electronico',
            hintText: 'ejemplo@correo.com'),
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock_outline,
            color: Colors.deepPurple,
          ),
          labelText: 'Contraseña',
        ),
      ),
    );
  }
}
