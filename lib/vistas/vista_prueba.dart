import 'dart:ffi';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:punto_venta/main.dart';
import 'package:punto_venta/vistas/agregar_producto.dart';
import 'package:punto_venta/vistas/compra.dart';

void main() {
  runApp(const MyApp());
}

class VistaPrueba extends StatelessWidget {
  const VistaPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(169, 110, 32, 173),
        title: const Text('Menú'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo_t1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Compra(
                      //productos: productos,
                    ),
                  ),
                );
              },
              child: const Text('Ventas'),
            ),
            const SizedBox(
              height: 20,),
             ElevatedButton(      
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgregarProductoVista(productos: [],
                      //productos: productos,
                    ),
                  ),
                );
              },
              child: Text('Agregar Producto'),
            ),
          ],
        )
        ),
      ),
    );
  }
}
