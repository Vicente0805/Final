import 'package:ejemplo1/models/Aerolinea.dart';
import 'package:flutter/material.dart';

import '../models/Ciudad.dart';

class AerolineaAPP extends StatelessWidget {
  const AerolineaAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Intento de Conexion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Aerolinea ciudadService = Aerolinea();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: FutureBuilder<List>(
            future: ciudadService.getAllAerolinea(),
            builder: (context, snapshot) {
              print(snapshot.data);
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            snapshot.data![i]['nombre'],
                            style: TextStyle(fontSize: 30.0),
                          ),
                          subtitle: Text(
                            snapshot.data![i]['concesion'],
                            style: TextStyle(fontSize: 30.0),
                          ),
                        ),
                      );
                    });
              } else {
                return const Center(
                  child: Text('Not Data Found'),
                );
              }
            },
          ),
        ));
  }
}
