import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViajeAPP extends StatefulWidget {
  const ViajeAPP({super.key});

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<ViajeAPP> {
  List data = [];

  Future<String> getData() async {
    var response = await http.get(Uri.parse("http://172.16.26.157:8000/viaje/"),
        headers: {"Accept": "application/json"});

    setState(() {
      data = jsonDecode(response.body);
    });

    return "Resultado exitoso";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Lista de registros"), backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Colors.white,
              shadowColor: Colors.black12,
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(data[index]["nombre"]),
                ),
              ));
        },
      ),
    );
  }
}
