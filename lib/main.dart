import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:punto_venta/vistas/compra.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:punto_venta/vistas/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      title: 'Flutter Demo',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(16),
      appBar: AppBar(
        title: const Text("La aplicacion matona"),
      ),
      body: Center(
        child:Container(
          padding: const EdgeInsetsDirectional.fromSTEB(25, 20, 25, 20),            
          color: const Color.fromARGB(255, 255, 21, 21),
        child: ElevatedButton(
          onPressed: () {
            // Llama a la vista Compra
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Inicio()),
            );
          },
          child: const Text("COMENZAR"),
        ),
      ),
    ),
    );
  }
}
