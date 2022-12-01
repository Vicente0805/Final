import 'dart:ffi';

import 'package:ejemplo1/screens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 239, 245),
        // ignore: prefer_const_constructors
        title: Center(
          child: Text(
            'Aplicacion AEROLINEA',
            style: const TextStyle(color: Colors.black),
          ),
        ),
        actions: const <Widget>[
          Icon(
            Icons.airplane_ticket,
            size: 60,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        children: <Widget>[
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/descarga (1).jpg'),
                  ),
                  Divider(
                    height: 50,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(fontFamily: 'NerkoOne', fontSize: 50),
                  ),
                  Divider(
                    height: 100,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Correo',
                        labelText: 'Correo Electronico',
                        suffixIcon: Icon(Icons.alternate_email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  Divider(
                    height: 20,
                  ),
                  TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Contraseña',
                        labelText: 'Ingrese su Contraseña',
                        suffixIcon: Icon(Icons.lock_clock_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  Divider(
                    height: 80,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.blue,
                    ),
                    child: Text("Iniciar Sesion"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
