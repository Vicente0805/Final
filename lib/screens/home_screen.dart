import 'package:ejemplo1/screens/api_Aeroli.dart';
import 'package:ejemplo1/screens/api_AreaTra.dart';
import 'package:ejemplo1/screens/api_Avion.dart';
import 'package:ejemplo1/screens/api_Ciu.dart';
import 'package:ejemplo1/screens/api_Direcc.dart';
import 'package:ejemplo1/screens/api_Empleado.dart';
import 'package:ejemplo1/screens/api_Est.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
      // ignore: prefer_const_constructors
      body: Center(
        child: const Text('Salvador'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Descargas'),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Center(
                child: Text(
                  'Api Rest "AEROTEC',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            ListTile(
              title: const Text('Ciudades'),
              leading: const Icon(
                Icons.group,
                color: Color.fromARGB(255, 200, 100, 100),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CiudadAPP()));
              },
            ),
            ListTile(
              title: const Text('Estados'),
              leading: const Icon(
                Icons.group,
                color: Color.fromARGB(255, 200, 100, 100),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EstadoAPP()));
              },
            ),
            ListTile(
              title: const Text('Direcciones'),
              leading: const Icon(
                Icons.group,
                color: Color.fromARGB(255, 200, 100, 100),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DireccionAPP()));
              },
            ),
            ListTile(
              title: const Text('Aerolineas'),
              leading: const Icon(
                Icons.group,
                color: Color.fromARGB(255, 200, 100, 100),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AerolineaAPP()));
              },
            ),
            ListTile(
              title: const Text('Areas de Trabajo'),
              leading: const Icon(
                Icons.group,
                color: Color.fromARGB(255, 200, 100, 100),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AreaTrabajoAPP()));
              },
            ),
            ListTile(
              title: const Text('Aviones'),
              leading: const Icon(
                Icons.group,
                color: Color.fromARGB(255, 200, 100, 100),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AvionAPP()));
              },
            ),
            ListTile(
              title: const Text('Empleados'),
              leading: const Icon(
                Icons.group,
                color: Color.fromARGB(255, 200, 100, 100),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmpleadoAPP()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
