import 'dart:ffi';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:punto_venta/vistas_no_usadas/compra.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:punto_venta/vistas/inicio.dart';
import 'package:punto_venta/vistas/vista_prueba.dart';

Future <void> main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('productos');

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
      home: Inicio(),
      
    );
  }
}

