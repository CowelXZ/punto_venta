
import 'package:flutter/material.dart';
import 'package:punto_venta/controlador/control_ventas.dart';
import 'package:punto_venta/vistas/inicio.dart';

class Almacen extends StatelessWidget {
  final ProductoController productoController = ProductoController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromARGB(252, 166, 252, 249),
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(166, 166, 80, 120),
         title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Container(
              margin:const EdgeInsets.only(left: 5, right: 0, bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20)
              ),
            )
          ],
         ),
         centerTitle: true,
         actions: [
          PopupMenuButton(itemBuilder: (context)=>[
            const PopupMenuItem(
              value: 1,
              child: Text("Configuracion"),
              ),
            const PopupMenuItem(
              value: 2,
              child: Text("Veige")
              ),
            PopupMenuItem(
              value:3,
              child:Text("Black"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => Inicio()),
                );
              },   
              ), 
          ])
         ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/t1new_fondo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]
    ),
    );
    
  }
}